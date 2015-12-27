file1:=./rtwlanu1827.tar.gz
file2:=./wirelessNetworkUtility.tar.gz
file3:=./sleepwatcher_2.2.tgz
file3_url:=http://www.bernhard-baehr.de

BINDIR=/usr/local/sbin
MANDIR=/usr/local/share/man/man8

all:
	@echo "install | uninstall | listcards"
	@echo "sleepwatcher | rmsleepwatcher"

install: $(file1) $(file2)
	sudo tar zxvf $(file1) -C /Library/Extensions/
	sudo chown -R root:wheel /Library/Extensions/RtWlanU1827.kext
	sudo tar zxvf $(file2) -C /Applications/

uninstall:
	-sudo killall -c Wireless\ Network\ Utility
	@echo "Uninstalling UI..."
	sudo rm -rvf /Applications/Wireless\ Network\ Utility.app
	-rm -rf ~/Library/Preferences/com.realtek.utility.wifi11n.plist
	-sudo rm -rf /private/var/db/receipts/com.realtek.*
	@echo "Removing Driver..."
	-sudo kextunload /System/Library/Extensions/RtWlanU1827.kext
	sudo rm -rvf /System/Library/Extensions/RtWlanU1827.kext

listcards: get_support_cards.py
	@python2.7 ./get_support_cards.py | sort

sleepwatcher: $(file3) rc.sleep rc.wakeup
	tar zxvf $(file3) -C /tmp/
	sudo install -d -m 755 $(BINDIR) $(MANDIR)
	sudo install -o root -g wheel -m 755 /tmp/sleepwatcher_2.2/sleepwatcher $(BINDIR)/
	sudo install -o root -g wheel -m 644 /tmp/sleepwatcher_2.2/sleepwatcher.8 $(MANDIR)/
	sudo install -o root -g wheel -m 644 \
		/tmp/sleepwatcher_2.2/config/de.bernhard-baehr.sleepwatcher-20compatibility.plist\
		/Library/LaunchDaemons/de.bernhard-baehr.sleepwatcher.plist
	sudo install -o root -g wheel -m 755 rc.sleep /etc/rc.sleep
	sudo install -o root -g wheel -m 755 rc.wakeup /etc/rc.wakeup
	sudo launchctl load -w -F /Library/LaunchDaemons/de.bernhard-baehr.sleepwatcher.plist

rmsleepwatcher:
	-sudo launchctl unload /Library/LaunchDaemons/de.bernhard-baehr.sleepwatcher.plist
	sudo rm -f /Library/LaunchDaemons/de.bernhard-baehr.sleepwatcher.plist
	sudo rm -f /usr/local/sbin/sleepwatcher
	sudo rm -f /usr/local/share/man/man8/sleepwatcher.8
	sudo rm -f /etc/rc.sleep /etc/rc.wakeup

