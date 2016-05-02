codecdir   :=./codec
codec_dump :=./codec/alc3232_codec_dump.txt
codecgraph :=./tools/codecgraph-20120114.py
hex2dec    :=./tools/convert_hex_to_dec.rb
verbit     :=./tools/verbit.sh
createkext :=./createAppleHDAInjector.sh
getpatch   :=./createAppleHDAPatch.sh
patch_hda  :=./tools/patch-hda.pl
zlib       :=./tools/zlib.pl
hdaverb    :=./tools/hda-verb
nodesdump  :=./tools/nodes_dump.sh
kext_src   :=Resources/ahhcd.plist \
		Resources/layout1.plist \
		Resources/Platforms.plist\
		Resources/codecProfile.plist

patchfile :=$(PWD)/AppleHDA_patch.plist
CCzip :=./RehabMan-CodecCommander-2015-1122.zip
CCver :=Release

all: kext

install: kext
	sudo rm -rf /Library/Extensions/{AppleHDAALC3232.kext,CodecCommander.kext}
	sudo cp -R  /tmp/CodecCommander/$(CCver)/CodecCommander.kext /Library/Extensions/
	sudo cp -R  ./AppleHDAALC3232.kext /Library/Extensions/AppleHDAALC3232.kext
	sudo chown -R root:wheel /Library/Extensions/{AppleHDAALC3232.kext,CodecCommander.kext}
	@echo "==> Please Use Kext Utility to Repair Permissions and Updating the system cache."
	@#sudo chmod -R 755 /Library/Extensions/{AppleHDAALC3232.kext,CodecCommander.kext}
	ls -l /Library/Extensions/

kext: $(kext_src) $(zlib) $(CCzip)
	$(createkext)
	rm -rf /tmp/CodecCommander
	mkdir /tmp/CodecCommander
	unzip -q -x $(CCzip) -d /tmp/CodecCommander
	/usr/libexec/plistbuddy -c "Merge ./Resources/codecProfile.plist ':IOKitPersonalities:CodecCommander:Codec Profile'" \
	/tmp/CodecCommander/$(CCver)/CodecCommander.kext/Contents/Info.plist

hdapatch: $(getpatch) $(patch_hda)
	$(getpatch) $(patchfile)

configdata: $(codec_dump)
	$(verbit) $< > $(codecdir)/verbs_detail.txt

codecsvg: $(codec_dump)
	$(codecgraph) $< | dot -Tsvg -o $(codecdir)/codec_tmp.svg
	$(hex2dec) $(codecdir)/codec_tmp.svg > $(codecdir)/codec_dump_dec.svg
	rm $(codecdir)/codec_tmp.svg

checknodes: $(hdaverb)
	$(nodesdump) $(hdaverb)

clean:
	-rm -rf $(codecdir)/verb*
	-rm -rf AppleHDAALC*
