#!/bin/bash
#set -x

codec="Realtek ALC3232"
fakecodec="Realtek ALC292"

if [[ x"$1" == x ]]; then
    echo "usage: $0 </path/to/save-patch.plist>"
    exit 0
fi

generatepatch () {
    patchfile="$1"
    echo "==> generate kext patches for $codec ($fakecodec)"
    cd ./tools/
    ./patch-hda.pl -x "$fakecodec"
    cat > $patchfile <<'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
EOF
    cat ./codecpatch.xml >>  $patchfile
    cat >>  $patchfile <<'EOF'
</plist>
EOF
    sed -i "" "s/Expect .* matches/${codec}/"  $patchfile
    rm ./codecpatch.xml
    echo "==> Done. ( $patchfile)"
    cd ../
}

generatepatch "$1"
exit 0
