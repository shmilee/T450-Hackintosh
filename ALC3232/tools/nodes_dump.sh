#!/bin/bash
hdaVerb=${1:-./hda-verb}
Verbs0x0=(GET_CONNECT_SEL GET_PROC_STATE GET_POWER_STATE GET_PIN_WIDGET_CONTROL\
    GET_UNSOLICITED_RESPONSE GET_BEEP_CONTROL GET_PIN_SENSE GET_EAPD_BTLENABLE\
    GET_VOLUME_KNOB_CONTROL GET_GPIO_DATA GET_GPIO_MASK GET_GPIO_DIRECTION\
    GET_GPIO_WAKE_MASK GET_GPIO_UNSOLICITED_RSP_MASK GET_GPIO_STICKY_MASK\
	GET_CONFIG_DEFAULT)
AmpGainMuteParams=(Right_Input:0x0 Left_Input:0x2000\
    Riht_Output:0x8000 Left_Output:0xa000)
Nodes=(0x02 0x03 0x04 0x05 0x06 0x07 0x08 0x09 0x0a 0x0b 0x0c 0x0d 0x0e 0x0f\
    0x10 0x11 0x12 0x13 0x14 0x15 0x16 0x17 0x18 0x19 0x1a 0x1b 0x1c 0x1d 0x1e\
	0x1f 0x20 0x21 0x22 0x23 0x24)

function dumpverb0x0 {
	for verb in ${Verbs0x0[@]}; do
		verb_name=`echo ${verb/GET_/} | tr A-Z a-z`
		for node in ${Nodes[@]}; do
			echo -e "$verb_name\tnid = $node -> result `$hdaVerb $node $verb 0x0 | tail -c 11`"
		done
		echo
	done
}

function dumpAGMP {
	verb=$1
	para=$2
	verb_name="`echo ${verb/GET_/} | tr A-Z a-z` (${para%:*})"
	for node in ${Nodes[@]}; do
		echo -e "$verb_name\tnid = $node -> result `$hdaVerb $node $verb ${para#*:} | tail -c 11`"
	done
	echo
}

dumpverb0x0

for param in ${AmpGainMuteParams[@]}; do
	dumpAGMP GET_AMP_GAIN_MUTE $param
done

exit 0
