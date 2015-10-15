:Title: Install  El Capitan on Thinkpad T450 20BV-A00YCD
:Author: Shmilee
:Date: 2015-10-02

.. raw:: latex

    \newpage

Introduction
============

Same as 10.10.5

Prepare
========

Clover
--------

Install the kexts to /boot/EFI/Clover/kexts/10.11/

Get the ProductPageIcon.

.. code:: bash

    $ open InstallESD-15A284.dmg
    $ cd /Volumes/OS\ X\ Install\ ESD/
    $ open BaseSystem.dmg
    $ cp /Volumes/OS\ X\ Base\ System/Install\ OS\ X\ El\ Capitan.app/\
    > Contents/Resources/ProductPageIcon_512x512.tiff ./

According to the logo icns of your themes, make a new png os_cap.png from ProductPageIcon.
Upload os_cap.png to http://www.easyicon.net/language.en/covert/, and save as ``os_cap.icns``.
Copy it to the themes directory.

Use ``config-mbp121.plist``.

Install Image
-------------

MD5 (InstallESD-15A284.dmg) = d54b388282228df41f40e95649e8bc32

Restore BaseSystem.dmg to ``/dev/sda7``.  Rename the label of sda7 to ``Install(15A284)``.
Renmove link file ``/Volumes/Install\(15A284\)/System/Installation/Packages``.
Copy ``/Volumes/OS X Install ESD/Packages`` to ``/Volumes/Install(15A284)/System/Installation/Packages``.
Copy BaseSystem.dmg and BaseSystem.chunklist from ``/Volumes/OS X Install ESD`` to ``/Volumes/Install(15A284)``.

copy mbr/OSInstaller to
System/Library/PrivateFrameworks/OSInstaller.framework/Versions/A/

copy mbr/OSInstal.mpkg to
System/Installation/Packages/

Install El Capitan
==================

Reboot, enter clover, set graphics fakeid = 0x16160002, install El Capitan to ``/dev/sda3``.


Post-Installation
=================

Graphics HD5500
---------------

The recommended and easier way is to modify EFI/Clover/config.plist.
Find key: ``KextsToPatch``, string: Disable minStolenSize ... 10.11.x ...,
key: ``name``, string: disabled:AppleIntelBDWGraphicsFramebuffer, and remove ``disabled:``.

Boot Screen Garble
------------------

Modify EFI/Clover/config.plist.
Find key: ``KextsToPatch``, string: Boot graphics glitch, 10.10.x/10.11.x ...,
remove ``disabled:``.

SSDT & DSDT
------------

Same as 10.10.5

USB 3.0
-------

!!!!!!!!!!!!!Camera doesn't work!!!!!!!!!!!!!!!!!!!!!!Wait 6 months!!!!!!!!!!!!!!

Applications
============

Same as 10.10.5

