#!/usr/bin/perl
# Patch AppleHDA with a user supplied codec id to match an existing codec
# class in the driver.
# When patching, take into account that multiple comparisons may need to
# be adjusted in order to have a successful match.
# Originally based upon the simple perl one liner posted by aschar:
# http://www.projectosx.com/forum/index.php?showtopic=465&view=findpost&p=9687

# Goal is to replace patch_id with target_id in the binary
# 2 matches per architecture:
#  Match1 in AppleHDAFunctionGroupFactory::createAppleHDAFunctionGroup()
#  Match2 in AppleHDAWidgetFactory::createAppleHDAWidget()
# Thus 2 patches are required per codec, or 4 for FAT binaries.

# Version 3.5
# Copyright (c) 2011-2014 B.C. <bcc24x7@gmail.com> (bcc9 at insanelymac.com). 
# Copyright (c) 2015 H.Nguyen DINH (pokenguyen at insanelymac.com)
# All rights reserved.

use Getopt::Long;
use Term::ReadLine;

#The following comparison tables can be dynamically built by looking at 
# the comparison instructions in the match routines using otool.  For ease 
# of use (no need for the user to install xcode), they are included here. 

my @codec_compares_osx107 = (
    0x1aec87ff,
    0x15ad1974,
    0x8384767f,
    0x1002aa00,
    0x83847680,
    0x10134205,
    0x1002aa01,
    0x10de0006,
    0x10134206,
    0x11d41983,
    0x10ec0884,
    0x10ec0261,
    0x10de003f,
    0x10de0013,
    0x10de0007,
    0x10de000a,
    0x10de000c,
    0x11d41984,
    0x11d4198b,
    0x10ec0262,
    0x10ec0885,
    0x1aec8800,
    0x10de0014,
    0x15ad1975
    );
my @codec_compares_osx108 = (
    0x1aec87ff,
    0x15ad1974,
    0x8384767f,
    0x1002aa00,
    0x83847680,
    0x10134205,
    0x1002aa01,
    0x10de0006,
    0x10134206,
    0x10ec0261,
    0x10de003f,
    0x10ec0884,
    0x10ec0262,
    0x10ec0885,
    0x11d41984,
    0x11d4198b,
    0x15ad1975,
    0x1aec8800,
    );
my @codec_compares_osx109 = (
    0x8384767f,
    0x80862804,
    0x1aec87ff,
    0x15ad1974,
    0x10134205,
    0x1002aa01,
    0x83847680,
    0x1aec8800,
    0x80862807,
    0x15ad1975,
    0x10de0006,
    0x10134206,
    0x10ec0261,
    #0x10de003f,
    0x10134208,
    0x10ec0884,
    0x10ec0262,
    0x10ec0885,
    0x11d41984,
    0x11d4198b,
    0x10de0000,
    );


my @codec_compares_osx1010 = (
    0x8384767f,
    0x80862804,
    0x1aec87ff,
    0x15ad1974,
    0x10134205,
    0x1002aa01,
    0x83847680,
    0x1aec8800,
    #0x80862807,
    0x15ad1975,
    0x10de0006,
    0x10134206,
    0x10ec0261,
    #0x10de003f,
    0x10134208,
    0x10ec0884,
    0x10ec0262,
    0x10ec0885,
    0x11d41984,
    0x11d4198b,
    0x10de0000,
    );

my @codec_compares_osx1011 = (
    0x8384767f,
    #0x80862804,
    #0x1aec87ff,
    0x15ad1974,
    #0x10134205,
    0x1002aa01,
    0x83847680,
    0x1aec8800,
    #0x80862807,
    0x15ad1975,
    0x10de0006,
    0x10134206,
    0x10ec0261,
    #0x10de003f,
    0x10134208,
    #0x10ec0884,
    0x10ec0262,
    0x10ec0885,
    0x11d41983,
    0x11d41984,
    0x11d4198b,
    0x10de0000,
    );

my @codec_compares = ();
my @ranges = ();

my $debug = 0;
my $matches = 0, $range_matches = 0;

my $file;
my $kext = "AppleHDA";
my $outfile="/tmp/$kext";
my $verbose = 0;

# Read configuration file
sub read_config
{
    my $file = $_[0];
    our $err;
    my $rc;

    # Process the contents of the config file
    $rc = do($file);

    # Check for errors
    if ($@) {
	$::err = "ERROR: Failure compiling '$file' - $@";
    } elsif (! defined($rc)) {
	$::err = "ERROR: Failure reading '$file' - $!";
    } elsif (! $rc) {
	$::err = "ERROR: Failure processing '$file'";
    }
    return ($err);
}

# We want to zero out comparsions that are less than the patch id but greater
# than the target id
sub find_codec_ranges
{
    my $index;
    my $target_id, $patch_id;

    $target_id = $_[0];
    $patch_id = $_[1];
    if ($verbose) {
	if ($#codec_compares eq -1) {
	    printf "No codec range comparisons to check\n";
	} else {
	    printf "Checking %d range comparisons between %x and %x\n",
	    $#codec_compares, $patch_id, $target_id;
	}
    }
    for ($index = 0; $index <= $#codec_compares; $index++) {
	if ($codec_compares[$index] < $patch_id &&
	    $codec_compares[$index] > $target_id) {
	    if ($verbose) {
		printf "Found range comparison %x\n", $codec_compares[$index];
	    }
	    push(@ranges, $codec_compares[$index]);
	} elsif ($codec_compares[$index] eq $target_id ||
		 $codec_compares[$index] eq $patch_id) {
	    #We're done looking
	    last;
	}
    }
    if ($#ranges eq -1) {
	printf "No codec range comparisons require patching\n";
    } else {
	printf "%d codec range comparison(s) to patch\n", $#ranges+1;
    }
}

#Convert number in network byte order to 4 byte hex string, little-endian
sub hexstr
{
    my $num, $str, $byte;

    $str = "";
    $num = $_[0];
    for ($i = 0; $i < 4; $i++) {
	$byte = sprintf("%.2x", $num & 0xff);
	$str = $str . $byte;
	$num = $num >> 8;
    }
    return $str;
}


sub output_xml_patch
{
    my $find, $replace, $count;
    my $pretty_indent;
    
    my $find_b64, $replace_b64;

    $find = hexstr($_[0]);
    $replace = hexstr($_[1]);
    
    $find_b64 = `echo -n "$find"|xxd -r -p|base64|tr -d '\n'`;#rehabman
    $replace_b64 = `echo -n "$replace"|xxd -r -p|base64|tr -d '\n'`;#rehabman
    
    $count = $_[2];
    $pretty_indent = "\t\t\t";
    printf FILE "%s<dict>\n", $pretty_indent;
    $pretty_indent = "\t\t\t\t";
    printf FILE "%s<key>Name</key>\n", $pretty_indent;
    printf FILE "%s<string>AppleHDA</string>\n", $pretty_indent;
    printf FILE "%s<key>Comment</key>\n", $pretty_indent;
    printf FILE "%s<string>Expect %d matches</string>\n", $pretty_indent, $count;
    printf FILE "%s<key>Find</key>\n", $pretty_indent;
    printf FILE "%s<data>%s</data>\n", $pretty_indent, $find_b64;#rehabman
    printf FILE "%s<key>Replace</key>\n", $pretty_indent;
    printf FILE "%s<data>%s</data>\n", $pretty_indent, $replace_b64;#rehabman
    $pretty_indent = "\t\t\t";
    printf FILE "%s</dict>\n", $pretty_indent;
}

sub patch_codec
{
    my $codec_to_patch, $target_codec;
    my $range_comparison;

    #Convert all codec ids we will match on to little-endian strings
    $target_codec = pack("l", $_[0]);
    $codec_to_patch = pack("l", $_[1]);
    for ($index = 0; $index <= $#ranges; $index++) {
	$ranges[$index] = pack("l", $ranges[$index]);
    }

    open(my $IN, '<', $file) || die "Cannot open '$file' $!";
    open(my $OUT, '>', $outfile) || die "Cannot open '$outfile' $!";
    while ( <$IN> ) {
	if (s/$codec_to_patch/$target_codec/g) {
	    $matches++;
	}
	#patch range
	for ($index = 0; $index <= $#ranges; $index++) {
	    $range_comparison = $ranges[$index];
	    #We zero out the numeric operand of applicable range comparisons
	    # to make the comparisons always succeed
	    if (s/$range_comparison/\x0\x0\x0\x0/g) {
		$range_matches++;
	    }
	}
	print $OUT $_;
    }
    close $OUT;
    close $IN;
}

sub supported()
{
    printf "Supported codecs:\n";
    printf "Target\t\tTarget\t\tPatch\n";
    printf "Codec ID\tName\t\tCodec Name\n";
    printf "-------------------------------------------\n";
    for $key (keys %codecs_map) {
	my $val = $codecs_map{$key};
	$codec_id = $codec_names_to_num{$key};
	if (ref($val) eq 'ARRAY') {
	    for ($index = 0; $index < @$val; $index++) {
		$codec_name = $val->[$index];
		$patch_id = $codec_names_to_num{$codec_name};
		if ($index == 0) {
		    printf "%x\t%s\t", $codec_id, $key;
		} else {
		    printf "\t\t\t\t";
		}
		printf "Choice %d: %s\n", $index + 1, $codec_name;
	    }
	} else {
	    $codec_name = $val;
	    $patch_id = $codec_names_to_num{$codec_name};
	    printf "%x\t%s\t%s\n", $codec_id, $key, $codec_name;
	}
    }
}

sub usage()
{
    printf "Usage: patch-hda.pl <codec-id>|<codec-name>\n" .
	"Command line switches:\n" .
	"  -y\t\tUse the auto-detected codec without running the script\n\t\tinteractively.\n" .
	"  -c <choice>\tFor codecs with multiple known working choices for the\n\t\truntime AppleHDA codec (target codec) to use,\n\t\tthis option selects the choice.\n\t\t-c 1 lets you select choice #1 (the default),\n\t\t-c 2 the second choice, and so on.\n" .
	"  -s <directory>\tkext directory to use instead of\n\t\t\t/System/Library/Extensions\n" .
	"  -r <volume root>\tspecify an alternate disk volume to use\n\t\t\tas the root for everything\n" .
	"  -o <os vers number>\toverride auto-detected OS version (10.7/10.8/10.9)\n" .
	"  -t\t\trun the script in test-only mode,\n\t\twhere AppleHDA is not actually patched.\n" .
	"  -x\t\tOutput clover compatible XML patch configuration\n" .
	"Examples:\tpatch-hda.pl 111d7675\n" .
	"\t\tpatch-hda.pl 'IDT 7675'\n" .
	"\t\tpatch-hda.pl -c 2 'Realtek ALC892'\n" .
	"\t\tpatch-hda.pl -y\n";
    supported();
}

# Try to find the OS version in 1 of 3 places:
# First, if the working directory is not /S/L/E, check the kext version
# Second, check /S/L/CoreServices/SystemVersion.plist on the target volume
# Third, check the version of the running system
sub osvers
{
    my $root, $dir, $vers;

    $root = $_[0];
    $dir = $_[1];
    if ($dir ne "/System/Library/Extensions") {
	$kextversfile = $root . $dir . "/" . $kext . ".kext/Contents/version.plist";
	chomp($kextvers = `/usr/libexec/PlistBuddy -c 'Print CFBundleShortVersionString' $kextversfile`);
	if ($verbose) {
	    printf "kext version %s\n", $kextvers;
	}
	if ($kextvers >= "272.36") {
	    return("10.11");
	} elsif ($kextvers >= "272") {
	    return("10.10");
	} elsif ($kextvers >= "2.5.2") {
	    return("10.9");
	} elsif ($kextvers >= "2.3.0") {
	    return("10.8");
	} elsif ($kextvers >= "2.2.5") {
	    return("10.7.5");
	} elsif ($kextvers) {
	    return("10.7");
	}
    }
    chomp($vers = `/usr/libexec/PlistBuddy -c 'Print ProductVersion' $root/System/Library/CoreServices/SystemVersion.plist`);
    if (!$vers) {
	chomp($vers = `sw_vers -productVersion`);
    }
    return($vers);
}

#Ugh, standard hex() function doesn't error check its input,
#so we have to do so here
sub is_hex
{
    my $hexstr = $_[0];

    $hexstr =~ s/^0x//i;
    if (!length($hexstr)) {
	# No chars after leading 0x
	return(0);
    }
    if ($hexstr !~ /[^0-9a-f]/i ) {
	# no invalid characters
	return(1);
    }
    return(0);
}

sub main()
{
    my $target_id, $patch_id;
    my $match_expect;
    my $root = "";
    my $sledir = "/System/Library/Extensions";
    my $testonly = 0;
    my $interactive = 0;
    my $err;
    my $choice = 1;
    my $desired_codec;
    my $patch_codec_name, $target_codec_name, $codec_arg;
    my $output_xml = 0;

    if ($err = read_config("patch-hda-codecs.pl")) {
	printf(STDERR "%s\n", $err);
	exit(1);
    }
    GetOptions (
        'v+' => \$verbose,
	'y' => \$use_default,
	't' => \$testonly,
	'x' => \$output_xml,
        'c=i' => \$choice,
        's=s' => \$sledir,
        'r=s' => \$root,	#Volume root
	'o=s' => \$osxvers
	);

    $file = $root . $sledir . "/" . $kext . ".kext/Contents/MacOS/" . $kext;

    if (!$osxvers) {
	$osxvers = osvers($root, $sledir);
    }
    printf "OSX version %s detected\n", $osxvers;
    chomp($default_codec = `ioreg -rxn IOHDACodecDevice | grep VendorID | awk '{print \$4}' | tr -d '\040\011\012\015'`);
    if ($default_codec) {
	my($prefix, $val, $post) = split(/0x/, $default_codec, 3);
	$default_codec = $val;
	printf "Default target codec: %s detected.\n", $default_codec; 
    }
    if ($debug) {
#	$file = $kext;
	$testonly = 1;
    }
    if ($use_default && $default_codec) {
	$codec_arg = $default_codec;
    } elsif ($#ARGV == -1) {
	$interactive = 1;
retry:
	printf "Enter codec-id or codec-name for AppleHDA patch.  Eg. 111d7675 or IDT 7675\n";
	printf "Press enter for default, or ? for help ";
	if ($default_codec) {
	    $codec_arg = $default_codec;
	    printf "(Default: %s)", $default_codec;
	}
	printf "\n";
	my $term = Term::ReadLine->new('yes/no');
	$_ = $term->readline("? ");
	if (/\?/) {
	    usage();
	    goto retry;
	}
	if ($_) {
	    $codec_arg = $_;
	}
    } else {
	$codec_arg = $ARGV[0];
    }
    if (is_hex($codec_arg)) {
	$target_id = hex($codec_arg);
	%codec_nums_to_name = reverse %codec_names_to_num;
	$target_codec_name = $codec_nums_to_name{$target_id};
    } else {
	$target_codec_name = $codec_arg;
	$target_id = $codec_names_to_num{$target_codec_name};
    }

    $match_expect = 2;

    if ($osxvers < "10.8" && $osxvers !~ m/10.1*/) {
	# FAT binary with 2 architectures
	$match_expect *= 2;
    }
    elsif ($osxvers lt "10.10.5"){
    @codec_compares = @codec_compares_osx1010;
    }
    elsif ($osxvers lt "10.11.5"){
    @codec_compares = @codec_compares_osx1011;
    }
    elsif ($osxvers < "10.7.5") {
	@codec_compares = @codec_compares_osx107;
    } elsif ($osxvers < "10.9.5") {
	@codec_compares = @codec_compares_osx108;
    } else {
	@codec_compares = @codec_compares_osx109;
    }

    if (!$target_id) {
	printf "Couldn't get target codec id for %s\n", $target_codec_name;
	supported();
	exit(1);
    }

    if ($target_codec_name) {
	$val = $codecs_map{$target_codec_name};
	if (ref($val) eq 'ARRAY') {
	    $choice_cnt = @$val;
	    if ($interactive) {
		printf "There are %d choices for target codec %s\n", $choice_cnt;
		printf "Choose codec number to patch to (1 thru %d) (default %d)\n",
		$choice_cnt, $choice;
		for ($index = 0; $index < @$val; $index++) {
		    $codec_name = $val->[$index];
		    printf "Choice %d: %s\n", $index + 1, $codec_name;
		}
	      retry2:
		my $term = Term::ReadLine->new('');
		$_ = $term->readline("? ");
		if ($_) {
		    if ($_ > $choice_cnt || $_ < 1) {
			printf "Choice %d out of bounds; must be between 1 and %d\n", $_, $choice_cnt;
			goto retry2;
		    }
		    $choice = $_;
		}
	    }
	    if ($choice > $choice_cnt) {
		printf "Choice %d selected, but only %d choices for codec %s\n",
		$choice, $choice_cnt, $target_codec_name;
		exit(1);
	    }
	    $patch_codec_name = $val->[$choice-1];
	} else {
	    $patch_codec_name = $val;
	}
    }
    $patch_id = 0;
    if ($patch_codec_name) {
	$patch_id = $codec_names_to_num{$patch_codec_name};
    }
    if (!$patch_id) {
	printf "Couldn't find a codec map to apply for '%s'.\n", $codec_arg;
	# Some basic sanity checking on the user-supplied codec-id
	if ($target_id < 0x10000) {
	    printf "This codec-id does not appear to be valid.  Aborting.\n";
	    exit(1);
	}
	my $term = Term::ReadLine->new('yes/no');
	$_ = $term->readline("Would you like to try using ADI 1984 (the default) (Y/N)? ");
	if (!/^[Yy]/) {
	    printf "Nothing done.\n";
	    supported();
	    exit(1);
	}
	$patch_id = $codec_names_to_num{'ADI 1984'};
    }
    printf "Patching AppleHDA codec %x with %x\n", $patch_id, $target_id;
    find_codec_ranges($target_id, $patch_id);
    for ($index = 0; $index <= $#ranges; $index++) {
	$range_comparison = $ranges[$index];
	printf "Patching range comparison %x\n", $range_comparison;
    }

    if ($output_xml) {
    open(FILE, ">codecpatch.xml") or die "Cannot open file";
    $pretty_indent = "\t\t";
    printf FILE "%s<array>\n", $pretty_indent;
	for ($index = 0; $index <= $#ranges; $index++) {
	    output_xml_patch($ranges[$index], 0x0, $match_expect);
	}
	output_xml_patch($patch_id, $target_id, $match_expect);
    $pretty_indent = "\t\t";
    printf FILE "%s</array>\n", $pretty_indent;
	exit(1);
    }
    patch_codec($target_id, $patch_id);

    if ($matches != $match_expect) {
	if ($matches == 0) {
	    printf "Found no matching codec to patch.  $kext may already be patched\n";
	} else {
	    printf "Unexpected codec match count: %d (%d expected)\n", $matches,
	    $match_expect;
	}
	printf "Aborting with $kext NOT patched\n";
	exit(1);
    }
    if ($#ranges gt -1) {
	$match_expect *= ($#ranges + 1);
	if ($range_matches != $match_expect) {
	    printf "Unexpected codec range match count: %d (%d expected)\n",
	    $range_matches, $match_expect;
	    printf "Aborting with $kext NOT patched\n";
	    exit(1);
	}
    }
    my $uid=`id -u`;

    if (!$testonly) {
	if ($uid != 0) {
	    printf "This script requires superuser access to update $kext\n";
	}
	system("sudo mv $file $file.orig");
	if ($?) {
	    exit(1);
	}
	system("sudo mv $outfile $file");
	if ($?) {
	    exit(1);
	}
	system("sudo chown root:wheel $file");
	if ($?) {
	    exit(1);
	}
	system("sudo chmod 755 $file");
	if ($?) {
	    exit(1);
	}
	system("sudo touch $sledir");
	if ($?) {
	    exit(1);
	}
    }

    printf "$file patched successfully.\n";
}

main();
exit(0);
