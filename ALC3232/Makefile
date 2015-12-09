codecdir   :=./codec
codec_dump :=./codec/alc3232_codec_dump.txt
codecgraph :=./tools/codecgraph-20120114.py
hex2dec    :=./tools/convert_hex_to_dec.rb
verbit     :=./tools/verbit.sh
createkext :=./createAppleHDAInjector.sh
createconf :=./addPatch2clover.sh
patch_hda  :=./tools/patch-hda.pl
zlib       :=./tools/zlib.pl
kext_src   :=$(wildcard ./Resources/*.plist)

clover_config :=../clover-config/config-mba72.plist
cdcmd :=./RehabMan-CodecCommander-2015-1122.zip

all: kext config

install: kext $(cdcmd)
	rm -rf /tmp/CodecCommander
	mkdir /tmp/CodecCommander
	unzip -x RehabMan-CodecCommander-2015-1122.zip -d /tmp/CodecCommander
	sudo rm -rf /Library/Extensions/{AppleHDAALC3232.kext,CodecCommander.kext}
	sudo cp -r /tmp/CodecCommander/Release/CodecCommander.kext /Library/Extensions/
	sudo cp -r ./AppleHDAALC3232.kext /Library/Extensions/AppleHDAALC3232.kext
	sudo chown -R root:wheel /Library/Extensions/{AppleHDAALC3232.kext,CodecCommander.kext}
	@echo "==> Please Use Kext Utility to Repair Permissions and Updating the system cache."
	@#sudo chmod -R 755 /Library/Extensions/{AppleHDAALC3232.kext,CodecCommander.kext}
	ls -l /Library/Extensions/


kext: $(kext_src) $(zlib)
	$(createkext)

config: $(clover_config) $(patch_hda)
	$(createconf) $<

configdata: $(codec_dump)
	$(verbit) $< > $(codecdir)/verbs_detail.txt

codecsvg: $(codec_dump)
	$(codecgraph) $< | dot -Tsvg -o $(codecdir)/codec_tmp.svg
	$(hex2dec) $(codecdir)/codec_tmp.svg > $(codecdir)/codec_dump_dec.svg
	rm $(codecdir)/codec_tmp.svg

clean:
	-rm -f $(codecdir)/verbs_detail.txt
	-rm -f $(codecdir)/verbitdebug.txt
	-rm -f $(codecdir)/codec_dump_dec.svg
	-rm -rf AppleHDAALC*
	-rm -f ./config-add-ALC.plist

