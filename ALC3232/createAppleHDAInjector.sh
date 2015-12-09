#!/bin/bash
#set -x

codec="Realtek ALC3232"
fakecodec="Realtek ALC292"

# extract minor version (eg. 10.9 vs. 10.10 vs. 10.11)
MINOR_VER=$([[ "$(sw_vers -productVersion)" =~ [0-9]+\.([0-9]+) ]] && echo ${BASH_REMATCH[1]})
SLE="/System/Library/Extensions"

createAppleHDAInjector () {
    #Create dummyhda
    echo "Creating AppleHDA injector for $codec ..."
    dummykext="AppleHDA$(echo $codec | cut -d' ' -f2).kext"

    rm -Rf $dummykext
    cp -RX $SLE/AppleHDA.kext $dummykext
    rm -R $dummykext/Contents/Resources/*
    rm -R $dummykext/Contents/PlugIns
    rm -R $dummykext/Contents/_CodeSignature
    rm -f $dummykext/Contents/Code*
    rm $dummykext/Contents/MacOS/AppleHDA
    rm $dummykext/Contents/version.plist
    ln -s $SLE/AppleHDA.kext/Contents/MacOS/AppleHDA $dummykext/Contents/MacOS/AppleHDA

    echo " 1) layout and platform"
    cp Resources/layout1.plist $dummykext/Contents/Resources/layout1.xml
    PFlist=$dummykext/Contents/Resources/Platforms.xml
    if [[ $MINOR_VER -ge 8 ]]; then
        ./tools/zlib.pl inflate $SLE/AppleHDA.kext/Contents/Resources/Platforms.xml.zlib > $PFlist
    else
        cp $SLE/AppleHDA.kext/Contents/Resources/Platforms.xml $PFlist
    fi
    /usr/libexec/plistbuddy -c "Delete ':PathMaps'" $PFlist
    /usr/libexec/plistbuddy -c "Merge Resources/Platforms.plist" $PFlist

    if [[ $MINOR_VER -ge 8 ]]; then
        for xml in $dummykext/Contents/Resources/*.xml; do
            ./tools/zlib.pl deflate $xml >${xml/.xml/.xml.zlib}
            rm $xml
        done
    fi

    echo " 2) fix versions (must be larger than native)"
    plist=$dummykext/Contents/Info.plist
    pattern='s/(\d*\.\d*(\.\d*)?)/9\1/'
    if [[ $MINOR_VER -ge 10 ]]; then
        replace=`/usr/libexec/plistbuddy -c "Print :NSHumanReadableCopyright" $plist | perl -p -e $pattern`
        /usr/libexec/plistbuddy -c "Set :NSHumanReadableCopyright '$replace'" $plist
    fi
    replace=`/usr/libexec/plistbuddy -c "Print :CFBundleGetInfoString" $plist | perl -p -e $pattern`
    /usr/libexec/plistbuddy -c "Set :CFBundleGetInfoString '$replace'" $plist
    replace=`/usr/libexec/plistbuddy -c "Print :CFBundleVersion" $plist | perl -p -e $pattern`
    /usr/libexec/plistbuddy -c "Set :CFBundleVersion '$replace'" $plist
    replace=`/usr/libexec/plistbuddy -c "Print :CFBundleShortVersionString" $plist | perl -p -e $pattern`
    /usr/libexec/plistbuddy -c "Set :CFBundleShortVersionString '$replace'" $plist

    echo " 3) create AppleHDAHardwareConfigDriver overrides (injector personality)"
    /usr/libexec/plistbuddy -c "Add ':HardwareConfigDriver_Temp' dict" $plist
    /usr/libexec/plistbuddy -c "Merge $SLE/AppleHDA.kext/Contents/PlugIns/AppleHDAHardwareConfigDriver.kext/Contents/Info.plist ':HardwareConfigDriver_Temp'" $plist
    /usr/libexec/plistbuddy -c "Copy ':HardwareConfigDriver_Temp:IOKitPersonalities:HDA Hardware Config Resource' ':IOKitPersonalities:HDA Hardware Config Resource'" $plist
    /usr/libexec/plistbuddy -c "Delete ':HardwareConfigDriver_Temp'" $plist
    /usr/libexec/plistbuddy -c "Delete ':IOKitPersonalities:HDA Hardware Config Resource:HDAConfigDefault'" $plist
    #/usr/libexec/plistbuddy -c "Delete ':IOKitPersonalities:HDA Hardware Config Resource:PostConstructionInitialization'" $plist
    /usr/libexec/plistbuddy -c "Add ':IOKitPersonalities:HDA Hardware Config Resource:IOProbeScore' integer" $plist
    /usr/libexec/plistbuddy -c "Set ':IOKitPersonalities:HDA Hardware Config Resource:IOProbeScore' 2000" $plist
    /usr/libexec/plistbuddy -c "Merge ./Resources/ahhcd.plist ':IOKitPersonalities:HDA Hardware Config Resource'" $plist

    echo "Done."
}

createAppleHDAInjector
