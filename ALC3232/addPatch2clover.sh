#!/bin/bash
#set -x

codec="Realtek ALC3232"
fakecodec="Realtek ALC292"

if [[ x"$1" == x ]]; then
    echo "usage: $0 <config.plist>"
    exit 0
fi
if [ ! -f "$1" ]; then
    echo "$1 not found."
    exit 1
fi

generatepatch () {
    echo "==> generate kext patches for $codec ($fakecodec)"
    cd ./tools/
    ./patch-hda.pl -x "$fakecodec"
    cat > /tmp/codecpatch.plist <<'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
EOF
    cat ./codecpatch.xml >> /tmp/codecpatch.plist
    cat >> /tmp/codecpatch.plist <<'EOF'
</plist>
EOF
    sed -i "" "s/Expect .* matches/${codec}/" /tmp/codecpatch.plist
    rm ./codecpatch.xml
    echo "==> Done. (/tmp/codecpatch.plist)"
    cd ../
}

add2config () {
    config="$1"
    cp $config ./config-add-ALC.plist
    echo "==> merge /tmp/codecpatch.plist $config"
    /usr/libexec/plistbuddy -c "Merge /tmp/codecpatch.plist ':KernelAndKextPatches:KextsToPatch:'" ./config-add-ALC.plist
    echo "==> Done. (./config-add-ALC.plist)"
}

generatepatch
add2config "$1"
exit 0
