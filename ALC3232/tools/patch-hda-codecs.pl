#!/usr/bin/perl
#
# Table of codec IDs that may be patched into AppleHDA 
# patch-hda.pl uses this table to allow codec id replacement in the AppleHDA
# binary.  In the table, patch_id represents the existing codec in the AppleHDA
# binary, and target_id is the codec for the hardware you wish to add support
# (hardware that is not already supported by AppleHDA automatically).
#
# Copyright (c) 2012-2014 B.C. <bcc24x7@gmail.com> (bcc9 at insanelymac.com). 
# All rights reserved.

#note:
#codecs from HDA wizard:
# http://www.insanelymac.com/forum/index.php?showtopic=266531
#have not been verified

%codec_names_to_num = (
    'ADI AD2000B', 0x11d4989b,
    'Cirrus Logic CS4213', 0x10134213,
    'Conexant CX20583', 0x14f15067,
    'Conexant CX20585', 0x14f15069,
    'Conexant CX20588', 0x14f1506c,
    'Conexant CX20590', 0x14F1506E,
    'Conexant CX20672', 0x14f1506e, #per rehabman
    'Conexant CX20752', 0x14f1510F,
    'Conexant CX20756', 0x14f15114,
    'Conexant CX20757', 0x14f15115,
    'IDT 7603', 0x111d7603, #aka 92HD75B3X5
    'IDT 7605', 0x111d7605, #aka 92HD81B1X5
    'IDT 7675', 0x111d7675, #aka 92HD73C1X5
    'IDT 76b2', 0x111d76b2,
    'IDT 76d1', 0x111d76d1, #aka 92HD87B1
    'IDT 76d9', 0x111d76d9, #aka 92HD87B2/4 (rehabman)
    'IDT 76df', 0x111d76df, #aka 92HD93XX per pokenguyen
    'IDT 76e0', 0x111d76e0, #aka 92HD91BXX
    'IDT 76e7', 0x111d76e7, #aka 92HD90BX per anonymousnbs
    'IDT 76e5', 0x111d76e5, #aka 92HD99BX per anonymousnbs
    'Realtek ALC233', 0x10ec0233,
    'Realtek ALC235', 0x10ec0235,
    'Realtek ALC255', 0x10ec0255,
    'Realtek ALC268', 0x10ec0268,
    'Realtek ALC269', 0x10ec0269,
    'Realtek ALC270', 0x10ec0270,
    'Realtek ALC272', 0x10ec0272,
    'Realtek ALC275', 0x10ec0275,
    'Realtek ALC280', 0x10ec0280,
    'Realtek ALC282', 0x10ec0282,
    'Realtek ALC283', 0x10ec0283, # (rehabman)
    'Realtek ALC284', 0x10ec0284,
    'Realtek ALC288', 0x10ec0288,
    'Realtek ALC290', 0x10ec0290,
    'Realtek ALC292', 0x10ec0292,
    'Realtek ALC662', 0x10ec0662,
    'Realtek ALC663', 0x10ec0663,
    'Realtek ALC668', 0x10ec0668,
    'Realtek ALC670', 0x10ec0670, # (rehabman)
    'Realtek ALC882', 0x10ec0882,
    'Realtek ALC883', 0x10ec0883,
    'Realtek ALC885', 0x10ec0885,
    'Realtek ALC887', 0x10ec0887,
    'Realtek ALC888', 0x10ec0888,
    'Realtek ALC889', 0x10ec0889,
    'Realtek ALC892', 0x10ec0892,
    'Realtek ALC898', 0x10ec0898,
    'Realtek ALC1150', 0x10ec0900,
    'VIA VT2021' , 0x11060441,
    'VIA VT1802' , 0x11068446,
#Codecs we patch to (codecs found in AppleHDA)
    'ADI 1984', 0x11d41984,
    'ADI 1984B', 0x11d4198b,
    'ALC 885', 0x10ec0885,
    );
#Use reverse to invert

%codecs_map = (
    'ADI AD2000B' => 'ADI 1984B',	#per hda wizard
    'Cirrus Logic CS4213' => 'ADI 1984',
    'Conexant CX20583' => 'ADI 1984',	#per Mirone
    'Conexant CX20585' => 'ADI 1984',	#per Mirone
    'Conexant CX20588' => 'ADI 1984',   #per Mirone
    'Conexant CX20590' => 'ADI 1984',	#per Mirone
    'Conexant CX20672' => 'ADI 1984B',	#per rehabman
    'Conexant CX20752' => 'ADI 1984',	#per Mirone
    'Conexant CX20756' => 'ADI 1984',   #per Mirone
    'Conexant CX20757' => 'ADI 1984',	#per Mirone
    'IDT 7603' => 'ADI 1984',		#per hda wizard
    'IDT 7605' => 'ADI 1984B',		#per hda wizard
    'IDT 7675' => 'ADI 1984',		#per bcc9
    'IDT 76b2' => 'ADI 1984',
    'IDT 76d1' => 'ADI 1984',
    'IDT 76d9' => 'ADI 1984B',		#per BigDonkey (rehabman)
    'IDT 76df' => 'ADI 1984B',		#per pokenguyen
    'IDT 76e0' => 'ADI 1984B',
    'IDT 76e7' => 'ADI 1984B',     #per anonymousnbs
    'IDT 76e5' => 'ADI 1984B', #per anonymousnbs
    'Realtek ALC233' => 'ADI 1984',
    'Realtek ALC235' => 'ADI 1984',
    'Realtek ALC255' => 'ADI 1984',
    'Realtek ALC268' => 'ADI 1984',	#per Mirone
    'Realtek ALC269' => 'ADI 1984',
    'Realtek ALC270' => 'ADI 1984',	#per Mirone
    'Realtek ALC272' => 'ADI 1984',	#per Mirone
    'Realtek ALC275' => 'ADI 1984',	#per Mirone
    'Realtek ALC280' => 'ADI 1984', #per Mirone
    'Realtek ALC282' => 'ADI 1984',	#per Mirone
    'Realtek ALC283' => 'ADI 1984',	#per Mirone
    'Realtek ALC284' => 'ADI 1984', #per Mirone
    'Realtek ALC288' => 'ADI 1984', #per Mirone
    'Realtek ALC290' => 'ADI 1984', #per Mirone
    'Realtek ALC292' => 'ADI 1984', #per anonymousnbs
    'Realtek ALC662' => 'ALC 885',	#per hda wizard
    'Realtek ALC663' => 'ADI 1984',	#per Mirone
    'Realtek ALC668' => 'ADI 1984', 
    'Realtek ALC670' => 'ADI 1984',	#per Alex Auditore (rehabman)
    'Realtek ALC882' => 'ALC 885',	#per hda wizard
    'Realtek ALC883' => 'ALC 885',	#per hda wizard
    'Realtek ALC885' => 'ADI 1984B',
    'Realtek ALC887' => 'ADI 1984B',	#per Mirone
    'Realtek ALC888' => 'ALC 885',	#per hda wizard
#ADI 1984 is Slice's version
#Timewalker75a says this allows for working audio inputs
#alc885 however avoids some sound assertion errors
    'Realtek ALC889' => ['ALC 885', 'ADI 1984'],
#For gigabyte alc892 motherboards: adi 1984b
# http://www.insanelymac.com/forum/topic/284004-script-to-patch-applehda-binary-for-osx107108/?p=1888843
    'Realtek ALC892' => ['ALC 885', 'ADI 1984B'],
    'Realtek ALC898' => 'ADI 1984B',	#per Mirone
    'Realtek ALC1150' => 'ADI 1984B',	#per Mirone
#Works with gigabyte z77mx-d3h, per bcc9
    'VIA VT2021'  => 'ADI 1984',
    'VIA VT1802' => 'ADI 1984', #per Mirone
    );
