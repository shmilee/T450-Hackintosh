Basic Info
============

* Codec: Realtek ALC3232
* Address: 0
* Vendor Id: 0x10ec0292, Decimal(283902610)
* Vendor Defined Widget: 0x04, 0x05, 0x07, 0x0a, 0x0e, 0x10, 0x11, 0x17, 0x1c, 0x1f, 0x20, 0x21, 0x24

## Audio Input/Output Nodes: 0x02, 0x03, 0x06, 0x08, 0x09

|Node| Type  |Connection| Name |
|----|:-----:|:--------:|------|
|0x02| Output|      |Speaker Playback Volume|
|0x03| Output|      |Headphone Playback Volume|
|0x06| Output|      |      |
|0x08| Input | 0x23 |      |
|0x09| Input | 0x22 |Capture Volume/Switch|

## Audio Mmixer/Selector Nodes: 0x0b, 0x0c, 0x0d, 0x0f; 0x22,0x23

|Node| Type | Connection |
|----|:----:|------------|
|0x0b| Mixer | 0x18 0x19 0x1a 0x1b 0x1d |
|0x0c| Mixer | 0x02 0x0b |
|0x0d| Mixer | 0x03 0x0b |
|0x0f| Mixer | 0x02 0x03 |
|0x22| Selector | 0x18 0x19 0x1a\*(Headphone) 0x1b 0x1d 0x0b 0x12\*(Speaker) 0x13 |
|0x23| Selector | 0x18\* 0x19 0x1a 0x1b 0x1d 0x0b |

## Pin Complex Nodes: 0x12, 0x14, 0x15, 0x1a

|Node| Pin Default | Name of Pin Default | Conn | Color | EAPD | Connection | Control: name |Pin-ctls|
|----|:-----------:|---------------------|:----:|:-----:|:----:|:----------:|---------------|--------|
|0x12| 0x90a60130  |[Fixed] Mic at Int       | Digital| Unknown|         |             | Internal Mic Boost Volume| 0x20: IN|
|0x14| 0x90170110  |[Fixed] Speaker at Int   | Analog | Unknown| EAPD 0x2| 0x0c\* 0x0d | Speaker Playback Switch| 0x40: OUT|
|0x15| 0x0321101f  |[Jack] HP Out at Ext Left| 1/8    | Black  | EAPD 0x2| 0x0c 0x0d\* | Headphone Playback Switch| 0xc0: OUT HP|
|0x1a| 0x03a11020  |[Jack] Mic at Ext Left   | 1/8    | Black  |         |             | Mic Boost Volume| 0x24: IN VREF_80|
|0x13| 0x40000000  |[N/A] Line Out at Ext    | Unknown| Unknown|         |             |        |      |
|0x16| 0x411111f0  |[N/A] Speaker at Ext Rear| 1/8    | Black  | EAPD 0x2| 0x0c 0x0d\* | Headphone Playback Switch|      |
|0x18| 0x411111f0  |[N/A] Speaker at Ext Rear| 1/8    | Black  |         | 0x0c\* 0x0d |        | 0x20: IN VREF_HIZ|
|0x19| 0x411111f0  |[N/A] Speaker at Ext Rear| 1/8    | Black  |         |             | Dock Mic Boost Volume|     |
|0x1b| 0x411111f0  |[N/A] Speaker at Ext Rear| 1/8    | Black  |         | 0x0c\* 0x0d |        |  0x20: IN VREF_HIZ|
|0x1d| 0x40738105  |[N/A] Modem Hand at Ext  | ATAPI  | Purple |         |             |        |      |
|0x1e| 0x411111f0  |[N/A] Speaker at Ext Rear| 1/8    | Black  |         | 0x06        |        |      |


Codec verbs(configdata)
=========================

## Correct Pin Complex Nodes used: 0x12,0x14,0x15,0x1a

|Node| Pin Default |Extracted verb|Correct V1V2 |Correct V3V4 |Correct V5V6 |Correct V7V8 |
|----|:-----------:|:------------:|:-----------:|:-----------:|:-----------:|:-----------:|
|0x12| 0x90a60130  | 30 01 a6 90  | 10 01 a6 90 | 10 01 a6 90 | 10 01 a6 90 | 10 01 a6 90 |
|0x14| 0x90170110  | 10 01 17 90  | 20 01 17 90 | 20 01 17 90 | 20 01 17 90 | 20 01 17 90 |
|0x15| 0x0321101f  | 1f 10 21 03  | 30 10 21 03 | 30 10 21 03 | 30 10 21 03 | 30 10 21 03 |
|0x1a| 0x03a11020  | 20 10 a1 03  | 40 10 a1 03 | 40 10 a1 03 | 40 10 81 03 | 40 10 81 03 |

Verbs: V1V2 V3V4 V5V6 V7V8, [referance1](http://www.insanelymac.com/forum/topic/295001-guide-to-patch-applehda-for-your-codec/),
[referance2](http://forum.osxlatitude.com/index.php?/topic/1946-complete-applehda-patching-guide/).

> {{{

1. V1, Default Association.
   All jacks with the same association number are intended to be grouped together, for instance to provide six channel analog output,
   so the association bit must be unique for all the devices.
   The association bit value can either 1,2,3..... d,e,f.
   Value f is a special value indicating that the Association has the lowest priority.
   Multiple different Pin Complexes may share this value, and each is intended to be exposed as independent devices.
   Most importantly the association bit must be in sequence and serially like assigning 1,2...x to the Nodes in sequence.

2. V2, Sequence.
   Apple dosen't have multichannel analog out! so you must set Sequence to 0.

3. V3, Color.
   0.Unknown, 1.Black, 2.Grey, 3.Blue, 4.Green, 5.Red,
   6.Orange,  7.Yellow, 8.Purple, 9.Pink, E.White, F.Other

4. V4, Misc.
   Use 0 for Jack Detect - External Device(e.g. Headphones Mic etc).
   Use 1 for Jack Detect Disabled - Internal Device(e.g. Internal speakers, Internal mic)

5. V5, Default Device.
   0=line out, 1=speaker, 2=hp out, 3=cd, 4=spdit out, 5=digital out, 8=line in, A=mic in, C=spdif in, F=other
   Existing verb data for External Mic is "a1", where 'a' tells its Mic In. Now, change this to Line in with '81'.

6. V6, Connection Type.
   0=Unknown, 1=1/8 Stereo/mono, 3=atapi internal, 4=RCA, 5=optical, 6=digital, 7=Analog, F=other

7. V7V8 = h1h2h3h4h5h6h7h8. h1h2=Port Connectivity; h3h4h5h6h7h8=Location.
    h1h2=00, Port is connected to a Jack. h1h2=10, Fixed Function/Built In Device.
    h3h4h5h6h7h8=01 0000, Internal N/A. h3h4h5h6h7h8=00 0011, External Left.

> }}}

## Calculate the Codec verbs

Formulae is: Codec Address + NodeID + Verb Commands + Verb data.
Verb Commands are standard and they are 71c, 71d, 71e, 71f and 70c for EAPD.

Look carefully at the output nodes like Speaker and Headphone, since in some codecs
there is an External Amplifier(EAPD) to power up/down the Speaker to save power.
Use EAPD command to wake up the node to get the sound otherwise we won't get sound even though its recognized.


|Node| Verbs |
|----|-------|
|0x12| 01271c10 01271d01 01271ea6 01271f90 |
|0x14| 01471c20 01471d01 01471e17 01471f90 01470c02 |
|0x15| 01571c30 01571d10 01571e21 01571f03 01570c02 |
|0x1a| 01a71c40 01a71d10 01a71e81 01a71f03 |

## Disable the Pin Complex nodes not used to avoid any issues from them

Verb data for disabled node: F0 00 00 40

|Node| Verbs |
|----|-------|
|0x13| 01371cf0 01371d00 01371e00 01371f40 |
|0x16| 01671cf0 01671d00 01671e00 01671f40 |
|0x18| 01871cf0 01871d00 01871e00 01871f40 |
|0x19| 01971cf0 01971d00 01971e00 01971f40 |
|0x1b| 01b71cf0 01b71d00 01b71e00 01b71f40 |
|0x1d| 01d71cf0 01d71d00 01d71e00 01d71f40 |
|0x1e| 01e71cf0 01e71d00 01e71e00 01e71f40 |

Final codec verb commands in one line with disabled nodes are:

```
01271c10 01271d01 01271ea6 01271f90 01371cf0 01371d00 01371e00 01371f40 01471c20 01471d01 01471e17 01471f90 01571c30 01571d10 01571e21 01571f03 01671cf0 01671d00 01671e00 01671f40 01871cf0 01871d00 01871e00 01871f40 01971cf0 01971d00 01971e00 01971f40 01a71c40 01a71d10 01a71e81 01a71f03 01b71cf0 01b71d00 01b71e00 01b71f40 01d71cf0 01d71d00 01d71e00 01d71f40 01e71cf0 01e71d00 01e71e00 01e71f40 01470c02 01570c02
```

Pathmaps
========

## Output device PathMap calculation

For output Devices, the PathMap follows this pattern:

A Pin Complex node -> an Audio Mixer node (optional) -> finally an Audio output node.

```
Pin Complex -> Audio Mixer -> Audio Output
(or)
Pin Complex -> Audio Output
```

Output device 'Speaker' is located at the Pin Complex Node 0x14. Take a look at the Connection in the Node 0x14.
We have two connections to nodes 0x0c and 0x0d, but the connection 0x0c has an asterisk symbol(\*)
indicating that this node 0x14 has a real connection to the node 0x0c.

```
Speaker: 0x14 -> 0x0c -> 0x02, Decimal 20 -> 12 -> 2
Headphone: 0x15 -> 0x0d -> 0x03, Decimal 21 -> 13 -> 3
```

## Input device PathMaps calculation

For Input Devices, the PathMap follow this pattern:

A Pin Complex node -> an Audio Mixer/Selector node (optional) -> finally an Audio input node.

```
Pin Complex -> Audio Selector/Mixer -> Audio Input
(or)
Pin Complex -> Audio Input
```

```
Internal Mic: 0x12->0x22->0x09, Decimal 18 -> 34 -> 9
External Mic: 0x1a->0x22->0x09, Decimal 26 -> 34 -> 9
0x18->0x23->0x08, Decimal 24 -> 35 -> 8
```

Layout Values
=============

MuteGPIO: VREF + 0100 +NodeID -> Decimal; VREF_HIZ -> 0.


Custom commands of CodecCommander
=================================

1. [Pin Control Widget](http://www.tonymacx86.com/yosemite-laptop-support/159031-any-fix-garbled-distorted-headphone-issue-2.html)

  Nodes: 0x12, 0x14, 0x15, 0x1a; Pin-ctls: 0x20, 0x40, 0xc0, 0x24.

  Calculate: ./hda-verb <Node> SET_PIN_WIDGET_CONTROL <Pin-ctl>

  Result: `0x01270720`, `0x01470740`, `0x015707c0`(needed), `0x01a70724`(needed).

2. Unsolicited Response control, referance **high-definition-audio-specification.pdf**, 7.3.3.14

  Nodes: 0x15

  Result: `0x1570883`
