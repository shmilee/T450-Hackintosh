:Title: Install Yosemite 10.10.5 on Thinkpad T450 20BV-A00YCD
:Author: Shmilee
:Date: 2015-08-28

.. raw:: latex

    \newpage

Introduction
============

This guide is for the Thinkpad T450 20BV-A00YCD (`Lenovo Reference Doc`_).

CPU: Intel(R) Core(TM) i5-5200U @ 2.20GHz

RAM: 4GB x 2 DDR3L

Graphics: HD5500 + GeForce 940M, 1366x768 LED Non-Touchscreen

Audio: ALC3232

Ethernet: Intel I218-V

WLAN: Intel 7265

Specifically, this is only the history and notes of my Yosemite installation.
Here is my gpt disk partition table:

=========  ========= ========= =========  ==== ====================
Device         Start       End   Sectors  Size Type
=========  ========= ========= =========  ==== ====================
/dev/sda1       2048   1050623   1048576  512M EFI System
/dev/sda2    1050624  42993663  41943040   20G Linux filesystem
/dev/sda3   42993664 105908223  62914560   30G Apple HFS/HFS+
/dev/sda4  105908224 189794303  83886080   40G Microsoft basic data
/dev/sda5  189794304 441452543 251658240  120G Microsoft basic data
/dev/sda6  441452544 959449087 517996544  247G Linux filesystem
/dev/sda7  959449088 976773134  17324047  8.3G Apple HFS/HFS+
=========  ========= ========= =========  ==== ====================

I have upgraded the BIOS version to 1.15_,
and installed Archlinux on ``/dev/sda2``, Windows 8.1 on ``/dev/sda4``.
Device ``/dev/sda3`` is reserved for Yosemite, and ``/dev/sda7`` is used to restore Yosemite Install dmg.


Prepare
========

Install Clover
--------------

Download `Clover Bootable ISO`_, extract archive and find the Clover-\*-X64.iso file.

Download driver HFSPlus.efi_.

Download themes: MavericksLogin_ and minimal_.

In Archlinux, mount Clover-\*-X64.iso, and mount `ESP` on `/boot`, then copy files that I need.

.. code:: bash

    cd <Clover-ISO mount dir>/EFI/CLOVER/
    find drivers64UEFI \
        drivers-Off/drivers64UEFI \
        kexts/Other \
        tools \
        CLOVERX64.efi \
        config.plist \
        -exec install -D {} /boot/EFI/Clover/{} \;
    install /boot/EFI/Clover/CLOVERX64.efi /boot/EFI/boot/bootx64.efi
    # drivers
    cd <Download dir>/
    install HFSPlus.efi /boot/EFI/Clover/drivers64UEFI/HFSPlus-64.efi
    rm /boot/EFI/Clover/drivers64UEFI/VBoxHfs-64.efi
    mv /boot/EFI/Clover/{drivers-Off/,}drivers64UEFI/OsxAptioFix2Drv-64.efi
    # themes
    mkdir /boot/EFI/Clover/themes
    cd clover-minimal
    find . -exec install -D {} /boot/EFI/Clover/themes/minimal/{} \;
    cd MavericksLogin
    find . -exec install -D {} /boot/EFI/Clover/themes/MavericksLogin/{} \;

.. find /boot/EFI/Clover/ -name '.DS_Store' -exec rm -vi {} \;

Config for T450
---------------

Download `config.plist`_ for Hd5500 from RehabMan's github repository OS-X-Clover-Laptop-Config_.
Then copy it to ``/boot/EFI/Clover/config.plist``, change the ScreenResolution, Theme, Timeout,
and set ``GUI -> Scan -> Legacy`` to ``false``. Make sure the ``ig-platform-id`` is ``0x16160002``.

.. code:: bash

    mv /boot/EFI/Clover/{config.plist,config.plist.default}
    install config_HD5300_5500_6000.plist /boot/EFI/Clover/config.plist
    sed -i -e 's/1920x1080/1366x768/' -e 's/Bluemac/MavericksLogin/' /boot/EFI/Clover/config.plist

Download kexts.

* VoodooHDA.kext-287.zip_, modified as `jcsnider's guide`_ Part 13 (Audio) said.
  I made the following changes to its info.plist and got a patched version named ``VoodooHDA-287-TP15-Info.plist``

  Input Gain = 0

  Half Volume Fix = Yes

  Nodes to Patch:
  
  .. code:: xml

    <key>NodesToPatch</key>
        <array>
        <dict>
        <key>Codec</key>
        <integer>0</integer>
        <key>Config</key>
        <string>0x0321101f</string>
        <key>Node</key>
        <integer>21</integer>
        </dict>
    </array>

* VoodooPS2Controller_, which has some jumping/skipping issues as `jcsnider's hints thread`_ said.
  Download jcsnider's custom VoodooPS2Controller_X1Carbon.kext.zip_

* AppleIntelE1000e.kext.zip_, for Ethernet controller.

.. * GenericUSBXHCI.kext

Install the kexts to /boot/EFI/Clover/kexts/10.10/

.. code:: bash

    mv /boot/EFI/Clover/kexts/{Other,10.10}
    # add VoodooHDA.kext
    # add VoodooPS2Controller_X1Carbon.kext
    # add AppleIntelE1000e.kext


Install Image
-------------

Download ``Yosemite Install(14F27).cdr`` from this thread [1]_.
Restore it to ``/dev/sda7``. Convert cdr to dmg, a compressed disk image.


Install OS X Yosemite
=====================

Reboot, enter clover, install Yosemite to ``/dev/sda3``.

If an error of AppleIntelBDWGraphicsFramebuffer [2]_ occurs to you,
please set graphics fakeid = 0x16160002. [3]_

Hint:
  In clover screen, Options -> Graphics Injector menu -> FakeID.
  Default value is ``0x00000000``, change it to ``0x16160002`` or ``0x16160004``.


Post-Installation
=================

Graphics HD5500
---------------

As the AppleIntelBDWGraphicsFramebuffer error is still there, we should make HD5500 work first.

Here is a `guide for Intel HD Graphics 5500`_ on OS X Yosemite.
There are 2 ways to deal with ``DVMT pre-allocated memory`` in BIOS.
But as `guide page 20`_ and `guide page 28`_ said, STEP 2.2 (grub shell and setup_var) is not working here.
The "Security: <guid>" things may lock these options to keep people from changing them.

Here is what I get from BIOS 1.15 rom.

.. code::

    Result:
    
    0x2685E 	Grayout If: {19 82}
    0x26860 		Security: 85B75607-F7CE-471E-B7E4-2AEA5F7232EE {60 92 07 56 B7 85 CE F7 1E ...
    0x26872 			Not {17 02}
    0x26874 		End {29 02}
    0x26876 		Setting: DVMT Pre-Allocated, Variable: 0x37 {05 A6 61 04 62 04 1D 27 0A 00 ...
    0x2689C 			Default: 8 Bit, Value: 0x1 {5B 1B 00 00 00 01 00 00 00 00 00 00 00 00 0...
    0x268B7 			Default: 8 Bit, Value: 0x1 {5B 1B 01 00 00 01 00 00 00 00 00 00 00 00 0...
    0x268D2 			Option: 32MB, Value: 0x1 {09 1C 63 04 00 00 01 00 00 00 00 00 00 00 00 ...
    0x268EE 			Option: 64MB, Value: 0x2 {09 1C 64 04 00 00 02 00 00 00 00 00 00 00 00 ...
    0x2690A 			Option: 128MB, Value: 0x4 {09 1C 65 04 00 00 04 00 00 00 00 00 00 00 00...
    0x26926 		End of Options {29 02}
    0x26928 	End If {29 02}

So, we have to patch the AppleIntelBDWGraphicsFramebuffer binary file in
/S/L/E/AppleIntelBDWGraphicsFramebuffer.kext/Contents/MacOS/.

We can use app:HexFiend, Find 39CF763C and replace it with 39CF773C.
Do not forget to ``fix`` the kext's permissions. Othewise, you may get an error said:

.. code::

    Graphics driver failed to load: could not register with Framebuffer driver!

The recommended and easier way is to modify EFI/Clover/config.plist.
Find key: ``KextsToPatch``, string: Disable minStolenSize ... 10.10.x ...,
key: ``name``, string: disabled:AppleIntelBDWGraphicsFramebuffer, and remove ``disabled:``.

Boot Screen Garble
------------------

For OS X 10.10.2 - 10.10.5,add the following patch to config.plist under ``KextsToPatch``. [4]_

.. code::

    <dict>
        <key>Comment</key>
        <string>Bootloader Graphics - Second Stage Patch</string>
        <key>Find</key>
        <data>QYjE6xE=</data>
        <key>Name</key>
        <string>IOGraphicsFamily</string>
        <key>Replace</key>
        <data>QYjE6zE=</data>
    </dict>

Another way is to enable Legacy Support in BIOS settings. (Ref: Issues in `guide for Intel HD Graphics 5500`_)

SSDT for PM
-----------

Use Piker-Alpha's ssdtPRGen.sh_ which is a script to generate a SSDT for Power Management.
We'd better download the `latest Beta branch`_.

Run ``./ssdtPRGen.sh``, copy ~/Library/ssdtPRGen/SSDT.aml to ``EFI/Clover/ACPI/Patched/``.

Download AppleIntelCPUPowerManagementInfo.kext from `PikeRAlpha's thread`_.
Install it to EFI/Clover/kexts/10.10/.

Reboot, and use this terminal command to show the data:

.. code::

    sudo grep "AICPUPMI:"  /var/log/system.log

DSDT Common Patches
-------------------

Download MaciASL from Rehabman's Bitbucket repository os-x-maciasl-patchmatic_.
Download patches from Rehabman's github repository Laptop-DSDT-Patch_.

Download IORegistryExplorer from `toleda's thread`_

Dump DSDT and SSDT tables and disassemble them. In Archlinux, run:

.. code:: bash

    mkdir ./ACPI/
    find /sys/firmware/acpi/tables \( -name "*SSDT*" -o -name '*DSDT*' \) -exec sudo cp {} ./ACPI/ \;
    sudo chmod 644 ./ACPI/*
    iasl -e ./ACPI/SSDT* -dl ./ACPI/DSDT

Copy DSDT.dsl to your work directory, then apply patches using MaciASL.

Here is a list of the patches that are commonly needed. [5]_

* [sys] HPET Fix
* [sys] Add IMEI
* [sys] IRQ Fix
* [sys] Fix Mutex with non-zero SyncLevel
* [sys] OS Check Fix (Windows 8)
* [sys] Fix PNOT/PPNT
* [sys] RTC Fix
* [sys] SMBUS Fix
* [sys] Fix _WAK Arg0 v2

Hint:
    Apply one at a time. Verify it creats no error.

Save the result named as ``1-common-DSDT.dsl`` and ``1-common-DSDT.aml``.
Copy ``1-common-DSDT.aml`` to EFI/Clover/ACPI/patched/DSDT.aml, and test it.

DSDT Wake Fix
-------------

For instant wake problem, we can run command:

.. code:: bash

    sudo grep 'Wake reason'  /var/log/system.log

to get the reason:

.. code:: bash

    ... kernel[0]: Wake reason: IGBE XHCI (Network)

Then, search IGBE in DSDT.

.. code::

            Device (IGBE)
            {
                Name (_ADR, 0x00190000)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x6D, 
                    0x04
                })
            }

We can remove _PRW names to prevent instant wake, but it seems to work better if _PRW is present, but returns 0 (original was 0x04 or 0x03) for sleep state.
So we apply the flowing patch to ``1-common-DSDT.dsl``:

.. code::

    into_all all code_regex 0x6D,.*\n.*0x0[34] replaceall_matched begin
    0x6D, \n
                        0x00
    end;

After wake up from sleep, power led and red dot light continute to blink.
We can fix this by adding these lines into method _WAK after NVSS: (Ref: `Ludacrisvp's t440s guide`_)

.. code::

    \_SB.PCI0.LPC.EC.LED (0x00, 0x80)
    \_SB.PCI0.LPC.EC.LED (0x0A, 0x80)

After adding that, it will look like this:

.. code::

        If (LEqual (Arg0, 0x03))
        {
            NVSS (0x00)
            \_SB.PCI0.LPC.EC.LED (0x00, 0x80)
            \_SB.PCI0.LPC.EC.LED (0x0A, 0x80)
            Store (\_SB.PCI0.LPC.EC.AC._PSR (), PWRS)
            If (OSC4)
            {
                PNTF (0x81)
            }

Save the result named as ``2-wake-DSDT.dsl`` and ``2-wake-DSDT.aml``.
Test it.

DSDT Fn and Brightness
----------------------

Save the Fn Key Fix code posted in `Ludacrisvp's t440s guide`_, named as ``Fn_Keys.txt``, and apply it.
We also need a brightness fix patch in Rehabman's github repository Laptop-DSDT-Patch_.

* [igpu] Brightness fix (Haswell)

Save the result named as ``3-Brightness-DSDT.dsl`` and ``3-Brightness-DSDT.aml``.
Test it.

Then Fn+F5 and Fn+F6 will work well.
It sames there is no need to patch AppleBacklight and AppleBacklightInjector. [6]_

Issue:
    F14(Fn+F10) is also for brightness down. F15(Fn+F11) is for brightness up.

Solution:
    Set Keyboard Shortcuts for Spotlight and App switcher.

.. Maybe I should use IORegistryExplorer to get some information, and edit ``Fn_Keys.txt``.

DSDT Battery Status
-------------------

Download `RehabMan's ACPIBatteryManager.kext`_, install the kext to EFI/Clover/kexts/10.10/.

I test 2 patches in Rehabman's github repository Laptop-DSDT-Patch_.

* [bat] Lenovo X220
* [bat] Lenovo T440p

X220 should be edited by deleting this line.

.. code::

    into device label EC code_regex HWAC,\s+16 

T440p is better with the information of time and capacity.

TODO:
    Read this `battery status guide`_. Edit the battery patch, adding the ``sleep code``.

Following is the information of Batteries.

.. code:: bash

    Handle 0x0027, DMI type 22, 26 bytes
    Portable Battery
    	Location: Front
    	Manufacturer: SANYO
    	Name: 45N1773
    	Design Capacity: 23200 mWh
    	Design Voltage: 11100 mV
    	SBDS Version: 03.01
    	Maximum Error: Unknown
    	SBDS Serial Number: 2D3B
    	SBDS Manufacture Date: 2015-04-03
    	SBDS Chemistry: LION
    	OEM-specific Information: 0x00000000
    
    Handle 0x0028, DMI type 22, 26 bytes
    Portable Battery
    	Location: Rear
    	Manufacturer: SANYO
    	Name: 45N1767
    	Design Capacity: 47520 mWh
    	Design Voltage: 10800 mV
    	SBDS Version: 03.01
    	Maximum Error: Unknown
    	SBDS Serial Number: 06BA
    	SBDS Manufacture Date: 2015-03-24
    	SBDS Chemistry: LION
    	OEM-specific Information: 0x00000000



.. _Lenovo Reference Doc: http://psref.lenovo.com/PSREFUploadFile/Sys/PDF/ThinkPad/ThinkPad%20T450/ThinkPad_T450_Platform_Specifications_v467.pdf
.. _1.15: http://driverdl.lenovo.com.cn/think/download/driver/8764/BIOS%5Bjbuj50ww%5D.exe

.. _Clover Bootable ISO: http://sourceforge.net/projects/cloverefiboot/files/Bootable_ISO/
.. _HFSPlus.efi: https://github.com/STLVNUB/CloverGrower/tree/master/Files/HFSPlus/x64
.. _MavericksLogin: http://clover-wiki.zetam.org/Theme-database
.. _minimal: https://github.com/theracermaster/clover-minimal

.. _config.plist: https://github.com/RehabMan/OS-X-Clover-Laptop-Config/blob/master/config_HD5300_5500_6000.plist
.. _OS-X-Clover-Laptop-Config: https://github.com/RehabMan/OS-X-Clover-Laptop-Config

.. _VoodooHDA.kext-287.zip: http://sourceforge.net/projects/voodoohda/
.. _jcsnider's guide: http://www.tonymacx86.com/yosemite-laptop-guides/162391-guide-2015-x1-carbon-yosemite.html
.. _VoodooPS2Controller: https://bitbucket.org/RehabMan/os-x-voodoo-ps2-controller
.. _jcsnider's hints thread: http://www.tonymacx86.com/yosemite-laptop-support/162195-thinkpad-x1-carbon-3rd-gen-could-use-some-hints.html
.. _VoodooPS2Controller_X1Carbon.kext.zip: http://www.tonymacx86.com/attachments/yosemite-laptop-support/134793d1429623831-thinkpad-x1-carbon-3rd-gen-could-use-some-hints-voodoops2controller_x1carbon.kext.zip
.. _AppleIntelE1000e.kext.zip: http://sourceforge.net/projects/osx86drivers/files/Kext/Snow_or_Above/

.. _guide for Intel HD Graphics 5500: http://www.tonymacx86.com/yosemite-laptop-support/162062-guide-intel-hd-graphics-5500-os-x-yosemite-10-10-3-a.html
.. _guide page 20: http://www.tonymacx86.com/yosemite-laptop-support/162062-guide-intel-hd-graphics-5500-os-x-yosemite-10-10-3-a-20.html
.. _guide page 28: http://www.tonymacx86.com/yosemite-laptop-support/162062-guide-intel-hd-graphics-5500-os-x-yosemite-10-10-3-a-28.html

.. _ssdtPRGen.sh: https://github.com/Piker-Alpha/ssdtPRGen.sh
.. _latest Beta branch: https://github.com/Piker-Alpha/ssdtPRGen.sh/archive/Beta.zip
.. _PikeRAlpha's thread: http://www.tonymacx86.com/ssdt/91551-appleintelcpupowermanagementinfo-kext-msrdumper-successor.html

.. _os-x-maciasl-patchmatic: https://bitbucket.org/RehabMan/os-x-maciasl-patchmatic/downloads
.. _Laptop-DSDT-Patch: https://github.com/RehabMan/Laptop-DSDT-Patch
.. _toleda's thread: http://www.tonymacx86.com/audio/58368-guide-how-make-copy-ioreg.html
.. _Ludacrisvp's t440s guide: http://www.tonymacx86.com/yosemite-laptop-guides/158369-guide-lenovo-t440s-clover-uefi.html

.. _RehabMan's ACPIBatteryManager.kext: https://github.com/RehabMan/OS-X-ACPI-Battery-Driver
.. _battery status guide: http://www.tonymacx86.com/yosemite-laptop-support/116102-guide-how-patch-dsdt-working-battery-status.html

.. [1] http://bbs.pcbeta.com/viewthread-1636724-1-1.html
.. [2] http://bbs.pcbeta.com/viewthread-1635476-1-1.html
.. [3] http://bbs.pcbeta.com/viewthread-1597258-1-1.html
.. [4] http://www.tonymacx86.com/yosemite-laptop-support/145308-fix-resolve-boot-screen-garble.html
.. [5] http://www.tonymacx86.com/yosemite-laptop-support/152573-guide-patching-laptop-dsdt-ssdts.html
.. [6] http://www.tonymacx86.com/hp-probook-mavericks/121031-native-brightness-working-without-blinkscreen-using-patched-applebacklight-kext.html
