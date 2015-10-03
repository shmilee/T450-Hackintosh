/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20150717-64
 * Copyright (c) 2000 - 2015 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of ./ACPI/DSDT, Mon Aug 31 13:38:44 2015
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x00010F99 (69529)
 *     Revision         0x01 **** 32-bit table (V1), no 64-bit math support
 *     Checksum         0xBB
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "TP-JB   "
 *     OEM Revision     0x00001150 (4432)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("./ACPI/DSDT.aml", "DSDT", 1, "LENOVO", "TP-JB   ", 0x00001150)
{
    /*
     * iASL Warning: There were 7 external control methods found during
     * disassembly, but only 6 were resolved (1 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * If necessary, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_SB_.PCI0.LPC_.TPM_.CMOR, MethodObj)    // Warning: Unresolved method, guessing 0 arguments

    External (_PR_.CFGD, FieldUnitObj)
    External (_PR_.CLVL, FieldUnitObj)
    External (_PR_.CPU0._PSS, PkgObj)
    External (_SB_.PCCD, UnknownObj)
    External (_SB_.PCCD.PENB, IntObj)
    External (_SB_.PCI0.LPC_.TPM_._STA, UnknownObj)
    External (_SB_.PCI0.LPC_.TPM_.BUF1, UnknownObj)
    External (_SB_.PCI0.SAT1.PRIM.GTME, UnknownObj)
    External (_SB_.PCI0.SAT1.PRT1, UnknownObj)
    External (_SB_.PCI0.SAT1.SCND.GTME, UnknownObj)
    External (_SB_.PCI0.SAT1.SCND.MSTR, UnknownObj)
    External (_SB_.PCI0.VID_.AINT, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.VID_.CADL, FieldUnitObj)
    External (_SB_.PCI0.VID_.CAL2, FieldUnitObj)
    External (_SB_.PCI0.VID_.CAL3, FieldUnitObj)
    External (_SB_.PCI0.VID_.CAL4, FieldUnitObj)
    External (_SB_.PCI0.VID_.CAL5, FieldUnitObj)
    External (_SB_.PCI0.VID_.CAL6, FieldUnitObj)
    External (_SB_.PCI0.VID_.CAL7, FieldUnitObj)
    External (_SB_.PCI0.VID_.CAL8, FieldUnitObj)
    External (_SB_.PCI0.VID_.CLID, FieldUnitObj)
    External (_SB_.PCI0.VID_.CPDL, FieldUnitObj)
    External (_SB_.PCI0.VID_.CPL2, FieldUnitObj)
    External (_SB_.PCI0.VID_.CPL3, FieldUnitObj)
    External (_SB_.PCI0.VID_.CPL4, FieldUnitObj)
    External (_SB_.PCI0.VID_.CPL5, FieldUnitObj)
    External (_SB_.PCI0.VID_.CPL6, FieldUnitObj)
    External (_SB_.PCI0.VID_.CPL7, FieldUnitObj)
    External (_SB_.PCI0.VID_.CPL8, FieldUnitObj)
    External (_SB_.PCI0.VID_.DDL2, FieldUnitObj)
    External (_SB_.PCI0.VID_.DDL3, FieldUnitObj)
    External (_SB_.PCI0.VID_.DDL4, FieldUnitObj)
    External (_SB_.PCI0.VID_.DDL5, FieldUnitObj)
    External (_SB_.PCI0.VID_.DDL6, FieldUnitObj)
    External (_SB_.PCI0.VID_.DDL7, FieldUnitObj)
    External (_SB_.PCI0.VID_.DDL8, FieldUnitObj)
    External (_SB_.PCI0.VID_.DIDL, FieldUnitObj)
    External (_SB_.PCI0.VID_.DRDY, FieldUnitObj)
    External (_SB_.PCI0.VID_.GDCK, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.VID_.GHDS, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.VID_.GLIS, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.VID_.GNOT, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.VID_.GSCI, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.VID_.GSSE, FieldUnitObj)
    External (_SB_.PCI0.VID_.NADL, FieldUnitObj)
    External (_SB_.PCI0.VID_.NDL2, FieldUnitObj)
    External (_SB_.PCI0.VID_.NDL3, FieldUnitObj)
    External (_SB_.PCI0.VID_.NDL4, FieldUnitObj)
    External (_SB_.PCI0.VID_.NDL5, FieldUnitObj)
    External (_SB_.PCI0.VID_.NDL6, FieldUnitObj)
    External (_SB_.PCI0.VID_.NDL7, FieldUnitObj)
    External (_SB_.PCI0.VID_.NDL8, FieldUnitObj)
    External (NDID, FieldUnitObj)
    External (PDC0, IntObj)
    External (PDC1, IntObj)
    External (PDC2, IntObj)
    External (PDC3, IntObj)
    External (PDC4, IntObj)
    External (PDC5, IntObj)
    External (PDC6, IntObj)
    External (PDC7, IntObj)

    Scope (\_PR)
    {
        Processor (CPU0, 0x01, 0x00001810, 0x06) {}
        Processor (CPU1, 0x02, 0x00001810, 0x06) {}
        Processor (CPU2, 0x03, 0x00001810, 0x06) {}
        Processor (CPU3, 0x04, 0x00001810, 0x06) {}
        Processor (CPU4, 0x05, 0x00001810, 0x06) {}
        Processor (CPU5, 0x06, 0x00001810, 0x06) {}
        Processor (CPU6, 0x07, 0x00001810, 0x06) {}
        Processor (CPU7, 0x08, 0x00001810, 0x06) {}
    }

    Scope (\)
    {
        Method (PNTF, 1, NotSerialized)
        {
            
            // nothing

        }
    }

    OperationRegion (MNVS, SystemMemory, 0x9CD7D018, 0x1000)
    Field (MNVS, DWordAcc, NoLock, Preserve)
    {
        Offset (0xD00), 
        GAPA,   32, 
        GAPL,   32, 
        DCKI,   32, 
        DCKS,   32, 
        VCDL,   1, 
        VCDC,   1, 
        VCDT,   1, 
        VCDD,   1, 
            ,   1, 
        VCSS,   1, 
        VCDB,   1, 
        VCIN,   1, 
        VVPO,   8, 
        BRTN,   8, 
        BRLV,   8, 
        CDFL,   8, 
        CDAH,   8, 
        PMOD,   2, 
        PDIR,   1, 
        PDMA,   1, 
        Offset (0xD17), 
        LFDC,   1, 
        Offset (0xD18), 
        C2NA,   1, 
        C3NA,   1, 
        C4NA,   1, 
        C6NA,   1, 
        C7NA,   1, 
        Offset (0xD19), 
        Offset (0xD1A), 
            ,   2, 
            ,   1, 
        NHPS,   1, 
        NPME,   1, 
        Offset (0xD1B), 
        UOPT,   8, 
        BTID,   32, 
        DPP0,   1, 
        DPP1,   1, 
        DPP2,   1, 
        DPP3,   1, 
        DPP4,   1, 
        DPP5,   1, 
        Offset (0xD21), 
        Offset (0xD22), 
        TCRT,   16, 
        TPSV,   16, 
        TTC1,   16, 
        TTC2,   16, 
        TTSP,   16, 
        SRAH,   8, 
        SRHE,   8, 
        SRE1,   8, 
        SRE2,   8, 
        SRE3,   8, 
        SRE4,   8, 
        SRE5,   8, 
        SRE6,   8, 
        SRU1,   8, 
        SRU2,   8, 
        SRU3,   8, 
        SRU7,   8, 
        SRU4,   8, 
        SRU5,   8, 
        SRU8,   8, 
        SRPB,   8, 
        SRLP,   8, 
        SRSA,   8, 
        SRSM,   8, 
        CWAC,   1, 
        CWAS,   1, 
        CWUE,   1, 
        CWUS,   1, 
        Offset (0xD40), 
        CWAP,   16, 
        CWAT,   16, 
        DBGC,   1, 
        Offset (0xD45), 
        FS1L,   16, 
        FS1M,   16, 
        FS1H,   16, 
        FS2L,   16, 
        FS2M,   16, 
        FS2H,   16, 
        FS3L,   16, 
        FS3M,   16, 
        FS3H,   16, 
        TATC,   1, 
            ,   6, 
        TATL,   1, 
        TATW,   8, 
        TNFT,   4, 
        TNTT,   4, 
        TDFA,   4, 
        TDTA,   4, 
        TDFD,   4, 
        TDTD,   4, 
        TCFA,   4, 
        TCTA,   4, 
        TCFD,   4, 
        TCTD,   4, 
        TSFT,   4, 
        TSTT,   4, 
        TIT0,   8, 
        TCR0,   16, 
        TPS0,   16, 
        TIT1,   8, 
        TCR1,   16, 
        TPS1,   16, 
        TIT2,   8, 
        TCR2,   16, 
        TPS2,   16, 
        TIF0,   8, 
        TIF1,   8, 
        TIF2,   8, 
        Offset (0xD78), 
        BTHI,   1, 
        Offset (0xD79), 
        HDIR,   1, 
        HDEH,   1, 
        HDSP,   1, 
        HDPP,   1, 
        HDUB,   1, 
        HDMC,   1, 
        NFCF,   1, 
        Offset (0xD7A), 
        TPME,   8, 
        BIDE,   4, 
        IDET,   4, 
            ,   1, 
        DTSE,   1, 
        Offset (0xD7D), 
        DTS0,   8, 
        DTS1,   8, 
        DT00,   1, 
        DT01,   1, 
        DT02,   1, 
        DT03,   1, 
        Offset (0xD80), 
        LIDB,   1, 
        C4WR,   1, 
        C4AC,   1, 
        ODDX,   1, 
        CMPR,   1, 
        ILNF,   1, 
        PLUX,   1, 
        Offset (0xD81), 
        Offset (0xD8C), 
            ,   4, 
            ,   1, 
        IDMM,   1, 
        Offset (0xD8D), 
            ,   3, 
            ,   1, 
            ,   1, 
        LIDS,   1, 
        Offset (0xD8E), 
        Offset (0xD8F), 
            ,   4, 
        Offset (0xD90), 
        TCG0,   1, 
        TCG1,   1, 
        Offset (0xD91), 
        SWGP,   8, 
        IPMS,   8, 
        IPMB,   120, 
        IPMR,   24, 
        IPMO,   24, 
        IPMA,   8, 
        VIGD,   1, 
        VDSC,   1, 
        VMSH,   1, 
            ,   1, 
        VDSP,   1, 
        Offset (0xDAA), 
        Offset (0xDAD), 
        ASFT,   8, 
        PL1L,   8, 
        PL1M,   8, 
        CHKC,   32, 
        CHKE,   32, 
        ATRB,   32, 
        Offset (0xDBD), 
        PPCR,   8, 
        TPCR,   5, 
        Offset (0xDBF), 
        Offset (0xDCE), 
        CTPR,   8, 
        PPCA,   8, 
        TPCA,   5, 
        Offset (0xDD1), 
        BFWB,   296, 
        OSPX,   1, 
        OSC4,   1, 
        CPPX,   1, 
        Offset (0xDF7), 
        SPEN,   1, 
        SCRM,   1, 
            ,   1, 
        ETAU,   1, 
        IHBC,   1, 
        APMD,   1, 
        APMF,   1, 
        Offset (0xDF8), 
        FTPS,   8, 
        HIST,   8, 
        LPST,   8, 
        LWST,   8, 
        Offset (0xDFF), 
        MTAU,   8, 
        Offset (0xE20), 
        HPET,   32, 
        PKLI,   16, 
        VLCX,   16, 
        VNIT,   8, 
        VBD0,   8, 
        VBDT,   128, 
        VBPL,   16, 
        VBPH,   16, 
        VBML,   8, 
        VBMH,   8, 
        VEDI,   1024, 
        PDCI,   16, 
        ISCG,   32, 
        ISSP,   1, 
        ISWK,   2, 
        ISFS,   3, 
        Offset (0xEC7), 
        SHA1,   160, 
        FFDT,   1, 
        FFCL,   1, 
        Offset (0xEDC), 
        LWCP,   1, 
        LWEN,   1, 
        IOCP,   1, 
        IOEN,   1, 
        IOST,   1, 
        Offset (0xEDD), 
        USBR,   1, 
        Offset (0xEDE), 
        Offset (0xEDF), 
        Offset (0xEE1), 
        BT2T,   1, 
        Offset (0xEE2), 
        TPPP,   8, 
        TPPC,   8, 
        CTPC,   8, 
        FNWK,   8, 
        Offset (0xEE7), 
        XHCC,   8, 
        PJCD,   8, 
        WLCC,   16, 
        GCFI,   8
    }

    Field (MNVS, ByteAcc, NoLock, Preserve)
    {
        Offset (0xB00), 
        WITM,   8, 
        WSEL,   8, 
        WLS0,   8, 
        WLS1,   8, 
        WLS2,   8, 
        WLS3,   8, 
        WLS4,   8, 
        WLS5,   8, 
        WLS6,   8, 
        WLS7,   8, 
        WLS8,   8, 
        WLS9,   8, 
        WLSA,   8, 
        WLSB,   8, 
        WLSC,   8, 
        WLSD,   8, 
        WENC,   8, 
        WKBD,   8, 
        WPTY,   8, 
        WPAS,   1032, 
        WPNW,   1032, 
        WSPM,   8, 
        WSPS,   8, 
        WSMN,   8, 
        WSMX,   8, 
        WSEN,   8, 
        WSKB,   8, 
        WASB,   8, 
        WASI,   16, 
        WASD,   8, 
        WASS,   32
    }

    Field (MNVS, ByteAcc, NoLock, Preserve)
    {
        Offset (0xA00), 
        DBGS,   1024
    }

    OperationRegion (GNVS, SystemMemory, 0x9CD69C18, 0x036F)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16, 
        SMIF,   8, 
        PRM0,   8, 
        PRM1,   8, 
        P62D,   32, 
        Offset (0x0F), 
        PWRS,   8, 
        Offset (0x1E), 
        Offset (0x25), 
        REVN,   8, 
        IFFS,   8, 
        Offset (0x28), 
        APIC,   8, 
        TCNT,   8, 
        PCP0,   8, 
        PCP1,   8, 
        PPCM,   8, 
        PPMF,   32, 
        C67L,   8, 
        Offset (0x44), 
        TL2F,   32, 
        MORD,   8, 
        TCGP,   8, 
        PPRP,   32, 
        PPRQ,   8, 
        LPPR,   8, 
        GTF0,   56, 
        GTF2,   56, 
        IDEM,   8, 
        GTF1,   56, 
        BID,    16, 
        PLID,   8, 
        ECTG,   8, 
        SDPO,   8, 
        SKID,   8, 
        Offset (0x70), 
        OSCC,   8, 
        NEXP,   8, 
        SBV1,   8, 
        SBV2,   8, 
        Offset (0x7A), 
        DSEN,   8, 
        ECON,   8, 
        Offset (0x7D), 
        CTYP,   8, 
        L01C,   8, 
        VFN0,   8, 
        VFN1,   8, 
        VFN2,   8, 
        VFN3,   8, 
        VFN4,   8, 
        VFN5,   8, 
        VFN6,   8, 
        VFN7,   8, 
        VFN8,   8, 
        VFN9,   8, 
        ISCT,   8, 
        SLDR,   32, 
        WAKR,   8, 
        ATMC,   8, 
        PTMC,   8, 
        ATRA,   8, 
        PTRA,   8, 
        PNHM,   32, 
        TBAB,   32, 
        TBAH,   32, 
        RTIP,   8, 
        TSOD,   8, 
        ATPC,   8, 
        PTPC,   8, 
        PFLV,   8, 
        BREV,   8, 
        PDTS,   8, 
        PKGA,   8, 
        PAMT,   8, 
        AC0F,   8, 
        AC1F,   8, 
        DTS3,   8, 
        DTS4,   8, 
        Offset (0xB0), 
        LTR1,   8, 
        LTR2,   8, 
        LTR3,   8, 
        LTR4,   8, 
        LTR5,   8, 
        LTR6,   8, 
        LTR7,   8, 
        LTR8,   8, 
        OBF1,   8, 
        OBF2,   8, 
        OBF3,   8, 
        OBF4,   8, 
        OBF5,   8, 
        OBF6,   8, 
        OBF7,   8, 
        OBF8,   8, 
        XHCI,   8, 
        XTUB,   32, 
        XTUS,   32, 
        XMPB,   32, 
        DDRF,   8, 
        RTD3,   8, 
        PEP0,   8, 
        PEP3,   8, 
        DPTF,   8, 
        SADE,   8, 
        SACR,   8, 
        SAHT,   8, 
        PCHD,   8, 
        PCHC,   8, 
        PCHH,   8, 
        Offset (0xDB), 
        ECEU,   8, 
        TGFG,   16, 
        MEMD,   8, 
        MEMC,   8, 
        MEMH,   8, 
        FND1,   8, 
        FND2,   8, 
        AMBD,   8, 
        AMAT,   8, 
        AMPT,   8, 
        AMCT,   8, 
        AMHT,   8, 
        SKDE,   8, 
        SKAT,   8, 
        SKPT,   8, 
        SKCT,   8, 
        SKHT,   8, 
        EFDE,   8, 
        EFAT,   8, 
        EFPT,   8, 
        EFCT,   8, 
        EFHT,   8, 
        VRDE,   8, 
        VRAT,   8, 
        VRPT,   8, 
        VRCT,   8, 
        VRHT,   8, 
        DPAP,   8, 
        DPPP,   8, 
        DPCP,   8, 
        DCMP,   8, 
        TRTV,   8, 
        LPOE,   8, 
        LPOP,   8, 
        LPOS,   8, 
        LPOW,   8, 
        LPER,   8, 
        PPSZ,   32, 
        DISE,   8, 
        BGMA,   64, 
        BGMS,   8, 
        BGIA,   16, 
        ICNF,   8, 
        DSP0,   32, 
        DSP1,   32, 
        NFCE,   8, 
        CODS,   8, 
        SNHE,   8, 
        S0ID,   8, 
        CTDB,   8, 
        DKSM,   8, 
        SIO1,   8, 
        SIO2,   8, 
        SPBA,   16, 
        UPXD,   16, 
        Offset (0x1FF), 
        ULCK,   8, 
        Offset (0x207), 
        PWRE,   8, 
        PWRP,   8, 
        XHPR,   8, 
        SDS0,   8, 
        SDS1,   16, 
        SDS2,   8, 
        SDS3,   8, 
        SDS4,   8, 
        SDS5,   8, 
        Offset (0x212), 
        RIC0,   8, 
        PEPY,   8, 
        DVS0,   8, 
        DVS1,   8, 
        DVS2,   8, 
        DVS3,   8, 
        GBSX,   8, 
        IUBE,   8, 
        IUCE,   8, 
        IUDE,   8, 
        ECNO,   8, 
        AUDD,   16, 
        DSPD,   16, 
        IC0D,   16, 
        IC1D,   16, 
        IC1S,   16, 
        VRRD,   16, 
        PSCP,   8, 
        RWAG,   8, 
        I20D,   16, 
        I21D,   16, 
        Offset (0x231), 
        RCG0,   8, 
        ECDB,   8, 
        P2ME,   8, 
        SSH0,   16, 
        SSL0,   16, 
        SSD0,   16, 
        FMH0,   16, 
        FML0,   16, 
        FMD0,   16, 
        FPH0,   16, 
        FPL0,   16, 
        FPD0,   16, 
        SSH1,   16, 
        SSL1,   16, 
        SSD1,   16, 
        FMH1,   16, 
        FML1,   16, 
        FMD1,   16, 
        FPH1,   16, 
        FPL1,   16, 
        FPD1,   16, 
        M0C0,   16, 
        M1C0,   16, 
        M2C0,   16, 
        M0C1,   16, 
        M1C1,   16, 
        M2C1,   16, 
        M0C2,   16, 
        M1C2,   16, 
        M0C3,   16, 
        M1C3,   16, 
        M0C4,   16, 
        M1C4,   16, 
        M0C5,   16, 
        M1C5,   16, 
        TBSF,   8, 
        GIRQ,   32, 
        DMTP,   8, 
        DMTD,   8, 
        DMSH,   8, 
        LANP,   8, 
        Offset (0x27E), 
        SHSB,   8, 
        PLCS,   8, 
        PLVL,   16, 
        GN1E,   8, 
        G1AT,   8, 
        G1PT,   8, 
        G1CT,   8, 
        G1HT,   8, 
        GN2E,   8, 
        G2AT,   8, 
        G2PT,   8, 
        G2CT,   8, 
        G2HT,   8, 
        WWSD,   8, 
        CVSD,   8, 
        SSDD,   8, 
        INLD,   8, 
        IFAT,   8, 
        IFPT,   8, 
        IFCT,   8, 
        IFHT,   8, 
        ANCS,   8, 
        SHTP,   8, 
        BCV4,   8, 
        WTVX,   8, 
        WITX,   8, 
        APFU,   8, 
        SOHP,   8, 
        NOHP,   8, 
        TBSE,   8, 
        WKFN,   8, 
        PEPC,   16, 
        VRSD,   16, 
        PB1E,   8, 
        GNID,   8, 
        MPLT,   16, 
        GR13,   8, 
        CHGE,   8, 
        Offset (0x2B2), 
        SAC3,   8, 
        PCH3,   8, 
        MEM3,   8, 
        AMC3,   8, 
        SKC3,   8, 
        EFC3,   8, 
        VRC3,   8, 
        G1C3,   8, 
        G2C3,   8, 
        IFC3,   8, 
        Offset (0x2BF), 
        SPST,   8, 
        GN3E,   8, 
        G3AT,   8, 
        G3PT,   8, 
        G3CT,   8, 
        G3HT,   8, 
        GN4E,   8, 
        G4AT,   8, 
        G4PT,   8, 
        G4CT,   8, 
        G4HT,   8, 
        GN5E,   8, 
        G5AT,   8, 
        G5PT,   8, 
        G5CT,   8, 
        G5HT,   8, 
        GN6E,   8, 
        G6AT,   8, 
        G6PT,   8, 
        G6CT,   8, 
        G6HT,   8, 
        ECLP,   8, 
        Offset (0x2D6), 
        G3C3,   8, 
        G4C3,   8, 
        G5C3,   8, 
        G6C3,   8, 
        S1DE,   8, 
        S1AT,   8, 
        S1PT,   8, 
        S1CT,   8, 
        S1HT,   8, 
        S2DE,   8, 
        S2AT,   8, 
        S2PT,   8, 
        S2CT,   8, 
        S2HT,   8, 
        S3DE,   8, 
        S3AT,   8, 
        S3PT,   8, 
        S3CT,   8, 
        S3HT,   8, 
        S4DE,   8, 
        S4AT,   8, 
        S4PT,   8, 
        S4CT,   8, 
        S4HT,   8, 
        S5DE,   8, 
        S5AT,   8, 
        S5PT,   8, 
        S5CT,   8, 
        S5HT,   8, 
        S6DE,   8, 
        S6AT,   8, 
        S6PT,   8, 
        S6CT,   8, 
        S6HT,   8, 
        S7DE,   8, 
        S7AT,   8, 
        S7PT,   8, 
        S7CT,   8, 
        S7HT,   8, 
        Offset (0x303), 
        S1S3,   8, 
        S2S3,   8, 
        S3S3,   8, 
        S4S3,   8, 
        S5S3,   8, 
        S6S3,   8, 
        S7S3,   8, 
        DACT,   8, 
        MPL1,   16, 
        MPL2,   16, 
        SATS,   16, 
        PCTS,   16, 
        SKTS,   16, 
        PSME,   8, 
        PDT1,   8, 
        PLM1,   16, 
        PTW1,   16, 
        PDT2,   8, 
        PLM2,   16, 
        PTW2,   16, 
        DDT1,   8, 
        DDP1,   8, 
        DLI1,   16, 
        DPL1,   16, 
        DTW1,   16, 
        DMI1,   16, 
        DMA1,   16, 
        DMT1,   16, 
        DDT2,   8, 
        DDP2,   8, 
        DLI2,   16, 
        DPL2,   16, 
        DTW2,   16, 
        DMI2,   16, 
        DMA2,   16, 
        DMT2,   16, 
        Offset (0x33E), 
        TBTS,   8, 
        ECGP,   8, 
        IVDF,   8, 
        TPMP,   8, 
        WIFD,   8, 
        WFAT,   8, 
        WFPT,   8, 
        WFCT,   8, 
        WFC3,   8, 
        WFHT,   8, 
        WAND,   8, 
        WWAT,   8, 
        WWPT,   8, 
        WWCT,   8, 
        WWC3,   8, 
        WWHT,   8, 
        WGID,   8, 
        WGAT,   8, 
        WGPT,   8, 
        WGCT,   8, 
        WGC3,   8, 
        WGHT,   8, 
        STGE,   8, 
        WDM1,   8, 
        CID1,   16, 
        WDM2,   8, 
        CID2,   16, 
        WIFE,   8, 
        DOM1,   8, 
        LIM1,   16, 
        TIM1,   16, 
        DOM2,   8, 
        LIM2,   16, 
        TIM2,   16, 
        DOM3,   8, 
        LIM3,   16, 
        TIM3,   16, 
        TRD0,   8, 
        TRL0,   8, 
        TRD1,   8, 
        TRL1,   8
    }

    Name (PNVB, 0x9CD6BD98)
    Name (PNVL, 0x00E4)
    OperationRegion (PNVA, SystemMemory, PNVB, PNVL)
    Field (PNVA, AnyAcc, Lock, Preserve)
    {
        RCRV,   32, 
        PCHS,   16, 
        PCHG,   16, 
        RPA0,   32, 
        RPA1,   32, 
        RPA2,   32, 
        RPA3,   32, 
        RPA4,   32, 
        RPA5,   32, 
        RPA6,   32, 
        RPA7,   32, 
        SRMB,   32, 
        ADB0,   32, 
        ADB1,   32, 
        ADI0,   32, 
        GPMN,   32, 
        GPMX,   32, 
        PML1,   16, 
        PML2,   16, 
        PML3,   16, 
        PML4,   16, 
        PML5,   16, 
        PML6,   16, 
        PML7,   16, 
        PML8,   16, 
        PNL1,   16, 
        PNL2,   16, 
        PNL3,   16, 
        PNL4,   16, 
        PNL5,   16, 
        PNL6,   16, 
        PNL7,   16, 
        PNL8,   16, 
        U0C0,   32, 
        U1C0,   32, 
        ADFM,   32, 
        ADBT,   8, 
        XHPC,   8, 
        XRPC,   8, 
        XSPC,   8, 
        XSPA,   8, 
        SMD0,   8, 
        SMD1,   8, 
        SMD2,   8, 
        SMD3,   8, 
        SMD4,   8, 
        SMD5,   8, 
        SMD6,   8, 
        SMD7,   8, 
        SIR0,   8, 
        SIR1,   8, 
        SIR2,   8, 
        SIR3,   8, 
        SIR4,   8, 
        SIR5,   8, 
        SIR6,   8, 
        SIR7,   8, 
        SB00,   32, 
        SB01,   32, 
        SB02,   32, 
        SB03,   32, 
        SB04,   32, 
        SB05,   32, 
        SB06,   32, 
        SB07,   32, 
        SB10,   32, 
        SB11,   32, 
        SB12,   32, 
        SB13,   32, 
        SB14,   32, 
        SB15,   32, 
        SB16,   32, 
        SB17,   32, 
        SMGP,   8, 
        GBEP,   8, 
        PMSI,   8, 
        PMCP,   8, 
        PCLP,   8, 
        PL1P,   16, 
        PL1A,   32, 
        PL1B,   8, 
        PEPL,   16, 
        PRPL,   16, 
        PCIT,   8, 
        PLTP,   16, 
        PLTD,   32, 
        PED2,   16, 
        PRDC,   16, 
        PED1,   16, 
        PCHP,   16, 
        XWMB,   32
    }

    Scope (\_SB)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (CondRefOf (\_OSI, Local0))
            {
                If (\_OSI ("Windows 2001"))
                {
                    Store (0x01, \WNTF)
                    Store (0x01, \WXPF)
                    Store (0x00, \WSPV)
                    Store (0x07D1, OSYS) /* \OSYS */
                }

                If (\_OSI ("Windows 2001 SP1"))
                {
                    Store (0x01, \WSPV)
                    Store (0x07D1, OSYS) /* \OSYS */
                }

                If (\_OSI ("Windows 2001 SP2"))
                {
                    Store (0x02, \WSPV)
                    Store (0x07D2, OSYS) /* \OSYS */
                }

                If (\_OSI ("Windows 2006"))
                {
                    Store (0x01, \WVIS)
                    Store (0x07D6, OSYS) /* \OSYS */
                }

                If (\_OSI ("Windows 2009"))
                {
                    Store (0x01, \WIN7)
                    Store (0x07D9, OSYS) /* \OSYS */
                }

                If(LOr(_OSI("Darwin"),_OSI("Windows 2012")))
                {
                    Store (0x01, \WIN8)
                    Store (0x07DC, OSYS) /* \OSYS */
                }

                If (\_OSI ("Windows 2013"))
                {
                    Store (0x01, \WIN8)
                    Store (0x07DD, OSYS) /* \OSYS */
                }

                If (\_OSI ("Windows 2015"))
                {
                    Store (0x01, \WIN8)
                    Store (0x07DF, OSYS) /* \OSYS */
                }

                If (\_OSI ("Linux"))
                {
                    Store (0x01, \LNUX)
                    Store (0x03E8, OSYS) /* \OSYS */
                }

                If (\_OSI ("FreeBSD"))
                {
                    Store (0x01, \LNUX)
                    Store (0x03E8, OSYS) /* \OSYS */
                }
            }
            Else
            {
                If (LEqual (\SCMP (\_OS, "Microsoft Windows NT"), Zero))
                {
                    Store (0x01, \WNTF)
                }
            }

            If (LGreaterEqual (\_REV, 0x02))
            {
                Store (0x01, \H8DR)
            }

            Store (0x01, \OSIF)
            Store (\_SB.PCI0.LPC.EC.AC._PSR (), \PWRS)
            \_SB.PCI0.LPC.MOU.MHID ()
            If (\LNUX)
            {
                \_SB.PCI0.LPC.EC.SAUM (0x02)
                \UCMS (0x1C)
            }

            Store (\SRAH, \_SB.PCI0.RID)
            If (VIGD)
            {
                Store (\SRHE, \_SB.PCI0.VID.RID)
            }
            Else
            {
                Store (\SRHE, \_SB.PCI0.PEG.RID)
            }

            Store (\SRE1, \_SB.PCI0.EXP1.RID)
            Store (\SRE2, \_SB.PCI0.EXP2.RID)
            Store (\SRE3, \_SB.PCI0.EXP3.RID)
            Store (\SRU7, \_SB.PCI0.EHC1.RID)
            Store (\SRLP, \_SB.PCI0.LPC.RID)
            Store (\SRSA, \_SB.PCI0.SAT1.RID)
            Store (\SRSM, \_SB.PCI0.SMBU.RID)
            \UCMS (0x1D)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            If (LEqual (Arg0, ToUUID ("0811b06e-4a27-44f9-8d60-3cbbc22e7b48") /* Platform-wide Capabilities */))
            {
                If (LEqual (Arg1, One))
                {
                    If (And (CAP0, 0x04))
                    {
                        If (LNot (VMSH))
                        {
                            If (LEqual (RTD3, 0x00))
                            {
                                And (CAP0, 0x3B, CAP0) /* \_SB_._OSC.CAP0 */
                                Or (STS0, 0x10, STS0) /* \_SB_._OSC.STS0 */
                            }
                        }
                    }

                    If (And (CAP0, 0x20))
                    {
                        If (CondRefOf (\_SB.PCCD.PENB))
                        {
                            If (LEqual (\_SB.PCCD.PENB, 0x00))
                            {
                                And (CAP0, 0x1F, CAP0) /* \_SB_._OSC.CAP0 */
                                Or (STS0, 0x10, STS0) /* \_SB_._OSC.STS0 */
                            }

                            If (LEqual (\_SB.PCCD.PENB, 0x01))
                            {
                                Store (0x01, \CPPX)
                            }
                        }
                        Else
                        {
                            And (CAP0, 0x1F, CAP0) /* \_SB_._OSC.CAP0 */
                            Or (STS0, 0x10, STS0) /* \_SB_._OSC.STS0 */
                        }
                    }
                }
                Else
                {
                    And (STS0, 0xFFFFFF00, STS0) /* \_SB_._OSC.STS0 */
                    Or (STS0, 0x0A, STS0) /* \_SB_._OSC.STS0 */
                }
            }
            Else
            {
                And (STS0, 0xFFFFFF00, STS0) /* \_SB_._OSC.STS0 */
                Or (STS0, 0x06, STS0) /* \_SB_._OSC.STS0 */
            }

            Return (Arg3)
        }

        Device (LNKA)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x01)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LNot (VPIR (\_SB.PCI0.LPC.PIRA)))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (\_SB.PCI0.LPC.PIRA, 0x80, \_SB.PCI0.LPC.PIRA)
            }

            Name (BUFA, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y00)
                    {}
            })
            CreateWordField (BUFA, \_SB.LNKA._Y00._INT, IRA1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (\_SB.PCI0.LPC.PIRA, 0x8F, Local0)
                If (VPIR (Local0))
                {
                    ShiftLeft (0x01, Local0, IRA1) /* \_SB_.LNKA.IRA1 */
                }
                Else
                {
                    Store (0x00, IRA1) /* \_SB_.LNKA.IRA1 */
                }

                Return (BUFA) /* \_SB_.LNKA.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRA2)
                FindSetRightBit (IRA2, Local0)
                And (\_SB.PCI0.LPC.PIRA, 0x70, Local1)
                Or (Local1, Decrement (Local0), Local1)
                Store (Local1, \_SB.PCI0.LPC.PIRA)
            }
        }

        Device (LNKB)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LNot (VPIR (\_SB.PCI0.LPC.PIRB)))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (\_SB.PCI0.LPC.PIRB, 0x80, \_SB.PCI0.LPC.PIRB)
            }

            Name (BUFB, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y01)
                    {}
            })
            CreateWordField (BUFB, \_SB.LNKB._Y01._INT, IRB1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (\_SB.PCI0.LPC.PIRB, 0x8F, Local0)
                If (VPIR (Local0))
                {
                    ShiftLeft (0x01, Local0, IRB1) /* \_SB_.LNKB.IRB1 */
                }
                Else
                {
                    Store (0x00, IRB1) /* \_SB_.LNKB.IRB1 */
                }

                Return (BUFB) /* \_SB_.LNKB.BUFB */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRB2)
                FindSetRightBit (IRB2, Local0)
                And (\_SB.PCI0.LPC.PIRB, 0x70, Local1)
                Or (Local1, Decrement (Local0), Local1)
                Store (Local1, \_SB.PCI0.LPC.PIRB)
            }
        }

        Device (LNKC)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LNot (VPIR (\_SB.PCI0.LPC.PIRC)))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (\_SB.PCI0.LPC.PIRC, 0x80, \_SB.PCI0.LPC.PIRC)
            }

            Name (BUFC, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y02)
                    {}
            })
            CreateWordField (BUFC, \_SB.LNKC._Y02._INT, IRC1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (\_SB.PCI0.LPC.PIRC, 0x8F, Local0)
                If (VPIR (Local0))
                {
                    ShiftLeft (0x01, Local0, IRC1) /* \_SB_.LNKC.IRC1 */
                }
                Else
                {
                    Store (0x00, IRC1) /* \_SB_.LNKC.IRC1 */
                }

                Return (BUFC) /* \_SB_.LNKC.BUFC */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRC2)
                FindSetRightBit (IRC2, Local0)
                And (\_SB.PCI0.LPC.PIRC, 0x70, Local1)
                Or (Local1, Decrement (Local0), Local1)
                Store (Local1, \_SB.PCI0.LPC.PIRC)
            }
        }

        Device (LNKD)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LNot (VPIR (\_SB.PCI0.LPC.PIRD)))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (\_SB.PCI0.LPC.PIRD, 0x80, \_SB.PCI0.LPC.PIRD)
            }

            Name (BUFD, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y03)
                    {}
            })
            CreateWordField (BUFD, \_SB.LNKD._Y03._INT, IRD1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (\_SB.PCI0.LPC.PIRD, 0x8F, Local0)
                If (VPIR (Local0))
                {
                    ShiftLeft (0x01, Local0, IRD1) /* \_SB_.LNKD.IRD1 */
                }
                Else
                {
                    Store (0x00, IRD1) /* \_SB_.LNKD.IRD1 */
                }

                Return (BUFD) /* \_SB_.LNKD.BUFD */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRD2)
                FindSetRightBit (IRD2, Local0)
                And (\_SB.PCI0.LPC.PIRD, 0x70, Local1)
                Or (Local1, Decrement (Local0), Local1)
                Store (Local1, \_SB.PCI0.LPC.PIRD)
            }
        }

        Device (LNKE)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LNot (VPIR (\_SB.PCI0.LPC.PIRE)))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (\_SB.PCI0.LPC.PIRE, 0x80, \_SB.PCI0.LPC.PIRE)
            }

            Name (BUFE, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y04)
                    {}
            })
            CreateWordField (BUFE, \_SB.LNKE._Y04._INT, IRE1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (\_SB.PCI0.LPC.PIRE, 0x8F, Local0)
                If (VPIR (Local0))
                {
                    ShiftLeft (0x01, Local0, IRE1) /* \_SB_.LNKE.IRE1 */
                }
                Else
                {
                    Store (0x00, IRE1) /* \_SB_.LNKE.IRE1 */
                }

                Return (BUFE) /* \_SB_.LNKE.BUFE */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRE2)
                FindSetRightBit (IRE2, Local0)
                And (\_SB.PCI0.LPC.PIRE, 0x70, Local1)
                Or (Local1, Decrement (Local0), Local1)
                Store (Local1, \_SB.PCI0.LPC.PIRE)
            }
        }

        Device (LNKF)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x06)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LNot (VPIR (\_SB.PCI0.LPC.PIRF)))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (\_SB.PCI0.LPC.PIRF, 0x80, \_SB.PCI0.LPC.PIRF)
            }

            Name (BUFF, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y05)
                    {}
            })
            CreateWordField (BUFF, \_SB.LNKF._Y05._INT, IRF1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (\_SB.PCI0.LPC.PIRF, 0x8F, Local0)
                If (VPIR (Local0))
                {
                    ShiftLeft (0x01, Local0, IRF1) /* \_SB_.LNKF.IRF1 */
                }
                Else
                {
                    Store (0x00, IRF1) /* \_SB_.LNKF.IRF1 */
                }

                Return (BUFF) /* \_SB_.LNKF.BUFF */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRF2)
                FindSetRightBit (IRF2, Local0)
                And (\_SB.PCI0.LPC.PIRF, 0x70, Local1)
                Or (Local1, Decrement (Local0), Local1)
                Store (Local1, \_SB.PCI0.LPC.PIRF)
            }
        }

        Device (LNKG)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x07)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LNot (VPIR (\_SB.PCI0.LPC.PIRG)))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (\_SB.PCI0.LPC.PIRG, 0x80, \_SB.PCI0.LPC.PIRG)
            }

            Name (BUFG, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y06)
                    {}
            })
            CreateWordField (BUFG, \_SB.LNKG._Y06._INT, IRG1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (\_SB.PCI0.LPC.PIRG, 0x8F, Local0)
                If (VPIR (Local0))
                {
                    ShiftLeft (0x01, Local0, IRG1) /* \_SB_.LNKG.IRG1 */
                }
                Else
                {
                    Store (0x00, IRG1) /* \_SB_.LNKG.IRG1 */
                }

                Return (BUFG) /* \_SB_.LNKG.BUFG */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRG2)
                FindSetRightBit (IRG2, Local0)
                And (\_SB.PCI0.LPC.PIRG, 0x70, Local1)
                Or (Local1, Decrement (Local0), Local1)
                Store (Local1, \_SB.PCI0.LPC.PIRG)
            }
        }

        Device (LNKH)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x08)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LNot (VPIR (\_SB.PCI0.LPC.PIRH)))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                Or (\_SB.PCI0.LPC.PIRH, 0x80, \_SB.PCI0.LPC.PIRH)
            }

            Name (BUFH, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y07)
                    {}
            })
            CreateWordField (BUFH, \_SB.LNKH._Y07._INT, IRH1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (\_SB.PCI0.LPC.PIRH, 0x8F, Local0)
                If (VPIR (Local0))
                {
                    ShiftLeft (0x01, Local0, IRH1) /* \_SB_.LNKH.IRH1 */
                }
                Else
                {
                    Store (0x00, IRH1) /* \_SB_.LNKH.IRH1 */
                }

                Return (BUFH) /* \_SB_.LNKH.BUFH */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRH2)
                FindSetRightBit (IRH2, Local0)
                And (\_SB.PCI0.LPC.PIRH, 0x70, Local1)
                Or (Local1, Decrement (Local0), Local1)
                Store (Local1, \_SB.PCI0.LPC.PIRH)
            }
        }

        Method (VPIR, 1, NotSerialized)
        {
            Store (0x01, Local0)
            If (And (Arg0, 0x80))
            {
                Store (0x00, Local0)
            }
            Else
            {
                And (Arg0, 0x0F, Local1)
                If (LLess (Local1, 0x03))
                {
                    Store (0x00, Local0)
                }
                Else
                {
                    If (LOr (LEqual (Local1, 0x08), LEqual (Local1, 0x0D)))
                    {
                        Store (0x00, Local0)
                    }
                }
            }

            Return (Local0)
        }

        Device (MEM)
        {
            Name (_HID, EisaId ("PNP0C01") /* System Board */)  // _HID: Hardware ID
            Name (MEMS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x000A0000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0x000C0000,         // Address Base
                    0x00000000,         // Address Length
                    _Y08)
                Memory32Fixed (ReadOnly,
                    0x000C4000,         // Address Base
                    0x00000000,         // Address Length
                    _Y09)
                Memory32Fixed (ReadOnly,
                    0x000C8000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0A)
                Memory32Fixed (ReadOnly,
                    0x000CC000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0B)
                Memory32Fixed (ReadOnly,
                    0x000D0000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0C)
                Memory32Fixed (ReadOnly,
                    0x000D4000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0D)
                Memory32Fixed (ReadOnly,
                    0x000D8000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0E)
                Memory32Fixed (ReadOnly,
                    0x000DC000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0F)
                Memory32Fixed (ReadOnly,
                    0x000E0000,         // Address Base
                    0x00000000,         // Address Length
                    _Y10)
                Memory32Fixed (ReadOnly,
                    0x000E4000,         // Address Base
                    0x00000000,         // Address Length
                    _Y11)
                Memory32Fixed (ReadOnly,
                    0x000E8000,         // Address Base
                    0x00000000,         // Address Length
                    _Y12)
                Memory32Fixed (ReadOnly,
                    0x000EC000,         // Address Base
                    0x00000000,         // Address Length
                    _Y13)
                Memory32Fixed (ReadOnly,
                    0x000F0000,         // Address Base
                    0x00010000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x00100000,         // Address Base
                    0x01EE0000,         // Address Length
                    _Y14)
                Memory32Fixed (ReadOnly,
                    0xFEC00000,         // Address Base
                    0x00140000,         // Address Length
                    _Y15)
                Memory32Fixed (ReadOnly,
                    0xFED4C000,         // Address Base
                    0x012B4000,         // Address Length
                    _Y16)
            })
            CreateDWordField (MEMS, \_SB.MEM._Y08._LEN, MC0L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y09._LEN, MC4L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y0A._LEN, MC8L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y0B._LEN, MCCL)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y0C._LEN, MD0L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y0D._LEN, MD4L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y0E._LEN, MD8L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y0F._LEN, MDCL)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y10._LEN, ME0L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y11._LEN, ME4L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y12._LEN, ME8L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y13._LEN, MECL)  // _LEN: Length
            CreateBitField (MEMS, \_SB.MEM._Y08._RW, MC0W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y09._RW, MC4W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y0A._RW, MC8W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y0B._RW, MCCW)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y0C._RW, MD0W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y0D._RW, MD4W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y0E._RW, MD8W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y0F._RW, MDCW)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y10._RW, ME0W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y11._RW, ME4W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y12._RW, ME8W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y13._RW, MECW)  // _RW_: Read-Write Status
            CreateDWordField (MEMS, \_SB.MEM._Y14._BAS, MEB1)  // _BAS: Base Address
            CreateDWordField (MEMS, \_SB.MEM._Y14._LEN, MEL1)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y15._LEN, MEL2)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y16._LEN, MEL3)  // _LEN: Length
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                And (\_SB.PCI0.PAM1, 0x03, Local0)
                If (Local0)
                {
                    Store (0x4000, MC0L) /* \_SB_.MEM_.MC0L */
                    If (And (Local0, 0x02))
                    {
                        Store (0x01, MC0W) /* \_SB_.MEM_.MC0W */
                    }
                }

                And (\_SB.PCI0.PAM1, 0x30, Local0)
                If (Local0)
                {
                    Store (0x4000, MC4L) /* \_SB_.MEM_.MC4L */
                    If (And (Local0, 0x20))
                    {
                        Store (0x01, MC4W) /* \_SB_.MEM_.MC4W */
                    }
                }

                And (\_SB.PCI0.PAM2, 0x03, Local0)
                If (Local0)
                {
                    Store (0x4000, MC8L) /* \_SB_.MEM_.MC8L */
                    If (And (Local0, 0x02))
                    {
                        Store (0x01, MC8W) /* \_SB_.MEM_.MC8W */
                    }
                }

                And (\_SB.PCI0.PAM2, 0x30, Local0)
                If (Local0)
                {
                    Store (0x4000, MCCL) /* \_SB_.MEM_.MCCL */
                    If (And (Local0, 0x20))
                    {
                        Store (0x01, MCCW) /* \_SB_.MEM_.MCCW */
                    }
                }

                And (\_SB.PCI0.PAM3, 0x03, Local0)
                If (Local0)
                {
                    Store (0x4000, MD0L) /* \_SB_.MEM_.MD0L */
                    If (And (Local0, 0x02))
                    {
                        Store (0x01, MD0W) /* \_SB_.MEM_.MD0W */
                    }
                }

                And (\_SB.PCI0.PAM3, 0x30, Local0)
                If (Local0)
                {
                    Store (0x4000, MD4L) /* \_SB_.MEM_.MD4L */
                    If (And (Local0, 0x20))
                    {
                        Store (0x01, MD4W) /* \_SB_.MEM_.MD4W */
                    }
                }

                And (\_SB.PCI0.PAM4, 0x03, Local0)
                If (Local0)
                {
                    Store (0x4000, MD8L) /* \_SB_.MEM_.MD8L */
                    If (And (Local0, 0x02))
                    {
                        Store (0x01, MD8W) /* \_SB_.MEM_.MD8W */
                    }
                }

                And (\_SB.PCI0.PAM4, 0x30, Local0)
                If (Local0)
                {
                    Store (0x4000, MDCL) /* \_SB_.MEM_.MDCL */
                    If (And (Local0, 0x20))
                    {
                        Store (0x01, MDCW) /* \_SB_.MEM_.MDCW */
                    }
                }

                And (\_SB.PCI0.PAM5, 0x03, Local0)
                If (Local0)
                {
                    Store (0x4000, ME0L) /* \_SB_.MEM_.ME0L */
                    If (And (Local0, 0x02))
                    {
                        Store (0x01, ME0W) /* \_SB_.MEM_.ME0W */
                    }
                }

                And (\_SB.PCI0.PAM5, 0x30, Local0)
                If (Local0)
                {
                    Store (0x4000, ME4L) /* \_SB_.MEM_.ME4L */
                    If (And (Local0, 0x20))
                    {
                        Store (0x01, ME4W) /* \_SB_.MEM_.ME4W */
                    }
                }

                And (\_SB.PCI0.PAM6, 0x03, Local0)
                If (Local0)
                {
                    Store (0x4000, ME8L) /* \_SB_.MEM_.ME8L */
                    If (And (Local0, 0x02))
                    {
                        Store (0x01, ME8W) /* \_SB_.MEM_.ME8W */
                    }
                }

                And (\_SB.PCI0.PAM6, 0x30, Local0)
                If (Local0)
                {
                    Store (0x4000, MECL) /* \_SB_.MEM_.MECL */
                    If (And (Local0, 0x20))
                    {
                        Store (0x01, MECW) /* \_SB_.MEM_.MECW */
                    }
                }

                Subtract (\MEMX, MEB1, MEL1) /* \_SB_.MEM_.MEL1 */
                If (LNot (CondRefOf (\_SB.PCI0.LPC.TPM)))
                {
                    Store (0x01400000, MEL2) /* \_SB_.MEM_.MEL2 */
                    Store (0x00, MEL3) /* \_SB_.MEM_.MEL3 */
                }
                Else
                {
                    If (LNotEqual (\_SB.PCI0.LPC.TPM._STA, 0x0F))
                    {
                        Store (0x01400000, MEL2) /* \_SB_.MEM_.MEL2 */
                        Store (0x00, MEL3) /* \_SB_.MEM_.MEL3 */
                    }
                }

                Return (MEMS) /* \_SB_.MEM_.MEMS */
            }
        }

        Device (LID)
        {
            Name (_HID, EisaId ("PNP0C0D") /* Lid Device */)  // _HID: Hardware ID
            Method (_LID, 0, NotSerialized)  // _LID: Lid Status
            {
                If (LAnd (LEqual (\ILNF, 0x00), LEqual (\PLUX, 0x00)))
                {
                    If (\H8DR)
                    {
                        Return (\_SB.PCI0.LPC.EC.HPLD)
                    }
                    Else
                    {
                        If (And (\RBEC (0x46), 0x04))
                        {
                            Return (0x01)
                        }
                        Else
                        {
                            Return (0x00)
                        }
                    }
                }
                Else
                {
                    Return (0x01)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                If (\LWCP)
                {
                    Return (Package (0x02)
                    {
                        0x0D, 
                        0x04
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        0x0D, 
                        0x03
                    })
                }
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (\H8DR)
                {
                    If (Arg0)
                    {
                        Store (0x01, \_SB.PCI0.LPC.EC.HWLO)
                    }
                    Else
                    {
                        Store (0x00, \_SB.PCI0.LPC.EC.HWLO)
                    }
                }
                Else
                {
                    If (Arg0)
                    {
                        \MBEC (0x32, 0xFF, 0x04)
                    }
                    Else
                    {
                        \MBEC (0x32, 0xFB, 0x00)
                    }
                }

                If (\LWCP)
                {
                    If (Arg0)
                    {
                        Store (0x01, \LWEN)
                    }
                    Else
                    {
                        Store (0x00, \LWEN)
                    }
                }
            }
        }

        Device (SLPB)
        {
            Name (_HID, EisaId ("PNP0C0E") /* Sleep Button Device */)  // _HID: Hardware ID
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (Package (0x02)
                {
                    0x0D, 
                    0x03
                })
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (\H8DR)
                {
                    If (Arg0)
                    {
                        Store (0x01, \_SB.PCI0.LPC.EC.HWFN)
                    }
                    Else
                    {
                        Store (0x00, \_SB.PCI0.LPC.EC.HWFN)
                    }
                }
                Else
                {
                    If (Arg0)
                    {
                        \MBEC (0x32, 0xFF, 0x10)
                    }
                    Else
                    {
                        \MBEC (0x32, 0xEF, 0x00)
                    }
                }
            }
        }

        Scope (\)
        {
            Name (UPC0, Package (0x04)
            {
                0xFF, 
                0x00, 
                0x00, 
                0x00
            })
            Name (PLD0, Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                /* 0008 */  0x99, 0x11, 0x80, 0x00, 0x03, 0x00, 0x00, 0x00   /* ........ */
            })
            Name (UPC1, Package (0x04)
            {
                0xFF, 
                0x00, 
                0x00, 
                0x00
            })
            Name (PLD1, Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                /* 0008 */  0x91, 0x12, 0x00, 0x01, 0x03, 0x00, 0x00, 0x00   /* ........ */
            })
            Name (UPC2, Package (0x04)
            {
                0xFF, 
                0xFF, 
                0x00, 
                0x00
            })
            Name (PLD2, Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                /* 0008 */  0x31, 0x1C, 0x80, 0x01, 0x03, 0x00, 0x00, 0x00   /* 1....... */
            })
            Name (UPC3, Package (0x04)
            {
                0x00, 
                0x02, 
                0x00, 
                0x00
            })
            Name (PLD3, Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                /* 0008 */  0x48, 0x1D, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00   /* H....... */
            })
            Name (UPCI, Package (0x04)
            {
                0x00, 
                0xFF, 
                0x00, 
                0x00
            })
            Name (PLDI, Buffer (0x10)
            {
                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                /* 0008 */  0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* 0....... */
            })
            Name (PLDC, Buffer (0x14)
            {
                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                /* 0008 */  0x24, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* $....... */
                /* 0010 */  0xDD, 0x00, 0x95, 0x00                           /* .... */
            })
        }

        Device (PCI0)
        {
            Name (_BBN, 0x00)  // _BBN: BIOS Bus Number
            Name (_ADR, 0x00)  // _ADR: Address
            Name (RID, 0x00)
            Name (_S3D, 0x02)  // _S3D: S3 Device State
            Name (LRRT, Package (0x17)
            {
                Package (0x04)
                {
                    0x0001FFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0003FFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x01, 
                    \_SB.LNKB, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x02, 
                    \_SB.LNKC, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x03, 
                    \_SB.LNKD, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0019FFFF, 
                    0x00, 
                    \_SB.LNKE, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001BFFFF, 
                    0x00, 
                    \_SB.LNKG, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x01, 
                    \_SB.LNKB, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x02, 
                    \_SB.LNKC, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x03, 
                    \_SB.LNKD, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x00, 
                    \_SB.LNKH, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x01, 
                    \_SB.LNKD, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x02, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x03, 
                    \_SB.LNKC, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x01, 
                    \_SB.LNKD, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x02, 
                    \_SB.LNKC, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x03, 
                    \_SB.LNKA, 
                    0x00
                }
            })
            Name (ARRT, Package (0x17)
            {
                Package (0x04)
                {
                    0x0001FFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0003FFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x01, 
                    0x00, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x02, 
                    0x00, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x03, 
                    0x00, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0019FFFF, 
                    0x00, 
                    0x00, 
                    0x14
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001BFFFF, 
                    0x00, 
                    0x00, 
                    0x16
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x01, 
                    0x00, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x02, 
                    0x00, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x03, 
                    0x00, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x00, 
                    0x00, 
                    0x17
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x01, 
                    0x00, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x02, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x03, 
                    0x00, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x01, 
                    0x00, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x02, 
                    0x00, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x03, 
                    0x00, 
                    0x10
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (\GPIC)
                {
                    Return (ARRT) /* \_SB_.PCI0.ARRT */
                }
                Else
                {
                    Return (LRRT) /* \_SB_.PCI0.LRRT */
                }
            }

            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
            OperationRegion (MHCS, PCI_Config, 0x40, 0xC0)
            Field (MHCS, DWordAcc, NoLock, Preserve)
            {
                Offset (0x40), 
                PAM0,   8, 
                PAM1,   8, 
                PAM2,   8, 
                PAM3,   8, 
                PAM4,   8, 
                PAM5,   8, 
                PAM6,   8, 
                Offset (0x7C), 
                    ,   20, 
                TLUD,   12
            }

            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, _Y25)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0CF8,             // Length
                    ,, , TypeStatic)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0xFFFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0xF300,             // Length
                    ,, , TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000C3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y17, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y18, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y19, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1A, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1B, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1C, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1D, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1E, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000E3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1F, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E4000,         // Range Minimum
                    0x000E7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y20, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E8000,         // Range Minimum
                    0x000EBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y21, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EC000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y22, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00100000,         // Range Minimum
                    0xFEBFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFEB00000,         // Length
                    ,, _Y23, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFED40000,         // Range Minimum
                    0xFED4BFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x0000C000,         // Length
                    ,, _Y24, AddressRangeMemory, TypeStatic)
            })
            CreateDWordField (_CRS, \_SB.PCI0._Y17._LEN, C0LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y18._LEN, C4LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y19._LEN, C8LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y1A._LEN, CCLN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y1B._LEN, D0LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y1C._LEN, D4LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y1D._LEN, D8LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y1E._LEN, DCLN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y1F._LEN, E0LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y20._LEN, E4LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y21._LEN, E8LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y22._LEN, ECLN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y23._MIN, XXMN)  // _MIN: Minimum Base Address
            CreateDWordField (_CRS, \_SB.PCI0._Y23._MAX, XXMX)  // _MAX: Maximum Base Address
            CreateDWordField (_CRS, \_SB.PCI0._Y23._LEN, XXLN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y24._MIN, F4MN)  // _MIN: Minimum Base Address
            CreateDWordField (_CRS, \_SB.PCI0._Y24._MAX, F4MX)  // _MAX: Maximum Base Address
            CreateDWordField (_CRS, \_SB.PCI0._Y24._LEN, F4LN)  // _LEN: Length
            CreateWordField (_CRS, \_SB.PCI0._Y25._MAX, B0MX)  // _MAX: Maximum Base Address
            CreateWordField (_CRS, \_SB.PCI0._Y25._LEN, B0LN)  // _LEN: Length
            Method (_INI, 0, Serialized)  // _INI: Initialize
            {
                Store (0x3F, B0MX) /* \_SB_.PCI0.B0MX */
                Store (Add (0x3F, 0x01), B0LN) /* \_SB_.PCI0.B0LN */
                If (LNot (\OSIF))
                {
                    \_SB._INI ()
                }

                ShiftLeft (TLUD, 0x14, Local0)
                Store (Local0, \MEMX)
                Store (Local0, XXMN) /* \_SB_.PCI0.XXMN */
                Add (Subtract (XXMX, XXMN), 0x01, XXLN) /* \_SB_.PCI0.XXLN */
                If (LEqual (\TPMP, 0x00))
                {
                    Store (0x00, F4LN) /* \_SB_.PCI0.F4LN */
                }

                If (And (PAM1, 0x03))
                {
                    Store (0x00, C0LN) /* \_SB_.PCI0.C0LN */
                }

                If (And (PAM1, 0x30))
                {
                    Store (0x00, C4LN) /* \_SB_.PCI0.C4LN */
                }

                If (And (PAM2, 0x03))
                {
                    Store (0x00, C8LN) /* \_SB_.PCI0.C8LN */
                }

                If (And (PAM2, 0x30))
                {
                    Store (0x00, CCLN) /* \_SB_.PCI0.CCLN */
                }

                If (And (PAM3, 0x03))
                {
                    Store (0x00, D0LN) /* \_SB_.PCI0.D0LN */
                }

                If (And (PAM3, 0x30))
                {
                    Store (0x00, D4LN) /* \_SB_.PCI0.D4LN */
                }

                If (And (PAM4, 0x03))
                {
                    Store (0x00, D8LN) /* \_SB_.PCI0.D8LN */
                }

                If (And (PAM4, 0x30))
                {
                    Store (0x00, DCLN) /* \_SB_.PCI0.DCLN */
                }

                If (And (PAM5, 0x03))
                {
                    Store (0x00, E0LN) /* \_SB_.PCI0.E0LN */
                }

                If (And (PAM5, 0x30))
                {
                    Store (0x00, E4LN) /* \_SB_.PCI0.E4LN */
                }

                If (And (PAM6, 0x03))
                {
                    Store (0x00, E8LN) /* \_SB_.PCI0.E8LN */
                }

                If (And (PAM6, 0x30))
                {
                    Store (0x00, ECLN) /* \_SB_.PCI0.ECLN */
                }
            }

            Name (SUPP, 0x00)
            Name (CTRL, 0x00)
            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                CreateDWordField (Arg3, 0x00, CDW1)
                CreateDWordField (Arg3, 0x04, CDW2)
                CreateDWordField (Arg3, 0x08, CDW3)
                If (\_SB.PCI0.XHCI.CUID (Arg0))
                {
                    Return (\_SB.PCI0.XHCI.POSC (Arg1, Arg2, Arg3))
                }

                If (LEqual (Arg0, ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */))
                {
                    Store (CDW2, SUPP) /* \_SB_.PCI0.SUPP */
                    Store (CDW3, CTRL) /* \_SB_.PCI0.CTRL */
                    And (CTRL, 0x0D, CTRL) /* \_SB_.PCI0.CTRL */
                    If (LNot (And (CDW1, 0x01)))
                    {
                        If (And (CTRL, 0x01))
                        {
                            If (LNot (\VIGD))
                            {
                                Store (0x00, \_SB.PCI0.PEG.HPGP)
                                Store (0x00, \_SB.PCI0.PEG.GMGP)
                            }

                            Store (0x01, \NHPS)
                        }

                        If (And (CTRL, 0x04))
                        {
                            If (LNot (\VIGD))
                            {
                                Store (0x00, \_SB.PCI0.PEG.PMGP)
                                Store (0x00, \_SB.PCI0.PEG.GMGP)
                            }

                            If (\_SB.PCI0.EXP1.PMEX)
                            {
                                Store (0x00, \_SB.PCI0.EXP1.PMEX)
                                Store (0x01, \_SB.PCI0.EXP1.PMSX)
                            }

                            If (\_SB.PCI0.EXP2.PMEX)
                            {
                                Store (0x00, \_SB.PCI0.EXP2.PMEX)
                                Store (0x01, \_SB.PCI0.EXP2.PMSX)
                            }

                            If (\_SB.PCI0.EXP3.PMEX)
                            {
                                Store (0x00, \_SB.PCI0.EXP3.PMEX)
                                Store (0x01, \_SB.PCI0.EXP3.PMSX)
                            }

                            Store (0x00, \_SB.PCI0.LPC.EXPE)
                            Store (0x01, \NPME)
                        }
                    }

                    If (LNotEqual (Arg1, 0x01))
                    {
                        Or (CDW1, 0x0A, CDW1) /* \_SB_.PCI0._OSC.CDW1 */
                    }

                    If (LNotEqual (CDW3, CTRL))
                    {
                        Or (CDW1, 0x10, CDW1) /* \_SB_.PCI0._OSC.CDW1 */
                    }

                    Store (CTRL, CDW3) /* \_SB_.PCI0._OSC.CDW3 */
                }
                Else
                {
                    Or (CDW1, 0x06, CDW1) /* \_SB_.PCI0._OSC.CDW1 */
                }

                Return (Arg3)
            }

            Mutex(MDGS, 0)
            Name (VDEE, 0x01)
            Name (VDDA, Buffer (0x02) {})
            CreateBitField (VDDA, 0x00, VUPC)
            CreateBitField (VDDA, 0x01, VQDL)
            CreateBitField (VDDA, 0x02, VQDC)
            CreateBitField (VDDA, 0x03, VQD0)
            CreateBitField (VDDA, 0x04, VQD1)
            CreateBitField (VDDA, 0x05, VQD2)
            CreateBitField (VDDA, 0x06, VSDL)
            CreateBitField (VDDA, 0x07, VSDC)
            CreateBitField (VDDA, 0x08, VSD0)
            CreateBitField (VDDA, 0x09, VSD1)
            CreateBitField (VDDA, 0x0A, VSD2)
            CreateBitField (VDDA, 0x0B, VSD3)
            CreateBitField (VDDA, 0x0C, VSD4)
            CreateBitField (VDDA, 0x0D, VSD5)
            CreateBitField (VDDA, 0x0E, MSWT)
            Device (VID)
            {
                Name (_ADR, 0x00020000)  // _ADR: Address
                Name (RID, 0x00)
                OperationRegion (VPCG, PCI_Config, 0x00, 0x0100)
                Field (VPCG, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x2C), 
                    VSID,   32, 
                    Offset (0xD4), 
                    VPWR,   8
                }

                Name (MIDL, 0x0400)
                Name (MIDC, 0x0100)
                Name (MID0, 0x0300)
                Name (MID1, 0x0301)
                Name (MID2, 0x0302)
                Name (MID3, 0x0303)
                Name (MID4, 0x0304)
                Name (MID5, 0x0305)
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Method (VRSI, 0, NotSerialized)
                {
                    If (LEqual (PJCD, 0x00))
                    {
                        If (LGreaterEqual (OSYS, 0x07DD))
                        {
                            Store (0x503517AA, VSID) /* \_SB_.PCI0.VID_.VSID */
                            Store (0x01, VMSH) /* \VMSH */
                        }
                        Else
                        {
                            Store (0x503517AA, VSID) /* \_SB_.PCI0.VID_.VSID */
                            Store (0x00, VMSH) /* \VMSH */
                        }
                    }
                    Else
                    {
                        If (LEqual (PJCD, 0x01))
                        {
                            If (LGreaterEqual (OSYS, 0x07DD))
                            {
                                Store (0x503717AA, VSID) /* \_SB_.PCI0.VID_.VSID */
                                Store (0x01, VMSH) /* \VMSH */
                            }
                            Else
                            {
                                Store (0x503717AA, VSID) /* \_SB_.PCI0.VID_.VSID */
                                Store (0x00, VMSH) /* \VMSH */
                            }
                        }
                        Else
                        {
                            If (LEqual (PJCD, 0x02))
                            {
                                If (LGreaterEqual (OSYS, 0x07DD))
                                {
                                    Store (0x503A17AA, VSID) /* \_SB_.PCI0.VID_.VSID */
                                    Store (0x01, VMSH) /* \VMSH */
                                }
                                Else
                                {
                                    Store (0x503A17AA, VSID) /* \_SB_.PCI0.VID_.VSID */
                                    Store (0x00, VMSH) /* \VMSH */
                                }
                            }
                        }
                    }
                }

                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    VRSI ()
                    Store (\_SB.LID._LID (), CLID) /* External reference */
                }

                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                    Noop
                }

                Method (_PS1, 0, NotSerialized)  // _PS1: Power State 1
                {
                    Noop
                }

                Method (_PS2, 0, NotSerialized)  // _PS2: Power State 2
                {
                    Noop
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                    Noop
                }

                Method (VSWT, 0, NotSerialized)
                {
                    GHDS (0x00)
                }

                Method (VLOC, 1, NotSerialized)
                {
                    If (LEqual (Arg0, \_SB.LID._LID ()))
                    {
                        \VSLD (Arg0)
                        If (LEqual (VPWR, 0x00))
                        {
                            Store (Arg0, CLID) /* External reference */
                            GNOT (0x02, 0x00)
                        }
                    }
                }

                Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                {
                    And (Arg0, 0x03, Arg0)
                    If (LEqual (Arg0, 0x02))
                    {
                        Store (0x14, Local0)
                        While (Local0)
                        {
                            Decrement (Local0)
                            Acquire (MDGS, 0xFFFF)
                            If (LEqual (0x00, MSWT))
                            {
                                Store (0x01, MSWT) /* \_SB_.PCI0.MSWT */
                                Store (0x00, Local0)
                                Store (Arg0, VDEE) /* \_SB_.PCI0.VDEE */
                            }

                            Release (MDGS)
                            Sleep (0xC8)
                        }
                    }
                    Else
                    {
                        Acquire (MDGS, 0xFFFF)
                        If (LEqual (VDEE, 0x02))
                        {
                            Store (0x00, MSWT) /* \_SB_.PCI0.MSWT */
                        }

                        If (LGreater (Arg0, 0x02))
                        {
                            Store (0x01, VDEE) /* \_SB_.PCI0.VDEE */
                        }
                        Else
                        {
                            Store (Arg0, VDEE) /* \_SB_.PCI0.VDEE */
                        }

                        Release (MDGS)
                    }
                }

                Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                {
                    Store (0x00, NDID) /* External reference */
                    If (LNotEqual (DIDL, 0x00))
                    {
                        Increment (NDID)
                    }

                    If (LNotEqual (DDL2, 0x00))
                    {
                        Increment (NDID)
                    }

                    If (LNotEqual (DDL3, 0x00))
                    {
                        Increment (NDID)
                    }

                    If (LNotEqual (DDL4, 0x00))
                    {
                        Increment (NDID)
                    }

                    If (LNotEqual (DDL5, 0x00))
                    {
                        Increment (NDID)
                    }

                    If (LNotEqual (DDL6, 0x00))
                    {
                        Increment (NDID)
                    }

                    If (LNotEqual (DDL7, 0x00))
                    {
                        Increment (NDID)
                    }

                    If (LNotEqual (DDL8, 0x00))
                    {
                        Increment (NDID)
                    }

                    If (LEqual (NDID, 0x01))
                    {
                        Name (TMP1, Package (0x01)
                        {
                            0xFFFFFFFF
                        })
                        Store (Or (0x80010000, And (0x0F0F, DIDL)), Index (TMP1, 0x00))
                        Return (TMP1) /* \_SB_.PCI0.VID_._DOD.TMP1 */
                    }

                    If (LEqual (NDID, 0x02))
                    {
                        Name (TMP2, Package (0x02)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        Store (Or (0x80010000, And (0x0F0F, DIDL)), Index (TMP2, 0x00))
                        Store (Or (0x80010000, And (0x0F0F, DDL2)), Index (TMP2, 0x01))
                        Return (TMP2) /* \_SB_.PCI0.VID_._DOD.TMP2 */
                    }

                    If (LEqual (NDID, 0x03))
                    {
                        Name (TMP3, Package (0x03)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        Store (Or (0x80010000, And (0x0F0F, DIDL)), Index (TMP3, 0x00))
                        Store (Or (0x80010000, And (0x0F0F, DDL2)), Index (TMP3, 0x01))
                        Store (Or (0x80010000, And (0x0F0F, DDL3)), Index (TMP3, 0x02))
                        Return (TMP3) /* \_SB_.PCI0.VID_._DOD.TMP3 */
                    }

                    If (LEqual (NDID, 0x04))
                    {
                        Name (TMP4, Package (0x04)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        Store (Or (0x80010000, And (0x0F0F, DIDL)), Index (TMP4, 0x00))
                        Store (Or (0x80010000, And (0x0F0F, DDL2)), Index (TMP4, 0x01))
                        Store (Or (0x80010000, And (0x0F0F, DDL3)), Index (TMP4, 0x02))
                        Store (Or (0x80010000, And (0x0F0F, DDL4)), Index (TMP4, 0x03))
                        Return (TMP4) /* \_SB_.PCI0.VID_._DOD.TMP4 */
                    }

                    If (LEqual (NDID, 0x05))
                    {
                        Name (TMP5, Package (0x05)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        Store (Or (0x80010000, And (0x0F0F, DIDL)), Index (TMP5, 0x00))
                        Store (Or (0x80010000, And (0x0F0F, DDL2)), Index (TMP5, 0x01))
                        Store (Or (0x80010000, And (0x0F0F, DDL3)), Index (TMP5, 0x02))
                        Store (Or (0x80010000, And (0x0F0F, DDL4)), Index (TMP5, 0x03))
                        Store (Or (0x80010000, And (0x0F0F, DDL5)), Index (TMP5, 0x04))
                        Return (TMP5) /* \_SB_.PCI0.VID_._DOD.TMP5 */
                    }

                    If (LEqual (NDID, 0x06))
                    {
                        Name (TMP6, Package (0x06)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        Store (Or (0x80010000, And (0x0F0F, DIDL)), Index (TMP6, 0x00))
                        Store (Or (0x80010000, And (0x0F0F, DDL2)), Index (TMP6, 0x01))
                        Store (Or (0x80010000, And (0x0F0F, DDL3)), Index (TMP6, 0x02))
                        Store (Or (0x80010000, And (0x0F0F, DDL4)), Index (TMP6, 0x03))
                        Store (Or (0x80010000, And (0x0F0F, DDL5)), Index (TMP6, 0x04))
                        Store (Or (0x80010000, And (0x0F0F, DDL6)), Index (TMP6, 0x05))
                        Return (TMP6) /* \_SB_.PCI0.VID_._DOD.TMP6 */
                    }

                    If (LEqual (NDID, 0x07))
                    {
                        Name (TMP7, Package (0x07)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        Store (Or (0x80010000, And (0x0F0F, DIDL)), Index (TMP7, 0x00))
                        Store (Or (0x80010000, And (0x0F0F, DDL2)), Index (TMP7, 0x01))
                        Store (Or (0x80010000, And (0x0F0F, DDL3)), Index (TMP7, 0x02))
                        Store (Or (0x80010000, And (0x0F0F, DDL4)), Index (TMP7, 0x03))
                        Store (Or (0x80010000, And (0x0F0F, DDL5)), Index (TMP7, 0x04))
                        Store (Or (0x80010000, And (0x0F0F, DDL6)), Index (TMP7, 0x05))
                        Store (Or (0x80010000, And (0x0F0F, DDL7)), Index (TMP7, 0x06))
                        Return (TMP7) /* \_SB_.PCI0.VID_._DOD.TMP7 */
                    }

                    If (LGreater (NDID, 0x07))
                    {
                        Name (TMP8, Package (0x08)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        Store (Or (0x80010000, And (0x0F0F, DIDL)), Index (TMP8, 0x00))
                        Store (Or (0x80010000, And (0x0F0F, DDL2)), Index (TMP8, 0x01))
                        Store (Or (0x80010000, And (0x0F0F, DDL3)), Index (TMP8, 0x02))
                        Store (Or (0x80010000, And (0x0F0F, DDL4)), Index (TMP8, 0x03))
                        Store (Or (0x80010000, And (0x0F0F, DDL5)), Index (TMP8, 0x04))
                        Store (Or (0x80010000, And (0x0F0F, DDL6)), Index (TMP8, 0x05))
                        Store (Or (0x80010000, And (0x0F0F, DDL7)), Index (TMP8, 0x06))
                        Store (Or (0x80010000, And (0x0F0F, DDL8)), Index (TMP8, 0x07))
                        Return (TMP8) /* \_SB_.PCI0.VID_._DOD.TMP8 */
                    }

                    Return (Package (0x01)
                    {
                        0x0400
                    })
                }

                Method (VDSW, 1, NotSerialized)
                {
                    If (LEqual (VPWR, 0x00))
                    {
                        GDCK (Arg0)
                    }
                }

                Method (VCAD, 1, NotSerialized)
                {
                    Store (0x00, Local0)
                    If (LEqual (And (DIDL, 0x0F0F), Arg0))
                    {
                        Store (0x0D, Local0)
                    }
                    Else
                    {
                        If (LEqual (And (DDL2, 0x0F0F), Arg0))
                        {
                            Store (0x0D, Local0)
                        }
                        Else
                        {
                            If (LEqual (And (DDL3, 0x0F0F), Arg0))
                            {
                                Store (0x0D, Local0)
                            }
                            Else
                            {
                                If (LEqual (And (DDL4, 0x0F0F), Arg0))
                                {
                                    Store (0x0D, Local0)
                                }
                                Else
                                {
                                    If (LEqual (And (DDL5, 0x0F0F), Arg0))
                                    {
                                        Store (0x0D, Local0)
                                    }
                                    Else
                                    {
                                        If (LEqual (And (DDL6, 0x0F0F), Arg0))
                                        {
                                            Store (0x0D, Local0)
                                        }
                                        Else
                                        {
                                            If (LEqual (And (DDL7, 0x0F0F), Arg0))
                                            {
                                                Store (0x0D, Local0)
                                            }
                                            Else
                                            {
                                                If (LEqual (And (DDL8, 0x0F0F), Arg0))
                                                {
                                                    Store (0x0D, Local0)
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    If (LEqual (And (CPDL, 0x0F0F), Arg0))
                    {
                        Or (0x10, Local0, Local0)
                    }
                    Else
                    {
                        If (LEqual (And (CPL2, 0x0F0F), Arg0))
                        {
                            Or (0x10, Local0, Local0)
                        }
                        Else
                        {
                            If (LEqual (And (CPL3, 0x0F0F), Arg0))
                            {
                                Or (0x10, Local0, Local0)
                            }
                            Else
                            {
                                If (LEqual (And (CPL4, 0x0F0F), Arg0))
                                {
                                    Or (0x10, Local0, Local0)
                                }
                                Else
                                {
                                    If (LEqual (And (CPL5, 0x0F0F), Arg0))
                                    {
                                        Or (0x10, Local0, Local0)
                                    }
                                    Else
                                    {
                                        If (LEqual (And (CPL6, 0x0F0F), Arg0))
                                        {
                                            Or (0x10, Local0, Local0)
                                        }
                                        Else
                                        {
                                            If (LEqual (And (CPL7, 0x0F0F), Arg0))
                                            {
                                                Or (0x10, Local0, Local0)
                                            }
                                            Else
                                            {
                                                If (LEqual (And (CPL8, 0x0F0F), Arg0))
                                                {
                                                    Or (0x10, Local0, Local0)
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    If (LEqual (And (CADL, 0x0F0F), Arg0))
                    {
                        Or (0x02, Local0, Local0)
                    }
                    Else
                    {
                        If (LEqual (And (CAL2, 0x0F0F), Arg0))
                        {
                            Or (0x02, Local0, Local0)
                        }
                        Else
                        {
                            If (LEqual (And (CAL3, 0x0F0F), Arg0))
                            {
                                Or (0x02, Local0, Local0)
                            }
                            Else
                            {
                                If (LEqual (And (CAL4, 0x0F0F), Arg0))
                                {
                                    Or (0x02, Local0, Local0)
                                }
                                Else
                                {
                                    If (LEqual (And (CAL5, 0x0F0F), Arg0))
                                    {
                                        Or (0x02, Local0, Local0)
                                    }
                                    Else
                                    {
                                        If (LEqual (And (CAL6, 0x0F0F), Arg0))
                                        {
                                            Or (0x02, Local0, Local0)
                                        }
                                        Else
                                        {
                                            If (LEqual (And (CAL7, 0x0F0F), Arg0))
                                            {
                                                Or (0x02, Local0, Local0)
                                            }
                                            Else
                                            {
                                                If (LEqual (And (CAL8, 0x0F0F), Arg0))
                                                {
                                                    Or (0x02, Local0, Local0)
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    Return (Local0)
                }

                Method (NDDS, 1, NotSerialized)
                {
                    If (LEqual (And (NADL, 0x0F0F), Arg0))
                    {
                        Return (0x01)
                    }
                    Else
                    {
                        If (LEqual (And (NDL2, 0x0F0F), Arg0))
                        {
                            Return (0x01)
                        }
                        Else
                        {
                            If (LEqual (And (NDL3, 0x0F0F), Arg0))
                            {
                                Return (0x01)
                            }
                            Else
                            {
                                If (LEqual (And (NDL4, 0x0F0F), Arg0))
                                {
                                    Return (0x01)
                                }
                                Else
                                {
                                    If (LEqual (And (NDL5, 0x0F0F), Arg0))
                                    {
                                        Return (0x01)
                                    }
                                    Else
                                    {
                                        If (LEqual (And (NDL6, 0x0F0F), Arg0))
                                        {
                                            Return (0x01)
                                        }
                                        Else
                                        {
                                            If (LEqual (And (NDL7, 0x0F0F), Arg0))
                                            {
                                                Return (0x01)
                                            }
                                            Else
                                            {
                                                If (LEqual (And (NDL8, 0x0F0F), Arg0))
                                                {
                                                    Return (0x01)
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    Return (0x00)
                }

                Device (LCD0)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (0x0400)
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MIDL))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MIDL))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        And (Arg0, 0x01, VSDL) /* \_SB_.PCI0.VSDL */
                    }

                    Method (_DDC, 1, NotSerialized)  // _DDC: Display Data Current
                    {
                        If (LEqual (Arg0, 0x01))
                        {
                            Return (\VEDI)
                        }
                        Else
                        {
                            If (LEqual (Arg0, 0x02))
                            {
                                Return (\VEDI)
                            }
                        }

                        Return (0x00)
                    }
                }

                Device (CRT0)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (0x0100)
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MIDC))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MIDC))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        And (Arg0, 0x01, VSDC) /* \_SB_.PCI0.VSDC */
                    }
                }

                Device (DVI0)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (0x0300)
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MID0))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MID0))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        And (Arg0, 0x01, VSD0) /* \_SB_.PCI0.VSD0 */
                    }
                }

                Device (DVI1)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (0x0301)
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MID1))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MID1))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        And (Arg0, 0x01, VSD1) /* \_SB_.PCI0.VSD1 */
                    }
                }

                Device (DVI2)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (0x0302)
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MID2))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MID2))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        And (Arg0, 0x01, VSD2) /* \_SB_.PCI0.VSD2 */
                    }
                }

                Device (DVI3)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (0x0303)
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MID3))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MID3))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        And (Arg0, 0x01, VSD3) /* \_SB_.PCI0.VSD3 */
                    }
                }

                Device (DVI4)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (0x0304)
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MID4))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MID4))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        And (Arg0, 0x01, VSD4) /* \_SB_.PCI0.VSD4 */
                    }
                }

                Device (DVI5)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (0x0305)
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (VCAD (MID5))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (MID5))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        And (Arg0, 0x01, VSD5) /* \_SB_.PCI0.VSD5 */
                    }
                }
                OperationRegion (RMPC, PCI_Config, 0x10, 4)
                Field (RMPC, AnyAcc, NoLock, Preserve)
                {
                    BAR1,32,
                }
                Device (PNLF)
                {
                    // normal PNLF declares (note some of this probably not necessary)
                    Name (_ADR, Zero)
                    Name (_HID, EisaId ("APP0002"))
                    Name (_CID, "backlight")
                    Name (_UID, 15)
                    Name (_STA, 0x0B)
                    //define hardware register access for brightness
                    // lower nibble of BAR1 is status bits and not part of the address
                    OperationRegion (BRIT, SystemMemory, And(^BAR1, Not(0xF)), 0xe1184)
                    Field (BRIT, AnyAcc, Lock, Preserve)
                    {
                        Offset(0x48250),
                        LEV2, 32,
                        LEVL, 32,
                        Offset(0x70040),
                        P0BL, 32,
                        Offset(0xc8250),
                        LEVW, 32,
                        LEVX, 32,
                        Offset(0xe1180),
                        PCHL, 32,
                    }
                    // LMAX: use 0xad9/0x56c/0x5db to force OS X value
                    //       or use any arbitrary value
                    //       or use 0 to capture BIOS setting
                    Name (LMAX, 0xad9)
                    // KMAX: defines the unscaled range in the _BCL table below
                    Name (KMAX, 0xad9)
                    // _INI deals with differences between native setting and desired
                    Method (_INI, 0, NotSerialized)
                    {
                        // This 0xC value comes from looking what OS X initializes this
                        // register to after display sleep (using ACPIDebug/ACPIPoller)
                        Store(0xC0000000, LEVW)
                        // determine LMAX to use
                        If (LNot(LMAX)) { Store(ShiftRight(LEVX,16), LMAX) }
                        If (LNot(LMAX)) { Store(KMAX, LMAX) }
                        If (LNotEqual(LMAX, KMAX))
                        {
                            // Scale all the values in _BCL to the PWM max in use
                            Store(0, Local0)
                            While (LLess(Local0, SizeOf(_BCL)))
                            {
                                Store(DerefOf(Index(_BCL,Local0)), Local1)
                                Divide(Multiply(Local1,LMAX), KMAX,, Local1)
                                Store(Local1, Index(_BCL,Local0))
                                Increment(Local0)
                            }
                            // Also scale XRGL and XRGH values
                            Divide(Multiply(XRGL,LMAX), KMAX,, XRGL)
                            Divide(Multiply(XRGH,LMAX), KMAX,, XRGH)
                        }
                        // adjust values to desired LMAX
                        Store(ShiftRight(LEVX,16), Local1)
                        If (LNotEqual(Local1, LMAX))
                        {
                            Store(And(LEVX,0xFFFF), Local0)
                            If (LOr(LNot(Local0),LNot(Local1))) { Store(LMAX, Local0) Store(LMAX, Local1) }
                            Divide(Multiply(Local0,LMAX), Local1,, Local0)
                            //REVIEW: wait for vblank before setting new PWM config
                            //Store(P0BL, Local7)
                            //While (LEqual (P0BL, Local7)) {}
                            Store(Or(Local0,ShiftLeft(LMAX,16)), LEVX)
                        }
                    }
                    // _BCM/_BQC: set/get for brightness level
                    Method (_BCM, 1, NotSerialized)
                    {
                        // store new backlight level
                        Store(Match(_BCL, MGE, Arg0, MTR, 0, 2), Local0)
                        If (LEqual(Local0, Ones)) { Subtract(SizeOf(_BCL), 1, Local0) }
                        Store(Or(DerefOf(Index(_BCL,Local0)),ShiftLeft(LMAX,16)), LEVX)
                    }
                    Method (_BQC, 0, NotSerialized)
                    {
                        Store(Match(_BCL, MGE, And(LEVX, 0xFFFF), MTR, 0, 2), Local0)
                        If (LEqual(Local0, Ones)) { Subtract(SizeOf(_BCL), 1, Local0) }
                        Return(DerefOf(Index(_BCL, Local0)))
                    }
                    Method (_DOS, 1, NotSerialized)
                    {
                        // Note: Some systems have this defined in DSDT, so uncomment
                        // the next line if that is the case.
                        //External(^^_DOS, MethodObj)
                        ^^_DOS(Arg0)
                    }
                    // extended _BCM/_BQC for setting "in between" levels
                    Method (XBCM, 1, NotSerialized)
                    {
                        // store new backlight level
                        If (LGreater(Arg0, XRGH)) { Store(XRGH, Arg0) }
                        If (LAnd(Arg0, LLess(Arg0, XRGL))) { Store(XRGL, Arg0) }
                        Store(Or(Arg0,ShiftLeft(LMAX,16)), LEVX)
                    }
                    Method (XBQC, 0, NotSerialized)
                    {
                        Store(And(LEVX,0xFFFF), Local0)
                        If (LGreater(Local0, XRGH)) { Store(XRGH, Local0) }
                        If (LAnd(Local0, LLess(Local0, XRGL))) { Store(XRGL, Local0) }
                        Return(Local0)
                    }
                    // Set XOPT bit 0 to disable smooth transitions
                    // Set XOPT bit 1 to wait for native BacklightHandler
                    Name (XOPT, 0x02)
                    // XRGL/XRGH: defines the valid range
                    Name (XRGL, 25)
                    Name (XRGH, 2777)
                    // _BCL: returns list of valid brightness levels
                    // first two entries describe ac/battery power levels
                    Name (_BCL, Package()
                    {
                        2777,
                        748,
                        0,
                        35, 39, 44, 50,
                        58, 67, 77, 88,
                        101, 115, 130, 147,
                        165, 184, 204, 226,
                        249, 273, 299, 326,
                        354, 383, 414, 446,
                        479, 514, 549, 587,
                        625, 665, 706, 748,
                        791, 836, 882, 930,
                        978, 1028, 1079, 1132,
                        1186, 1241, 1297, 1355,
                        1414, 1474, 1535, 1598,
                        1662, 1728, 1794, 1862,
                        1931, 2002, 2074, 2147,
                        2221, 2296, 2373, 2452,
                        2531, 2612, 2694, 2777,
                    })
                }
            }

            Device (LPC)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
                Device (SIO)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x00)  // _UID: Unique ID
                    Name (SCRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0090,             // Range Minimum
                            0x0090,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0024,             // Range Minimum
                            0x0024,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0028,             // Range Minimum
                            0x0028,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002C,             // Range Minimum
                            0x002C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0030,             // Range Minimum
                            0x0030,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0034,             // Range Minimum
                            0x0034,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0038,             // Range Minimum
                            0x0038,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x003C,             // Range Minimum
                            0x003C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A4,             // Range Minimum
                            0x00A4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A8,             // Range Minimum
                            0x00A8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00AC,             // Range Minimum
                            0x00AC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x06,               // Length
                            )
                        IO (Decode16,
                            0x00B8,             // Range Minimum
                            0x00B8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00BC,             // Range Minimum
                            0x00BC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x01,               // Alignment
                            0x06,               // Length
                            )
                        IO (Decode16,
                            0x1800,             // Range Minimum
                            0x1800,             // Range Maximum
                            0x01,               // Alignment
                            0xA0,               // Length
                            )
                        IO (Decode16,
                            0x0800,             // Range Minimum
                            0x0800,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x0880,             // Range Minimum
                            0x0880,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x0900,             // Range Minimum
                            0x0900,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x0980,             // Range Minimum
                            0x0980,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x0A00,             // Range Minimum
                            0x0A00,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x0A80,             // Range Minimum
                            0x0A80,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x0B00,             // Range Minimum
                            0x0B00,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x0B80,             // Range Minimum
                            0x0B80,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x15E0,             // Range Minimum
                            0x15E0,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x1600,             // Range Minimum
                            0x1600,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x1640,             // Range Minimum
                            0x1640,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xF8000000,         // Address Base
                            0x04000000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFED1C000,         // Address Base
                            0x00004000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFED10000,         // Address Base
                            0x00004000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFED18000,         // Address Base
                            0x00001000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFED19000,         // Address Base
                            0x00001000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFED45000,         // Address Base
                            0x00007000,         // Address Length
                            )
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        If (LNot (CondRefOf (\_SB.PCI0.LPC.TPM)))
                        {
                            Return (SCRS) /* \_SB_.PCI0.LPC_.SIO_.SCRS */
                        }
                        Else
                        {
                            If (LEqual (\_SB.PCI0.LPC.TPM._STA, 0x0F))
                            {
                                Return (SCRS) /* \_SB_.PCI0.LPC_.SIO_.SCRS */
                            }
                            Else
                            {
                                Subtract (SizeOf (SCRS), 0x02, Local0)
                                Name (BUF0, Buffer (Local0) {})
                                Add (Local0, SizeOf (\_SB.PCI0.LPC.TPM.BUF1), Local0)
                                Name (BUF1, Buffer (Local0) {})
                                Store (SCRS, BUF0) /* \_SB_.PCI0.LPC_.SIO_._CRS.BUF0 */
                                Concatenate (BUF0, \_SB.PCI0.LPC.TPM.BUF1, BUF1) /* \_SB_.PCI0.LPC_.SIO_._CRS.BUF1 */
                                Return (BUF1) /* \_SB_.PCI0.LPC_.SIO_._CRS.BUF1 */
                            }
                        }
                    }
                }

                OperationRegion (LPCS, PCI_Config, 0x00, 0x0100)
                Field (LPCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    PIRA,   8, 
                    PIRB,   8, 
                    PIRC,   8, 
                    PIRD,   8, 
                    SERQ,   8, 
                    Offset (0x68), 
                    PIRE,   8, 
                    PIRF,   8, 
                    PIRG,   8, 
                    PIRH,   8, 
                    Offset (0x80), 
                    XU1A,   3, 
                        ,   1, 
                    XU2A,   3, 
                    Offset (0x81), 
                    XPA,    2, 
                        ,   2, 
                    XFA,    1, 
                    Offset (0x82), 
                    XU1E,   1, 
                    XU2E,   1, 
                    XPE,    1, 
                    XFE,    1, 
                    Offset (0x84), 
                    XG1E,   1, 
                        ,   1, 
                    XG1A,   14, 
                    Offset (0x88), 
                    XG2E,   1, 
                        ,   1, 
                    XG2A,   14, 
                    Offset (0xA0), 
                        ,   2, 
                    CLKR,   1, 
                        ,   7, 
                    EXPE,   1, 
                    Offset (0xA2), 
                    Offset (0xAC), 
                    Offset (0xAD), 
                    Offset (0xAE), 
                    XUSB,   1, 
                    Offset (0xB8), 
                    GR00,   2, 
                        ,   10, 
                    GR06,   2
                }

                OperationRegion (LPIO, SystemIO, 0x0800, 0x0400)
                Field (LPIO, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x100), 
                        ,   30, 
                    DOI0,   1, 
                    Offset (0x108), 
                        ,   30, 
                    DOI1,   1, 
                    Offset (0x110), 
                        ,   30, 
                    DOI2,   1, 
                    Offset (0x118), 
                        ,   30, 
                    DOI3,   1, 
                    Offset (0x158), 
                        ,   30, 
                    NFCI,   1, 
                    Offset (0x180), 
                        ,   3, 
                    XHPD,   1, 
                    Offset (0x1B0), 
                        ,   31, 
                    GLIS,   1, 
                    Offset (0x300), 
                        ,   30, 
                    NFCD,   1, 
                    Offset (0x308), 
                        ,   31, 
                    NFCP,   1
                }

                OperationRegion (PMIO, SystemIO, 0x1800, 0x80)
                Field (PMIO, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x2A), 
                        ,   6, 
                    XHPE,   1, 
                    Offset (0x42), 
                        ,   1, 
                    SWGE,   1, 
                    Offset (0x64), 
                        ,   9, 
                    SCIS,   1, 
                    Offset (0x66)
                }

                Device (PIC)
                {
                    Name (_HID, EisaId ("PNP0000") /* 8259-compatible Programmable Interrupt Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        
                    })
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        
                    })
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103") /* HPET System Timer */)  // _HID: Hardware ID
                    

                    Name (BUF0, ResourceTemplate()
{
    IRQNoFlags() { 0, 8, 11, 15 }

                        Memory32Fixed (ReadOnly,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            _Y26)
                    })

                    
                    Name (_STA, 0x0F)
                    Method (_CRS, 0, NotSerialized)
                    {
                        Return (BUF0)
                    }
                }

                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200") /* PC-class DMA Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        DMA (Compatibility, BusMaster, Transfer8_16, )
                            {4}
                    })
                }

                Device (SPKR)
                {
                    Name (_HID, EisaId ("PNP0800") /* Microsoft Sound System Compatible Device */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                    })
                }

                Device (FPU)
                {
                    Name (_HID, EisaId ("PNP0C04") /* x87-compatible Floating Point Processing Unit */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        
                    })
                }

                Device (KBD)
                {
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        If (\WIN8)
                        {
                            Return (0x7100AE30)
                        }

                        Return (0x0303D041)
                    }

                    Name (_CID, EisaId ("PNP0303") /* IBM Enhanced Keyboard (101/102-key, PS/2 Mouse) */)  // _CID: Compatible ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {1}
                    })
                }

                Device (MOU)
                {
                    Name (_HID, EisaId ("IBM3780"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0F13") /* PS/2 Mouse */)  // _CID: Compatible ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQNoFlags ()
                            {12}
                    })
                    Method (MHID, 0, NotSerialized)
                    {
                        If (\_SB.PCI0.LPC.PADD)
                        {
                            Store (0x80374D24, _HID) /* \_SB_.PCI0.LPC_.MOU_._HID */
                        }
                        Else
                        {
                            If (\_SB.PCI0.LPC.NFCD)
                            {
                                If (LOr (LEqual (PJCD, 0x00), LEqual (PJCD, 0x02)))
                                {
                                    Store (0x0E20AE30, _HID) /* \_SB_.PCI0.LPC_.MOU_._HID */
                                }
                                Else
                                {
                                    Store (0x0F20AE30, _HID) /* \_SB_.PCI0.LPC_.MOU_._HID */
                                }
                            }
                            Else
                            {
                                Store (0x0820AE30, _HID) /* \_SB_.PCI0.LPC_.MOU_._HID */
                            }
                        }
                    }
                }

                OperationRegion (IMGA, SystemIO, 0x15E0, 0x10)
                Field (IMGA, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x01), 
                    Offset (0x02), 
                    Offset (0x03), 
                    WAKR,   16, 
                    Offset (0x0C), 
                    GAIX,   8, 
                    Offset (0x0E), 
                    GADT,   8, 
                    Offset (0x10)
                }

                IndexField (GAIX, GADT, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x50), 
                        ,   3, 
                    IVPW,   1, 
                    DVPW,   1, 
                    BLPL,   1, 
                    Offset (0x51), 
                    TP4R,   1, 
                    PADR,   1, 
                    BPAD,   1, 
                        ,   1, 
                        ,   1, 
                    PADD,   1, 
                    Offset (0x60), 
                    EPWG,   1, 
                        ,   1, 
                    CSON,   1, 
                    DSCI,   1, 
                    DSCS,   1, 
                    DLAN,   1, 
                    Offset (0xC2), 
                    GAID,   8
                }

                Device (EC)
                {
                    Name (_HID, EisaId ("PNP0C09") /* Embedded Controller Device */)  // _HID: Hardware ID
                    Name (_UID, 0x00)  // _UID: Unique ID
                    Name (_GPE, 0x25)  // _GPE: General Purpose Events
                    Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                    {
                        If (LEqual (Arg0, 0x03))
                        {
                            Store (Arg1, \H8DR)
                        }
                    }

                    OperationRegion (ECOR, EmbeddedControl, 0x00, 0x0100)
                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        HDBM,   1, 
                            ,   1, 
                            ,   1, 
                        HFNE,   1, 
                            ,   1, 
                            ,   1, 
                        DGCS,   1, 
                        Offset (0x01), 
                        BBLS,   1, 
                        BTCM,   1, 
                            ,   1, 
                            ,   1, 
                            ,   1, 
                        HBPR,   1, 
                        BTPC,   1, 
                        Offset (0x02), 
                        HDUE,   1, 
                            ,   4, 
                        SNLK,   1, 
                        Offset (0x03), 
                            ,   5, 
                        HAUM,   2, 
                        Offset (0x05), 
                        HSPA,   1, 
                        Offset (0x06), 
                        HSUN,   8, 
                        HSRP,   8, 
                        Offset (0x0C), 
                        HLCL,   8, 
                            ,   4, 
                        CALM,   1, 
                        Offset (0x0E), 
                        HFNS,   2, 
                        Offset (0x0F), 
                            ,   6, 
                        NULS,   1, 
                        Offset (0x10), 
                        HAM0,   8, 
                        HAM1,   8, 
                        HAM2,   8, 
                        HAM3,   8, 
                        HAM4,   8, 
                        HAM5,   8, 
                        HAM6,   8, 
                        HAM7,   8, 
                        HAM8,   8, 
                        HAM9,   8, 
                        HAMA,   8, 
                        HAMB,   8, 
                        HAMC,   8, 
                        HAMD,   8, 
                        HAME,   8, 
                        HAMF,   8, 
                        Offset (0x23), 
                        HANT,   8, 
                        Offset (0x26), 
                            ,   2, 
                        HANA,   2, 
                        Offset (0x27), 
                        Offset (0x28), 
                            ,   1, 
                        SKEM,   1, 
                        Offset (0x29), 
                        Offset (0x2A), 
                        HATR,   8, 
                        HT0H,   8, 
                        HT0L,   8, 
                        HT1H,   8, 
                        HT1L,   8, 
                        HFSP,   8, 
                            ,   6, 
                        HMUT,   1, 
                        Offset (0x31), 
                            ,   2, 
                        HUWB,   1, 
                        Offset (0x32), 
                        HWPM,   1, 
                        HWLB,   1, 
                        HWLO,   1, 
                        HWDK,   1, 
                        HWFN,   1, 
                        HWBT,   1, 
                        HWRI,   1, 
                        HWBU,   1, 
                        HWLU,   1, 
                        Offset (0x34), 
                            ,   3, 
                        PIBS,   1, 
                            ,   3, 
                        HPLO,   1, 
                        Offset (0x36), 
                        HWAC,   16, 
                        HB0S,   7, 
                        HB0A,   1, 
                        HB1S,   7, 
                        HB1A,   1, 
                        HCMU,   1, 
                            ,   2, 
                        OVRQ,   1, 
                        DCBD,   1, 
                        DCWL,   1, 
                        DCWW,   1, 
                        HB1I,   1, 
                            ,   1, 
                        KBLT,   1, 
                        BTPW,   1, 
                        FNKC,   1, 
                        HUBS,   1, 
                        BDPW,   1, 
                        BDDT,   1, 
                        HUBB,   1, 
                        Offset (0x46), 
                            ,   1, 
                        BTWK,   1, 
                        HPLD,   1, 
                            ,   1, 
                        HPAC,   1, 
                        BTST,   1, 
                        Offset (0x47), 
                        HPBU,   1, 
                            ,   1, 
                        HBID,   1, 
                            ,   3, 
                        HBCS,   1, 
                        HPNF,   1, 
                            ,   1, 
                        GSTS,   1, 
                            ,   2, 
                        HLBU,   1, 
                        DOCD,   1, 
                        HCBL,   1, 
                        Offset (0x49), 
                        SLUL,   1, 
                        Offset (0x4C), 
                        HTMH,   8, 
                        HTML,   8, 
                        HWK0,8,HWK1,8, 
                        HMPR,   8, 
                            ,   7, 
                        HMDN,   1, 
                        Offset (0x78), 
                        TMP0,   8, 
                        Offset (0x80), 
                        Offset (0x81), 
                        HIID,   8, 
                        Offset (0x83), 
                        HFNI,   8, 
                        HSPD,   16, 
                        Offset (0x88), 
                        TSL0,   7, 
                        TSR0,   1, 
                        TSL1,   7, 
                        TSR1,   1, 
                        TSL2,   7, 
                        TSR2,   1, 
                        TSL3,   7, 
                        TSR3,   1, 
                        Offset (0x8D), 
                        HDAA,   3, 
                        HDAB,   3, 
                        HDAC,   2, 
                        Offset (0xA5), 
                        GP50,   8, 
                        Offset (0xB0), 
                        HDEN,   32, 
                        HDEP,   32, 
                        HDEM,   8, 
                        HDES,   8, 
                        Offset (0xC8), 
                        ATMX,   8, 
                        HWAT,   8, 
                        Offset (0xCC), 
                        PWMH,   8, 
                        PWML,   8, 
                        Offset (0xED), 
                            ,   4, 
                        HDDD,   1
                    }

                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                        If (\H8DR)
                        {
                            Store (0x00, HSPA) /* \_SB_.PCI0.LPC_.EC__.HSPA */
                        }
                        Else
                        {
                            \MBEC (0x05, 0xFE, 0x00)
                        }

                        \_SB.PCI0.LPC.EC.HKEY.WGIN ()
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0066,             // Range Minimum
                            0x0066,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                    })
                    Method (LED, 2, NotSerialized)
                    {
                        Or (Arg0, Arg1, Local0)
                        If (\H8DR)
                        {
                            Store (Local0, HLCL) /* \_SB_.PCI0.LPC_.EC__.HLCL */
                        }
                        Else
                        {
                            \WBEC (0x0C, Local0)
                        }
                    }

                    Name (BAON, 0x00)
                    Name (WBON, 0x00)
                    Method (BEEP, 1, NotSerialized)
                    {
                        If (LEqual (Arg0, 0x05))
                        {
                            Store (0x00, WBON) /* \_SB_.PCI0.LPC_.EC__.WBON */
                        }

                        Store (WBON, Local2)
                        If (BAON)
                        {
                            If (LEqual (Arg0, 0x00))
                            {
                                Store (0x00, BAON) /* \_SB_.PCI0.LPC_.EC__.BAON */
                                If (WBON)
                                {
                                    Store (0x03, Local0)
                                    Store (0x08, Local1)
                                }
                                Else
                                {
                                    Store (0x00, Local0)
                                    Store (0x00, Local1)
                                }
                            }
                            Else
                            {
                                Store (0xFF, Local0)
                                Store (0xFF, Local1)
                                If (LEqual (Arg0, 0x11))
                                {
                                    Store (0x00, WBON) /* \_SB_.PCI0.LPC_.EC__.WBON */
                                }

                                If (LEqual (Arg0, 0x10))
                                {
                                    Store (0x01, WBON) /* \_SB_.PCI0.LPC_.EC__.WBON */
                                }
                            }
                        }
                        Else
                        {
                            Store (Arg0, Local0)
                            Store (0xFF, Local1)
                            If (LEqual (Arg0, 0x0F))
                            {
                                Store (Arg0, Local0)
                                Store (0x08, Local1)
                                Store (0x01, BAON) /* \_SB_.PCI0.LPC_.EC__.BAON */
                            }

                            If (LEqual (Arg0, 0x11))
                            {
                                Store (0x00, Local0)
                                Store (0x00, Local1)
                                Store (0x00, WBON) /* \_SB_.PCI0.LPC_.EC__.WBON */
                            }

                            If (LEqual (Arg0, 0x10))
                            {
                                Store (0x03, Local0)
                                Store (0x08, Local1)
                                Store (0x01, WBON) /* \_SB_.PCI0.LPC_.EC__.WBON */
                            }
                        }

                        If (LEqual (Arg0, 0x03))
                        {
                            Store (0x00, WBON) /* \_SB_.PCI0.LPC_.EC__.WBON */
                            If (Local2)
                            {
                                Store (0x07, Local0)
                                If (LOr (LEqual (\SPS, 0x03), LEqual (\SPS, 0x04)))
                                {
                                    Store (0x00, Local2)
                                    Store (0xFF, Local0)
                                    Store (0xFF, Local1)
                                }
                            }
                        }

                        If (LEqual (Arg0, 0x07))
                        {
                            If (Local2)
                            {
                                Store (0x00, Local2)
                                Store (0xFF, Local0)
                                Store (0xFF, Local1)
                            }
                        }

                        If (\H8DR)
                        {
                            If (LAnd (Local2, LNot (WBON)))
                            {
                                Store (0x00, HSRP) /* \_SB_.PCI0.LPC_.EC__.HSRP */
                                Store (0x00, HSUN) /* \_SB_.PCI0.LPC_.EC__.HSUN */
                                Sleep (0x64)
                            }

                            If (LNotEqual (Local1, 0xFF))
                            {
                                Store (Local1, HSRP) /* \_SB_.PCI0.LPC_.EC__.HSRP */
                            }

                            If (LNotEqual (Local0, 0xFF))
                            {
                                Store (Local0, HSUN) /* \_SB_.PCI0.LPC_.EC__.HSUN */
                            }
                        }
                        Else
                        {
                            If (LAnd (Local2, LNot (WBON)))
                            {
                                \WBEC (0x07, 0x00)
                                \WBEC (0x06, 0x00)
                                Sleep (0x64)
                            }

                            If (LNotEqual (Local1, 0xFF))
                            {
                                \WBEC (0x07, Local1)
                            }

                            If (LNotEqual (Local0, 0xFF))
                            {
                                \WBEC (0x06, Local0)
                            }
                        }

                        If (LEqual (Arg0, 0x03)) {}
                        If (LEqual (Arg0, 0x07))
                        {
                            Sleep (0x01F4)
                        }
                    }

                    Method (EVNT, 1, NotSerialized)
                    {
                        If (\H8DR)
                        {
                            If (Arg0)
                            {
                                Or (HAM5, 0x04, HAM5) /* \_SB_.PCI0.LPC_.EC__.HAM5 */
                            }
                            Else
                            {
                                And (HAM5, 0xFB, HAM5) /* \_SB_.PCI0.LPC_.EC__.HAM5 */
                            }
                        }
                        Else
                        {
                            If (Arg0)
                            {
                                \MBEC (0x15, 0xFF, 0x04)
                            }
                            Else
                            {
                                \MBEC (0x15, 0xFB, 0x00)
                            }
                        }
                    }

                    Name (USPS, 0x00)
                    PowerResource (PUBS, 0x03, 0x0000)
                    {
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (\H8DR)
                            {
                                Store (HUBS, Local0)
                            }
                            Else
                            {
                                And (\RBEC (0x3B), 0x10, Local0)
                            }

                            If (Local0)
                            {
                                Return (0x01)
                            }
                            Else
                            {
                                Return (0x00)
                            }
                        }

                        Method (_ON, 0, NotSerialized)  // _ON_: Power On
                        {
                            Store (0x64, Local0)
                            While (LAnd (USPS, Local0))
                            {
                                Sleep (0x01)
                                Decrement (Local0)
                            }

                            If (\H8DR)
                            {
                                Store (0x01, HUBS) /* \_SB_.PCI0.LPC_.EC__.HUBS */
                            }
                            Else
                            {
                                \MBEC (0x3B, 0xFF, 0x10)
                            }
                        }

                        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                        {
                            Store (0x01, USPS) /* \_SB_.PCI0.LPC_.EC__.USPS */
                            If (\H8DR)
                            {
                                Store (0x00, HUBS) /* \_SB_.PCI0.LPC_.EC__.HUBS */
                            }
                            Else
                            {
                                \MBEC (0x3B, 0xEF, 0x00)
                            }

                            Sleep (0x14)
                            Store (0x00, USPS) /* \_SB_.PCI0.LPC_.EC__.USPS */
                        }
                    }

                    Method (CHKS, 0, NotSerialized)
                    {
                        Store (0x03E8, Local0)
                        While (HMPR)
                        {
                            Sleep (0x01)
                            Decrement (Local0)
                            If (LNot (Local0))
                            {
                                Return (0x8080)
                            }
                        }

                        If (HMDN)
                        {
                            Return (Zero)
                        }

                        Return (0x8081)
                    }

                    Method (LPMD, 0, NotSerialized)
                    {
                        Store (0x00, Local0)
                        Store (0x00, Local1)
                        Store (0x00, Local2)
                        If (\H8DR)
                        {
                            If (HPAC)
                            {
                                If (HPLO)
                                {
                                    Store (\LPST, Local0)
                                }
                                Else
                                {
                                    If (LLess (HWAT, 0x5A))
                                    {
                                        If (HB0A)
                                        {
                                            If (LOr (And (HB0S, 0x10), LLess (And (HB0S, 0x07), 0x02)))
                                            {
                                                Store (0x01, Local1)
                                            }
                                        }
                                        Else
                                        {
                                            Store (0x01, Local1)
                                        }

                                        If (HB1A)
                                        {
                                            If (LOr (And (HB1S, 0x10), LLess (And (HB1S, 0x07), 0x02)))
                                            {
                                                Store (0x01, Local2)
                                            }
                                        }
                                        Else
                                        {
                                            Store (0x01, Local2)
                                        }

                                        If (LAnd (Local1, Local2))
                                        {
                                            Store (\LPST, Local0)
                                        }
                                    }
                                }
                            }
                        }
                        Else
                        {
                            If (And (\RBEC (0x46), 0x10))
                            {
                                If (And (\RBEC (0x34), 0x80))
                                {
                                    Store (\LPST, Local0)
                                }
                                Else
                                {
                                    If (LLess (\RBEC (0xC9), 0x5A))
                                    {
                                        Store (\RBEC (0x38), Local3)
                                        If (And (Local3, 0x80))
                                        {
                                            If (LOr (And (Local3, 0x10), LLess (And (Local3, 0x07), 0x02)))
                                            {
                                                Store (0x01, Local1)
                                            }
                                        }
                                        Else
                                        {
                                            Store (0x01, Local2)
                                        }

                                        Store (\RBEC (0x39), Local3)
                                        If (And (Local3, 0x80))
                                        {
                                            If (LOr (And (Local3, 0x10), LLess (And (Local3, 0x07), 0x02)))
                                            {
                                                Store (0x01, Local1)
                                            }
                                        }
                                        Else
                                        {
                                            Store (0x01, Local2)
                                        }

                                        If (LAnd (Local1, Local2))
                                        {
                                            Store (\LPST, Local0)
                                        }
                                    }
                                }
                            }
                        }

                        Return (Local0)
                    }

                    Method (CLPM, 0, NotSerialized)
                    {
                        If (And (\_PR.CFGD, 0x01))
                        {
                            If (LOr (\OSPX, \CPPX))
                            {
                                \PNTF (0x80)
                            }
                            Else
                            {
                                Store (LPMD (), Local0)
                                If (Local0)
                                {
                                    \STEP (0x04)
                                }
                                Else
                                {
                                    \STEP (0x05)
                                }
                            }
                        }
                    }

                    Mutex(MCPU, 0)
                    Method (_Q10, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x01))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1001)
                        }
                    }

                    Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Noop
                    }

                    Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x02))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1002)
                        }
                    }

                    Method (_Q13, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.DHKC)
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1004)
                        }
                        Else
                        {
                            Notify (\_SB.SLPB, 0x80) // Status Change
                        }
                    }

                    Method (_Q64, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        
                        Notify(\_SB.PCI0.LPC.KBD, 0x0169)
                        Notify(\_SB.PCI0.LPC.KBD, 0x01e9)

                    }

                    Method (_Q65, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x20))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1006)
                        }
                    }

                    Method (_Q16, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        
                        Notify(\_SB.PCI0.LPC.KBD, 0x026e)
                        Notify(\_SB.PCI0.LPC.KBD, 0x02ee)

                    }

                    Method (_Q17, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x80))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1008)
                        }
                        Else
                        {
                            If (LNot (\WNTF))
                            {
                                VEXP ()
                            }
                        }
                    }

                    Method (_Q18, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x0100))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1009)
                        }

                        Noop
                    }

                    Method (_Q1A, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x0400))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x100B)
                        }
                    }

                    Method (_Q1B, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x100C)
                    }

                    Method (_Q62, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x1000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x100D)
                        }
                    }

                    Method (_Q60, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x2000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x100E)
                        }
                    }

                    Method (_Q61, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x4000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x100F)
                        }
                    }

                    Method (_Q1F, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x00020000))
                        {
                            If (And (PKLI, 0x0C00))
                            {
                                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1012)
                            }
                        }

                        \UCMS (0x0E)
                    }

                    Method (_Q1C, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x01000000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1019)
                        }
                    }

                    Method (_Q1D, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x02000000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x101A)
                        }
                    }

                    Method (_Q66, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        
                        Notify(\_SB.PCI0.LPC.KBD, 0x0164)
                        Notify(\_SB.PCI0.LPC.KBD, 0x01e4)

                    }

                    Method (_Q67, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        
                        Notify(\_SB.PCI0.LPC.KBD, 0x0165)
                        Notify(\_SB.PCI0.LPC.KBD, 0x01e5)

                    }

                    Method (_Q68, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        
                        Notify(\_SB.PCI0.LPC.KBD, 0x0166)
                        Notify(\_SB.PCI0.LPC.KBD, 0x01e6)

                    }

                    Method (_Q69, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        
                        Notify(\_SB.PCI0.LPC.KBD, 0x0167)
                        Notify(\_SB.PCI0.LPC.KBD, 0x01e7)

                    }

                    Method (_Q26, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (LEqual (DGCS, 0x01))
                        {
                            Notify (\_SB.PCI0.PEG.VID, 0xD1) // Hardware-Specific
                            Store (0x00, DGCS) /* \_SB_.PCI0.LPC_.EC__.DGCS */
                            \PNTF (0x80)
                        }

                        If (VIGD)
                        {
                            If (\WVIS)
                            {
                                \VBTD ()
                            }

                            \_SB.PCI0.LPC.EC.BRNS ()
                        }
                        Else
                        {
                            \UCMS (0x12)
                        }

                        Sleep (0x01F4)
                        Notify (AC, 0x80) // Status Change
                        Notify (\_TZ.THM0, 0x80) // Thermal Status Change
                        If (\WXPF)
                        {
                            Acquire (MCPU, 0xFFFF)
                        }

                        Store (0x01, PWRS) /* \PWRS */
                        If (And (\_PR.CFGD, 0x01))
                        {
                            If (LOr (\OSPX, \CPPX))
                            {
                                \PNTF (0x80)
                            }
                        }

                        If (\WXPF)
                        {
                            Sleep (0x64)
                        }

                        If (\OSC4)
                        {
                            \PNTF (0x81)
                        }

                        If (\WXPF)
                        {
                            Release (MCPU)
                        }

                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6040)
                        ATMC ()
                    }

                    Method (_Q27, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (VIGD)
                        {
                            If (\WVIS)
                            {
                                \VBTD ()
                            }

                            \_SB.PCI0.LPC.EC.BRNS ()
                        }
                        Else
                        {
                            \UCMS (0x12)
                        }

                        If (\_SB.PCI0.PEG.VID.ISOP ())
                        {
                            Notify (\_SB.PCI0.PEG.VID, 0xDF) // Hardware-Specific
                        }

                        Sleep (0x01F4)
                        Notify (AC, 0x80) // Status Change
                        Notify (\_TZ.THM0, 0x80) // Thermal Status Change
                        If (\WXPF)
                        {
                            Acquire (MCPU, 0xFFFF)
                        }

                        Store (0x00, PWRS) /* \PWRS */
                        If (And (\_PR.CFGD, 0x01))
                        {
                            If (LOr (\OSPX, \CPPX))
                            {
                                \PNTF (0x80)
                            }
                        }

                        If (\WXPF)
                        {
                            Sleep (0x64)
                        }

                        If (\OSC4)
                        {
                            \PNTF (0x81)
                        }

                        If (\WXPF)
                        {
                            Release (MCPU)
                        }

                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6040)
                        ATMC ()
                    }

                    Method (_Q2A, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        \VCMS (0x01, \_SB.LID._LID ())
                        If (LEqual (\ILNF, 0x00))
                        {
                            If (\IOST)
                            {
                                If (LNot (\ISOC (0x00)))
                                {
                                    Store (0x00, \IOST)
                                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x60D0)
                                }
                            }

                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x5002)
                            If (LEqual (\PLUX, 0x00))
                            {
                                If (VIGD)
                                {
                                    \_SB.PCI0.VID.GLIS (0x01)
                                    \_SB.PCI0.VID.VLOC (0x01)
                                }
                                Else
                                {
                                    \_SB.PCI0.PEG.VID.VLOC (0x01)
                                }

                                Notify (\_SB.LID, 0x80) // Status Change
                            }
                        }
                    }

                    Method (_Q2B, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        \UCMS (0x0D)
                        \VCMS (0x01, \_SB.LID._LID ())
                        If (LEqual (\ILNF, 0x00))
                        {
                            If (LAnd (\IOEN, LNot (\IOST)))
                            {
                                If (LNot (\ISOC (0x01)))
                                {
                                    Store (0x01, \IOST)
                                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x60D0)
                                }
                            }

                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x5001)
                            If (LEqual (\PLUX, 0x00))
                            {
                                If (VIGD)
                                {
                                    \_SB.PCI0.VID.GLIS (0x00)
                                }
                                Else
                                {
                                    \_SB.PCI0.PEG.VID.VLOC (0x00)
                                }

                                Notify (\_SB.LID, 0x80) // Status Change
                            }
                        }
                    }

                    Method (_Q3D, 0, NotSerialized)  // _Qxx: EC Query
                    {
                    }

                    Method (_Q48, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (And (\_PR.CFGD, 0x01))
                        {
                            If (LOr (\OSPX, \CPPX))
                            {
                                \PNTF (0x80)
                            }
                            Else
                            {
                                \STEP (0x04)
                            }

                            Store (0x01, \_SB.PCI0.LPC.EC.CALM)
                        }
                    }

                    Method (_Q49, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (And (\_PR.CFGD, 0x01))
                        {
                            If (LOr (\OSPX, \CPPX))
                            {
                                \PNTF (0x80)
                            }
                            Else
                            {
                                \STEP (0x05)
                            }
                        }
                    }

                    Method (_Q7F, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Fatal (0x01, 0x80010000, 0x1E99)
                    }

                    Method (_Q4E, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6011)
                    }

                    Method (_Q4F, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6012)
                    }

                    Method (_Q46, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6012)
                    }

                    OperationRegion (PRT0, SystemIO, 0x62, 0x04)
                    Field (PRT0, DWordAcc, Lock, Preserve)
                    {
                        P62H,   32
                    }

                    Method (P6XH, 2, NotSerialized)
                    {
                        If (LEqual (Arg0, 0x00))
                        {
                            Store (Or (And (P62D, 0xFFFFFF00), Arg1), P62D) /* \P62D */
                        }

                        If (LEqual (Arg0, 0x01))
                        {
                            Store (Or (And (P62D, 0xFFFF00FF), ShiftLeft (Arg1, 0x08)), P62D) /* \P62D */
                        }

                        If (LEqual (Arg0, 0x02))
                        {
                            Store (Or (And (P62D, 0xFF00FFFF), ShiftLeft (Arg1, 0x10)), P62D) /* \P62D */
                        }

                        If (LEqual (Arg0, 0x03))
                        {
                            Store (Or (And (P62D, 0x00FFFFFF), ShiftLeft (Arg1, 0x18)), P62D) /* \P62D */
                        }

                        Store (P62D, P62H) /* \_SB_.PCI0.LPC_.EC__.P62H */
                    }

                    Method (_Q3E, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Store (0x01, DGCS) /* \_SB_.PCI0.LPC_.EC__.DGCS */
                        Notify (\_SB.PCI0.PEG.VID, 0xD5) // Hardware-Specific
                        \PNTF (0x80)
                    }

                    Method (_Q3C, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (LEqual (DGCS, 0x01))
                        {
                            Notify (\_SB.PCI0.PEG.VID, 0xD1) // Hardware-Specific
                            Store (0x00, DGCS) /* \_SB_.PCI0.LPC_.EC__.DGCS */
                        }

                        \PNTF (0x80)
                    }

                    Method (_Q22, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CLPM ()
                        If (HB0A)
                        {
                            Notify (BAT0, 0x80) // Status Change
                        }

                        If (HB1A)
                        {
                            Notify (BAT1, 0x80) // Status Change
                        }
                    }

                    Method (_Q4A, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CLPM ()
                        Notify (BAT0, 0x81) // Information Change
                    }

                    Method (_Q4B, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CLPM ()
                        Notify (BAT0, 0x80) // Status Change
                    }

                    Method (_Q4D, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        Sleep (0x0320)
                        CLPM ()
                        If (\BT2T)
                        {
                            If (LEqual (^BAT1.SBLI, 0x01))
                            {
                                Sleep (0x0A)
                                If (LAnd (HB1A, LEqual (SLUL, 0x00)))
                                {
                                    Store (0x01, ^BAT1.XB1S) /* \_SB_.PCI0.LPC_.EC__.BAT1.XB1S */
                                    Notify (\_SB.PCI0.LPC.EC.BAT1, 0x01) // Device Check
                                }
                            }
                            Else
                            {
                                If (LEqual (SLUL, 0x01))
                                {
                                    Store (0x00, ^BAT1.XB1S) /* \_SB_.PCI0.LPC_.EC__.BAT1.XB1S */
                                    Notify (\_SB.PCI0.LPC.EC.BAT1, 0x03) // Eject Request
                                }
                            }
                        }

                        If (And (^BAT1.B1ST, ^BAT1.XB1S))
                        {
                            Notify (BAT1, 0x80) // Status Change
                        }
                    }

                    Method (_Q24, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        CLPM ()
                        Notify (BAT0, 0x80) // Status Change
                    }

                    Method (_Q25, 0, NotSerialized)  // _Qxx: EC Query
                    {
                        If (And (^BAT1.B1ST, ^BAT1.XB1S))
                        {
                            CLPM ()
                            Notify (BAT1, 0x80) // Status Change
                        }
                    }

                    Method (BATW, 1, NotSerialized)
                    {
                        If (\BT2T)
                        {
                            Store (\_SB.PCI0.LPC.EC.BAT1.XB1S, Local0)
                            If (LAnd (HB1A, LNot (SLUL)))
                            {
                                Store (0x01, Local1)
                            }
                            Else
                            {
                                Store (0x00, Local1)
                            }

                            If (XOr (Local0, Local1))
                            {
                                Store (Local1, \_SB.PCI0.LPC.EC.BAT1.XB1S)
                                Notify (\_SB.PCI0.LPC.EC.BAT1, 0x01) // Device Check
                            }
                        }
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                        BR00,8,BR01,8, 
                        BF00,8,BF01,8, 
                        SBAE,   16, 
                        SBRS,   16, 
                        BA00,8,BA01,8, 
                        BV00,8,BV01,8, 
                        SBAF,   16, 
                        SBBS,   16
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                        BB00,8,BB01,8, 
                        SBMD,   16, 
                        SBCC,   16
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                        BD00,8,BD01,8, 
                        SB00,8,SB01,8, 
                        SBOM,   16, 
                        SBSI,   16, 
                        SBDT,   16, 
                        BS00,8,BS01,8
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                        SH00,8,SH01,8,SH02,8,SH03,8
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                        BMNX,128,//SBMN,128
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                        BDNX,128,//SBDN,128
                    }

                    Mutex(BATM, 0)
                    Method (GBIF, 3, NotSerialized)
                    {
                        Acquire (BATM, 0xFFFF)
                        If (Arg2)
                        {
                            Or (Arg0, 0x01, HIID) /* \_SB_.PCI0.LPC_.EC__.HIID */
                            Store (B1B2(BB00,BB01), Local7)
                            ShiftRight (Local7, 0x0F, Local7)
                            XOr (Local7, 0x01, Index (Arg1, 0x00))
                            Store (Arg0, HIID) /* \_SB_.PCI0.LPC_.EC__.HIID */
                            If (Local7)
                            {
                                Multiply (B1B2(BF00,BF01), 0x0A, Local1)
                            }
                            Else
                            {
                                Store (B1B2(BF00,BF01), Local1)
                            }

                            Store (Local1, Index (Arg1, 0x02))
                            Or (Arg0, 0x02, HIID) /* \_SB_.PCI0.LPC_.EC__.HIID */
                            If (Local7)
                            {
                                Multiply (B1B2(BD00,BD01), 0x0A, Local0)
                            }
                            Else
                            {
                                Store (B1B2(BD00,BD01), Local0)
                            }

                            Store (Local0, Index (Arg1, 0x01))
                            Divide (Local1, 0x14, Local2, Index (Arg1, 0x05))
                            If (Local7)
                            {
                                Store (0xC8, Index (Arg1, 0x06))
                            }
                            Else
                            {
                                If (B1B2(SB00,SB01))
                                {
                                    Divide (0x00030D40, B1B2(SB00,SB01), Local2, Index (Arg1, 0x06))
                                }
                                Else
                                {
                                    Store (0x00, Index (Arg1, 0x06))
                                }
                            }

                            Store (B1B2(SB00,SB01), Index (Arg1, 0x04))
                            Store (B1B2(BS00,BS01), Local0)
                            Name (SERN, Buffer (0x06)
                            {
                                "     "
                            })
                            Store (0x04, Local2)
                            While (Local0)
                            {
                                Divide (Local0, 0x0A, Local1, Local0)
                                Add (Local1, 0x30, Index (SERN, Local2))
                                Decrement (Local2)
                            }

                            Store (SERN, Index (Arg1, 0x0A))
                            Or (Arg0, 0x06, HIID) /* \_SB_.PCI0.LPC_.EC__.HIID */
                            Store (RECB(0xA0,128), Index (Arg1, 0x09))
                            Or (Arg0, 0x04, HIID) /* \_SB_.PCI0.LPC_.EC__.HIID */
                            Name (BTYP, Buffer (0x05)
                            {
                                 0x00, 0x00, 0x00, 0x00, 0x00                     /* ..... */
                            })
                            Store (B1B4(SH00,SH01,SH02,SH03), BTYP) /* \_SB_.PCI0.LPC_.EC__.GBIF.BTYP */
                            Store (BTYP, Index (Arg1, 0x0B))
                            Or (Arg0, 0x05, HIID) /* \_SB_.PCI0.LPC_.EC__.HIID */
                            Store (RECB(0xA0,128), Index (Arg1, 0x0C))
                        }
                        Else
                        {
                            Store (0xFFFFFFFF, Index (Arg1, 0x01))
                            Store (0x00, Index (Arg1, 0x05))
                            Store (0x00, Index (Arg1, 0x06))
                            Store (0xFFFFFFFF, Index (Arg1, 0x02))
                        }

                        Release (BATM)
                        Return (Arg1)
                    }

                    Method (GBST, 4, NotSerialized)
                    {
                        Acquire (BATM, 0xFFFF)
                        If (And (Arg1, 0x20))
                        {
                            Store (0x02, Local0)
                        }
                        Else
                        {
                            If (And (Arg1, 0x40))
                            {
                                Store (0x01, Local0)
                            }
                            Else
                            {
                                Store (0x00, Local0)
                            }
                        }

                        If (And (Arg1, 0x07)) {}
                        Else
                        {
                            Or (Local0, 0x04, Local0)
                        }

                        If (LEqual (And (Arg1, 0x07), 0x07))
                        {
                            Store (0x04, Local0)
                            Store (0x00, Local1)
                            Store (0x00, Local2)
                            Store (0x00, Local3)
                        }
                        Else
                        {
                            Store (Arg0, HIID) /* \_SB_.PCI0.LPC_.EC__.HIID */
                            Store (B1B2(BV00,BV01), Local3)
                            If (Arg2)
                            {
                                Multiply (B1B2(BR00,BR01), 0x0A, Local2)
                            }
                            Else
                            {
                                Store (B1B2(BR00,BR01), Local2)
                            }

                            Store (B1B2(BA00,BA01), Local1)
                            If (LGreaterEqual (Local1, 0x8000))
                            {
                                If (And (Local0, 0x01))
                                {
                                    Subtract (0x00010000, Local1, Local1)
                                }
                                Else
                                {
                                    Store (0x00, Local1)
                                }
                            }
                            Else
                            {
                                If (LNot (And (Local0, 0x02)))
                                {
                                    Store (0x00, Local1)
                                }
                            }

                            If (Arg2)
                            {
                                Multiply (Local3, Local1, Local1)
                                Divide (Local1, 0x03E8, Local7, Local1)
                            }
                        }

                        Store (Local0, Index (Arg3, 0x00))
                        Store (Local1, Index (Arg3, 0x01))
                        Store (Local2, Index (Arg3, 0x02))
                        Store (Local3, Index (Arg3, 0x03))
                        Release (BATM)
                        Return (Arg3)
                    }

                    Device (BAT0)
                    {
                        Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
                        Name (_UID, 0x00)  // _UID: Unique ID
                        Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                        {
                            \_SB
                        })
                        Name (B0ST, 0x00)
                        Name (BT0I, Package (0x0D)
                        {
                            0x00, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0x01, 
                            0x2A30, 
                            0x00, 
                            0x00, 
                            0x01, 
                            0x01, 
                            "", 
                            "", 
                            "", 
                            ""
                        })
                        Name (BT0P, Package (0x04) {})
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (\H8DR)
                            {
                                Store (HB0A, B0ST) /* \_SB_.PCI0.LPC_.EC__.BAT0.B0ST */
                            }
                            Else
                            {
                                If (And (\RBEC (0x38), 0x80))
                                {
                                    Store (0x01, B0ST) /* \_SB_.PCI0.LPC_.EC__.BAT0.B0ST */
                                }
                                Else
                                {
                                    Store (0x00, B0ST) /* \_SB_.PCI0.LPC_.EC__.BAT0.B0ST */
                                }
                            }

                            If (B0ST)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x0F)
                            }
                        }

                        Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
                        {
                            Store (0x00, Local7)
                            Store (0x0A, Local6)
                            While (LAnd (LNot (Local7), Local6))
                            {
                                If (HB0A)
                                {
                                    If (LEqual (And (HB0S, 0x07), 0x07))
                                    {
                                        Sleep (0x03E8)
                                        Decrement (Local6)
                                    }
                                    Else
                                    {
                                        Store (0x01, Local7)
                                    }
                                }
                                Else
                                {
                                    Store (0x00, Local6)
                                }
                            }

                            Return (GBIF (0x00, BT0I, Local7))
                        }

                        Method (_BST, 0, NotSerialized)  // _BST: Battery Status
                        {
                            XOr (DerefOf (Index (BT0I, 0x00)), 0x01, Local0)
                            Return (GBST (0x00, HB0S, Local0, BT0P))
                        }

                        Method (_BTP, 1, NotSerialized)  // _BTP: Battery Trip Point
                        {
                            And (HAM4, 0xEF, HAM4) /* \_SB_.PCI0.LPC_.EC__.HAM4 */
                            If (Arg0)
                            {
                                Store (Arg0, Local1)
                                If (LNot (DerefOf (Index (BT0I, 0x00))))
                                {
                                    Divide (Local1, 0x0A, Local0, Local1)
                                }

                                And (Local1, 0xFF, HT0L) /* \_SB_.PCI0.LPC_.EC__.HT0L */
                                And (ShiftRight (Local1, 0x08), 0xFF, HT0H) /* \_SB_.PCI0.LPC_.EC__.HT0H */
                                Or (HAM4, 0x10, HAM4) /* \_SB_.PCI0.LPC_.EC__.HAM4 */
                            }
                        }
                    }

                    Device (BAT1)
                    {
                        Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
                        Name (_UID, 0x01)  // _UID: Unique ID
                        Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                        {
                            \_SB
                        })
                        Name (B1ST, 0x00)
                        Name (SBLI, 0x01)
                        Name (XB1S, 0x00)
                        Name (BT1I, Package (0x0D)
                        {
                            0x00, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0x01, 
                            0x2A30, 
                            0x00, 
                            0x00, 
                            0x01, 
                            0x01, 
                            "", 
                            "", 
                            "", 
                            ""
                        })
                        Name (BT1P, Package (0x04) {})
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (\H8DR)
                            {
                                If (HB1A)
                                {
                                    Store (0x01, B1ST) /* \_SB_.PCI0.LPC_.EC__.BAT1.B1ST */
                                    If (\BT2T)
                                    {
                                        If (SLUL)
                                        {
                                            Store (0x01, SBLI) /* \_SB_.PCI0.LPC_.EC__.BAT1.SBLI */
                                            Store (0x00, XB1S) /* \_SB_.PCI0.LPC_.EC__.BAT1.XB1S */
                                        }
                                        Else
                                        {
                                            Store (0x00, SBLI) /* \_SB_.PCI0.LPC_.EC__.BAT1.SBLI */
                                            Store (0x01, XB1S) /* \_SB_.PCI0.LPC_.EC__.BAT1.XB1S */
                                        }
                                    }
                                    Else
                                    {
                                        Store (0x01, XB1S) /* \_SB_.PCI0.LPC_.EC__.BAT1.XB1S */
                                    }
                                }
                                Else
                                {
                                    Store (0x00, B1ST) /* \_SB_.PCI0.LPC_.EC__.BAT1.B1ST */
                                    If (\BT2T)
                                    {
                                        Store (0x01, SBLI) /* \_SB_.PCI0.LPC_.EC__.BAT1.SBLI */
                                        Store (0x00, XB1S) /* \_SB_.PCI0.LPC_.EC__.BAT1.XB1S */
                                    }
                                    Else
                                    {
                                        Store (0x00, XB1S) /* \_SB_.PCI0.LPC_.EC__.BAT1.XB1S */
                                    }
                                }
                            }
                            Else
                            {
                                If (And (\RBEC (0x39), 0x80))
                                {
                                    Store (0x01, B1ST) /* \_SB_.PCI0.LPC_.EC__.BAT1.B1ST */
                                    If (\BT2T)
                                    {
                                        If (And (\RBEC (0x49), 0x01))
                                        {
                                            Store (0x01, SBLI) /* \_SB_.PCI0.LPC_.EC__.BAT1.SBLI */
                                            Store (0x00, XB1S) /* \_SB_.PCI0.LPC_.EC__.BAT1.XB1S */
                                        }
                                        Else
                                        {
                                            Store (0x00, SBLI) /* \_SB_.PCI0.LPC_.EC__.BAT1.SBLI */
                                            Store (0x01, XB1S) /* \_SB_.PCI0.LPC_.EC__.BAT1.XB1S */
                                        }
                                    }
                                    Else
                                    {
                                        Store (0x01, XB1S) /* \_SB_.PCI0.LPC_.EC__.BAT1.XB1S */
                                    }
                                }
                                Else
                                {
                                    Store (0x00, B1ST) /* \_SB_.PCI0.LPC_.EC__.BAT1.B1ST */
                                    If (\BT2T)
                                    {
                                        Store (0x01, SBLI) /* \_SB_.PCI0.LPC_.EC__.BAT1.SBLI */
                                        Store (0x00, XB1S) /* \_SB_.PCI0.LPC_.EC__.BAT1.XB1S */
                                    }
                                    Else
                                    {
                                        Store (0x00, XB1S) /* \_SB_.PCI0.LPC_.EC__.BAT1.XB1S */
                                    }
                                }
                            }

                            If (B1ST)
                            {
                                If (XB1S)
                                {
                                    Return (0x1F)
                                }
                                Else
                                {
                                    If (\WNTF)
                                    {
                                        Return (0x00)
                                    }
                                    Else
                                    {
                                        Return (0x1F)
                                    }
                                }
                            }
                            Else
                            {
                                If (\WNTF)
                                {
                                    Return (0x00)
                                }
                                Else
                                {
                                    Return (0x0F)
                                }
                            }
                        }

                        Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
                        {
                            Store (0x00, Local7)
                            Store (0x0A, Local6)
                            While (LAnd (LNot (Local7), Local6))
                            {
                                If (HB1A)
                                {
                                    If (LEqual (And (HB1S, 0x07), 0x07))
                                    {
                                        Sleep (0x03E8)
                                        Decrement (Local6)
                                    }
                                    Else
                                    {
                                        Store (0x01, Local7)
                                    }
                                }
                                Else
                                {
                                    Store (0x00, Local6)
                                }
                            }

                            Return (GBIF (0x10, BT1I, Local7))
                        }

                        Method (_BST, 0, NotSerialized)  // _BST: Battery Status
                        {
                            XOr (DerefOf (Index (BT1I, 0x00)), 0x01, Local0)
                            Return (GBST (0x10, HB1S, Local0, BT1P))
                        }

                        Method (_BTP, 1, NotSerialized)  // _BTP: Battery Trip Point
                        {
                            And (HAM4, 0xDF, HAM4) /* \_SB_.PCI0.LPC_.EC__.HAM4 */
                            If (Arg0)
                            {
                                Store (Arg0, Local1)
                                If (LNot (DerefOf (Index (BT1I, 0x00))))
                                {
                                    Divide (Local1, 0x0A, Local0, Local1)
                                }

                                And (Local1, 0xFF, HT1L) /* \_SB_.PCI0.LPC_.EC__.HT1L */
                                And (ShiftRight (Local1, 0x08), 0xFF, HT1H) /* \_SB_.PCI0.LPC_.EC__.HT1H */
                                Or (HAM4, 0x20, HAM4) /* \_SB_.PCI0.LPC_.EC__.HAM4 */
                            }
                        }
                    }

                    Device (AC)
                    {
                        Name (_HID, "ACPI0003" /* Power Source Device */)  // _HID: Hardware ID
                        Name (_UID, 0x00)  // _UID: Unique ID
                        Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                        {
                            \_SB
                        })
                        Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
                        {
                            If (\H8DR)
                            {
                                Return (HPAC) /* \_SB_.PCI0.LPC_.EC__.HPAC */
                            }
                            Else
                            {
                                If (And (\RBEC (0x46), 0x10))
                                {
                                    Return (0x01)
                                }
                                Else
                                {
                                    Return (0x00)
                                }
                            }
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }
                    }

                    Device (HKEY)
                    {
                        Name (_HID, EisaId ("LEN0068"))  // _HID: Hardware ID
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (MHKV, 0, NotSerialized)
                        {
                            Return (0x0100)
                        }

                        Name (DHKC, 0x00)
                        Name (DHKB, 0x01)
                        Mutex(XDHK, 0)
                        Name (DHKH, 0x00)
                        Name (DHKW, 0x00)
                        Name (DHKS, 0x00)
                        Name (DHKD, 0x00)
                        Name (DHKN, 0x0808)
                        Name (DHKT, 0x00)
                        Name (DHWW, 0x00)
                        Method (MHKA, 0, NotSerialized)
                        {
                            Return (0xFFFFFFFB)
                        }

                        Method (MHKN, 0, NotSerialized)
                        {
                            Return (DHKN) /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKN */
                        }

                        Method (MHKK, 1, NotSerialized)
                        {
                            If (DHKC)
                            {
                                Return (And (DHKN, Arg0))
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Method (MHKM, 2, NotSerialized)
                        {
                            Acquire (XDHK, 0xFFFF)
                            If (LGreater (Arg0, 0x20))
                            {
                                Noop
                            }
                            Else
                            {
                                ShiftLeft (One, Decrement (Arg0), Local0)
                                If (And (Local0, 0xFFFFFFFB))
                                {
                                    If (Arg1)
                                    {
                                        Or (Local0, DHKN, DHKN) /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKN */
                                    }
                                    Else
                                    {
                                        And (DHKN, XOr (Local0, 0xFFFFFFFF), DHKN) /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKN */
                                    }
                                }
                                Else
                                {
                                    Noop
                                }
                            }

                            Release (XDHK)
                        }

                        Method (MHKS, 0, NotSerialized)
                        {
                            Notify (\_SB.SLPB, 0x80) // Status Change
                        }

                        Method (MHKC, 1, NotSerialized)
                        {
                            Store (Arg0, DHKC) /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKC */
                        }

                        Method (MHKP, 0, NotSerialized)
                        {
                            Acquire (XDHK, 0xFFFF)
                            If (DHWW)
                            {
                                Store (DHWW, Local1)
                                Store (Zero, DHWW) /* \_SB_.PCI0.LPC_.EC__.HKEY.DHWW */
                            }
                            Else
                            {
                                If (DHKW)
                                {
                                    Store (DHKW, Local1)
                                    Store (Zero, DHKW) /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKW */
                                }
                                Else
                                {
                                    If (DHKD)
                                    {
                                        Store (DHKD, Local1)
                                        Store (Zero, DHKD) /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKD */
                                    }
                                    Else
                                    {
                                        If (DHKS)
                                        {
                                            Store (DHKS, Local1)
                                            Store (Zero, DHKS) /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKS */
                                        }
                                        Else
                                        {
                                            If (DHKT)
                                            {
                                                Store (DHKT, Local1)
                                                Store (Zero, DHKT) /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKT */
                                            }
                                            Else
                                            {
                                                Store (DHKH, Local1)
                                                Store (Zero, DHKH) /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKH */
                                            }
                                        }
                                    }
                                }
                            }

                            Release (XDHK)
                            Return (Local1)
                        }

                        Method (MHKE, 1, NotSerialized)
                        {
                            Store (Arg0, DHKB) /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKB */
                            Acquire (XDHK, 0xFFFF)
                            Store (Zero, DHKH) /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKH */
                            Store (Zero, DHKW) /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKW */
                            Store (Zero, DHKS) /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKS */
                            Store (Zero, DHKD) /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKD */
                            Store (Zero, DHKT) /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKT */
                            Store (Zero, DHWW) /* \_SB_.PCI0.LPC_.EC__.HKEY.DHWW */
                            Release (XDHK)
                        }

                        Method (MHKQ, 1, NotSerialized)
                        {
                            If (DHKB)
                            {
                                If (DHKC)
                                {
                                    Acquire (XDHK, 0xFFFF)
                                    If (LLess (Arg0, 0x1000)) {}
                                    Else
                                    {
                                        If (LLess (Arg0, 0x2000))
                                        {
                                            Store (Arg0, DHKH) /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKH */
                                        }
                                        Else
                                        {
                                            If (LLess (Arg0, 0x3000))
                                            {
                                                Store (Arg0, DHKW) /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKW */
                                            }
                                            Else
                                            {
                                                If (LLess (Arg0, 0x4000))
                                                {
                                                    Store (Arg0, DHKS) /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKS */
                                                }
                                                Else
                                                {
                                                    If (LLess (Arg0, 0x5000))
                                                    {
                                                        Store (Arg0, DHKD) /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKD */
                                                    }
                                                    Else
                                                    {
                                                        If (LLess (Arg0, 0x6000))
                                                        {
                                                            Store (Arg0, DHKH) /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKH */
                                                        }
                                                        Else
                                                        {
                                                            If (LLess (Arg0, 0x7000))
                                                            {
                                                                Store (Arg0, DHKT) /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKT */
                                                            }
                                                            Else
                                                            {
                                                                If (LLess (Arg0, 0x8000))
                                                                {
                                                                    Store (Arg0, DHWW) /* \_SB_.PCI0.LPC_.EC__.HKEY.DHWW */
                                                                }
                                                                Else
                                                                {
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }

                                    Release (XDHK)
                                    Notify (HKEY, 0x80) // Status Change
                                }
                                Else
                                {
                                    If (LEqual (Arg0, 0x1004))
                                    {
                                        Notify (\_SB.SLPB, 0x80) // Status Change
                                    }
                                }
                            }
                        }

                        Method (MHKB, 1, NotSerialized)
                        {
                            If (LEqual (Arg0, 0x00))
                            {
                                \_SB.PCI0.LPC.EC.BEEP (0x11)
                                Store (0x00, \LIDB)
                            }
                            Else
                            {
                                If (LEqual (Arg0, 0x01))
                                {
                                    \_SB.PCI0.LPC.EC.BEEP (0x10)
                                    Store (0x01, \LIDB)
                                }
                                Else
                                {
                                }
                            }
                        }

                        Method (MHKD, 0, NotSerialized)
                        {
                            If (LEqual (\PLUX, 0x00))
                            {
                                If (VIGD)
                                {
                                    \_SB.PCI0.VID.VLOC (0x00)
                                }
                                Else
                                {
                                    \_SB.PCI0.PEG.VID.VLOC (0x00)
                                }
                            }
                        }

                        Method (MHQC, 1, NotSerialized)
                        {
                            If (\WNTF)
                            {
                                If (LEqual (Arg0, 0x00))
                                {
                                    Return (\CWAC)
                                }
                                Else
                                {
                                    If (LEqual (Arg0, 0x01))
                                    {
                                        Return (\CWAP)
                                    }
                                    Else
                                    {
                                        If (LEqual (Arg0, 0x02))
                                        {
                                            Return (\CWAT)
                                        }
                                        Else
                                        {
                                            Noop
                                        }
                                    }
                                }
                            }
                            Else
                            {
                                Noop
                            }

                            Return (0x00)
                        }

                        Method (MHGC, 0, NotSerialized)
                        {
                            If (\WNTF)
                            {
                                Acquire (XDHK, 0xFFFF)
                                If (CKC4 (0x00))
                                {
                                    Store (0x03, Local0)
                                }
                                Else
                                {
                                    Store (0x04, Local0)
                                }

                                Release (XDHK)
                                Return (Local0)
                            }
                            Else
                            {
                                Noop
                            }

                            Return (0x00)
                        }

                        Method (MHSC, 1, NotSerialized)
                        {
                            If (LAnd (\CWAC, \WNTF))
                            {
                                Acquire (XDHK, 0xFFFF)
                                If (\OSC4)
                                {
                                    If (LEqual (Arg0, 0x03))
                                    {
                                        If (LNot (\CWAS))
                                        {
                                            \PNTF (0x81)
                                            Store (0x01, \CWAS)
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (Arg0, 0x04))
                                        {
                                            If (\CWAS)
                                            {
                                                \PNTF (0x81)
                                                Store (0x00, \CWAS)
                                            }
                                        }
                                        Else
                                        {
                                            Noop
                                        }
                                    }
                                }

                                Release (XDHK)
                            }
                            Else
                            {
                                Noop
                            }
                        }

                        Method (CKC4, 1, NotSerialized)
                        {
                            Store (0x00, Local0)
                            If (\C4WR)
                            {
                                If (LNot (\C4AC))
                                {
                                    Or (Local0, 0x01, Local0)
                                }
                            }

                            If (\C4NA)
                            {
                                Or (Local0, 0x02, Local0)
                            }

                            If (LAnd (\CWAC, \CWAS))
                            {
                                Or (Local0, 0x04, Local0)
                            }

                            And (Local0, Not (Arg0), Local0)
                            Return (Local0)
                        }

                        Method (MHQE, 0, NotSerialized)
                        {
                            Return (\C4WR)
                        }

                        Method (MHGE, 0, NotSerialized)
                        {
                            If (LAnd (\C4WR, \C4AC))
                            {
                                Return (0x04)
                            }

                            Return (0x03)
                        }

                        Method (MHSE, 1, NotSerialized)
                        {
                            If (\C4WR)
                            {
                                Store (\C4AC, Local0)
                                If (LEqual (Arg0, 0x03))
                                {
                                    Store (0x00, \C4AC)
                                    If (XOr (Local0, \C4AC))
                                    {
                                        If (\OSC4)
                                        {
                                            \PNTF (0x81)
                                        }
                                    }
                                }
                                Else
                                {
                                    If (LEqual (Arg0, 0x04))
                                    {
                                        Store (0x01, \C4AC)
                                        If (XOr (Local0, \C4AC))
                                        {
                                            If (\OSC4)
                                            {
                                                \PNTF (0x81)
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        Method (UAWO, 1, NotSerialized)
                        {
                            Return (\UAWS (Arg0))
                        }

                        Method (MLCG, 1, NotSerialized)
                        {
                            Store (\KBLS (0x00, 0x00), Local0)
                            Return (Local0)
                        }

                        Method (MLCS, 1, NotSerialized)
                        {
                            Store (\KBLS (0x01, Arg0), Local0)
                            If (LNot (And (Local0, 0x80000000)))
                            {
                                If (And (Arg0, 0x00010000))
                                {
                                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6001)
                                }
                                Else
                                {
                                    If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x00020000))
                                    {
                                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1012)
                                    }
                                }
                            }

                            Return (Local0)
                        }

                        Method (DSSG, 1, NotSerialized)
                        {
                            Or (0x0400, \PDCI, Local0)
                            Return (Local0)
                        }

                        Method (DSSS, 1, NotSerialized)
                        {
                            Or (\PDCI, Arg0, \PDCI)
                        }

                        Method (SBSG, 1, NotSerialized)
                        {
                            Return (\SYBC (0x00, 0x00))
                        }

                        Method (SBSS, 1, NotSerialized)
                        {
                            Return (\SYBC (0x01, Arg0))
                        }

                        Method (PBLG, 1, NotSerialized)
                        {
                            Store (\BRLV, Local0)
                            Or (Local0, 0x0F00, Local1)
                            Return (Local1)
                        }

                        Method (PBLS, 1, NotSerialized)
                        {
                            Store (Arg0, \BRLV)
                            If (\VIGD)
                            {
                                \_SB.PCI0.LPC.EC.BRNS ()
                            }
                            Else
                            {
                                \VBRC (\BRLV)
                            }

                            If (LNot (\NBCF))
                            {
                                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6050)
                            }

                            Return (0x00)
                        }

                        Method (PMSG, 1, NotSerialized)
                        {
                            Store (\PRSM (0x00, 0x00), Local0)
                            Return (Local0)
                        }

                        Method (PMSS, 1, NotSerialized)
                        {
                            \PRSM (0x01, Arg0)
                            Return (0x00)
                        }

                        Method (ISSG, 1, NotSerialized)
                        {
                            Store (\ISSP, Local0)
                            If (\ISSP)
                            {
                                Or (Local0, 0x01000000, Local0)
                                Or (Local0, ShiftLeft (\ISFS, 0x19), Local0)
                            }

                            Or (Local0, 0x80, Local0)
                            Or (Local0, And (\ISCG, 0x30), Local0)
                            Return (Local0)
                        }

                        Method (ISSS, 1, NotSerialized)
                        {
                            Store (Arg0, \ISCG)
                            Return (0x00)
                        }

                        Method (FFSG, 1, NotSerialized)
                        {
                            Return (\IFRS (0x00, 0x00))
                        }

                        Method (FFSS, 1, NotSerialized)
                        {
                            \IFRS (0x01, Arg0)
                            Return (0x00)
                        }

                        Method (GMKS, 0, NotSerialized)
                        {
                            Store (And (0x01, \_SB.PCI0.LPC.EC.FNKC), Local0)
                            Or (Local0, 0x0200, Local0)
                            Return (Local0)
                        }

                        Method (SMKS, 1, NotSerialized)
                        {
                            If (And (Arg0, 0x01))
                            {
                                Store (0x01, \_SB.PCI0.LPC.EC.FNKC)
                            }
                            Else
                            {
                                Store (0x00, \_SB.PCI0.LPC.EC.FNKC)
                            }

                            Return (0x00)
                        }

                        Method (INSG, 1, NotSerialized)
                        {
                            Store (\IOEN, Local0)
                            Or (Local0, ShiftLeft (\IOST, 0x07), Local0)
                            Or (Local0, ShiftLeft (\IOCP, 0x08), Local0)
                            Or (Local0, 0x10000000, Local0)
                            Return (Local0)
                        }

                        Method (INSS, 1, NotSerialized)
                        {
                            If (And (Arg0, 0x10000000))
                            {
                                If (\IOCP)
                                {
                                    Store (ShiftRight (And (Arg0, 0x80), 0x07), Local0)
                                    If (LNot (\EZRC (Local0)))
                                    {
                                        Store (Local0, \IOST)
                                    }
                                }

                                Return (0x00)
                            }

                            If (LAnd (\IOCP, And (Arg0, 0x01)))
                            {
                                Store (0x01, \IOEN)
                            }
                            Else
                            {
                                Store (0x00, \IOEN)
                                If (\IOST)
                                {
                                    If (LNot (\ISOC (0x00)))
                                    {
                                        Store (0x00, \IOST)
                                    }
                                }
                            }

                            Return (0x00)
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC.HKEY)
                    {
                        Name (INDV, 0x00)
                        Method (MHQI, 0, NotSerialized)
                        {
                            If (And (\IPMS, 0x01))
                            {
                                Or (INDV, 0x01, INDV) /* \_SB_.PCI0.LPC_.EC__.HKEY.INDV */
                            }

                            If (And (\IPMS, 0x02))
                            {
                                Or (INDV, 0x02, INDV) /* \_SB_.PCI0.LPC_.EC__.HKEY.INDV */
                            }

                            If (And (\IPMS, 0x04))
                            {
                                Or (INDV, 0x0100, INDV) /* \_SB_.PCI0.LPC_.EC__.HKEY.INDV */
                            }

                            If (And (\IPMS, 0x08))
                            {
                                Or (INDV, 0x0200, INDV) /* \_SB_.PCI0.LPC_.EC__.HKEY.INDV */
                            }

                            If (And (\IPMS, 0x10))
                            {
                                Or (INDV, 0x04, INDV) /* \_SB_.PCI0.LPC_.EC__.HKEY.INDV */
                            }

                            Return (INDV) /* \_SB_.PCI0.LPC_.EC__.HKEY.INDV */
                        }

                        Method (MHGI, 1, NotSerialized)
                        {
                            Name (RETB, Buffer (0x10) {})
                            CreateByteField (RETB, 0x00, MHGS)
                            ShiftLeft (0x01, Arg0, Local0)
                            If (And (INDV, Local0))
                            {
                                If (LEqual (Arg0, 0x00))
                                {
                                    CreateField (RETB, 0x08, 0x78, BRBU)
                                    Store (\IPMB, BRBU) /* \_SB_.PCI0.LPC_.EC__.HKEY.MHGI.BRBU */
                                    Store (0x10, MHGS) /* \_SB_.PCI0.LPC_.EC__.HKEY.MHGI.MHGS */
                                }
                                Else
                                {
                                    If (LEqual (Arg0, 0x01))
                                    {
                                        CreateField (RETB, 0x08, 0x18, RRBU)
                                        Store (\IPMR, RRBU) /* \_SB_.PCI0.LPC_.EC__.HKEY.MHGI.RRBU */
                                        Store (0x04, MHGS) /* \_SB_.PCI0.LPC_.EC__.HKEY.MHGI.MHGS */
                                    }
                                    Else
                                    {
                                        If (LEqual (Arg0, 0x08))
                                        {
                                            CreateField (RETB, 0x10, 0x18, ODBU)
                                            CreateByteField (RETB, 0x01, MHGZ)
                                            Store (\IPMO, ODBU) /* \_SB_.PCI0.LPC_.EC__.HKEY.MHGI.ODBU */
                                            If (LAnd (LEqual (^^BSTS, 0x00), LEqual (^^BDEV, 0x03)))
                                            {
                                                Or (0x01, MHGZ, MHGZ) /* \_SB_.PCI0.LPC_.EC__.HKEY.MHGI.MHGZ */
                                                Or (0x02, MHGZ, MHGZ) /* \_SB_.PCI0.LPC_.EC__.HKEY.MHGI.MHGZ */
                                            }

                                            Store (0x05, MHGS) /* \_SB_.PCI0.LPC_.EC__.HKEY.MHGI.MHGS */
                                        }
                                        Else
                                        {
                                            If (LEqual (Arg0, 0x09))
                                            {
                                                CreateField (RETB, 0x10, 0x08, AUBU)
                                                Store (\IPMA, AUBU) /* \_SB_.PCI0.LPC_.EC__.HKEY.MHGI.AUBU */
                                                Store (0x01, Index (RETB, 0x01))
                                                Store (0x03, MHGS) /* \_SB_.PCI0.LPC_.EC__.HKEY.MHGI.MHGS */
                                            }
                                            Else
                                            {
                                                If (LEqual (Arg0, 0x02))
                                                {
                                                    Store (\VDYN (0x00, 0x00), Local1)
                                                    And (Local1, 0x0F, Index (RETB, 0x02))
                                                    ShiftRight (Local1, 0x04, Local1)
                                                    And (Local1, 0x0F, Index (RETB, 0x01))
                                                    Store (0x03, MHGS) /* \_SB_.PCI0.LPC_.EC__.HKEY.MHGI.MHGS */
                                                }
                                            }
                                        }
                                    }
                                }
                            }

                            Return (RETB) /* \_SB_.PCI0.LPC_.EC__.HKEY.MHGI.RETB */
                        }

                        Method (MHSI, 2, NotSerialized)
                        {
                            ShiftLeft (0x01, Arg0, Local0)
                            If (And (INDV, Local0))
                            {
                                If (LEqual (Arg0, 0x08))
                                {
                                    If (Arg1)
                                    {
                                        If (\H8DR)
                                        {
                                            Store (^^HPBU, Local1)
                                        }
                                        Else
                                        {
                                            And (\RBEC (0x47), 0x01, Local1)
                                        }

                                        If (LNot (Local1))
                                        {
                                            Store (^^BGID (0x00), ^^BDEV) /* \_SB_.PCI0.LPC_.EC__.BDEV */
                                            ^^NBIN (Local1)
                                        }
                                    }
                                }
                                Else
                                {
                                    If (LEqual (Arg0, 0x02))
                                    {
                                        \VDYN (0x01, Arg1)
                                    }
                                }
                            }
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC)
                    {
                        Method (_Q6A, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            
                            Notify(\_SB.PCI0.LPC.KBD, 0x0168)
                            Notify(\_SB.PCI0.LPC.KBD, 0x01e8)

                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC.HKEY)
                    {
                        Method (MMTG, 0, NotSerialized)
                        {
                            Store (0x0101, Local0)
                            If (HDMC)
                            {
                                Or (Local0, 0x00010000, Local0)
                            }

                            Return (Local0)
                        }

                        Method (MMTS, 1, NotSerialized)
                        {
                            If (HDMC)
                            {
                                Noop
                            }
                            Else
                            {
                                If (LEqual (Arg0, 0x02))
                                {
                                    \_SB.PCI0.LPC.EC.LED (0x0E, 0x80)
                                }
                                Else
                                {
                                    If (LEqual (Arg0, 0x03))
                                    {
                                        \_SB.PCI0.LPC.EC.LED (0x0E, 0xC0)
                                    }
                                    Else
                                    {
                                        \_SB.PCI0.LPC.EC.LED (0x0E, 0x00)
                                    }
                                }
                            }
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC.HKEY)
                    {
                        Method (PWMC, 0, NotSerialized)
                        {
                            Return (0x01)
                        }

                        Method (PWMG, 0, NotSerialized)
                        {
                            Store (\_SB.PCI0.LPC.EC.PWMH, Local0)
                            ShiftLeft (Local0, 0x08, Local0)
                            Or (Local0, \_SB.PCI0.LPC.EC.PWML, Local0)
                            Return (Local0)
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC)
                    {
                        Method (_Q45, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            If (DOCD)
                            {
                                Sleep (0x64)
                                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x4010)
                            }
                            Else
                            {
                                Sleep (0x64)
                                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x4011)
                            }
                        }

                        Method (DKID, 0, NotSerialized)
                        {
                            Store (\_SB.PCI0.LPC.DOI0, Local0)
                            Store (\_SB.PCI0.LPC.DOI1, Local1)
                            Store (\_SB.PCI0.LPC.DOI2, Local2)
                            Store (\_SB.PCI0.LPC.DOI3, Local3)
                            Or (Local0, ShiftLeft (Local1, 0x01), Local0)
                            Or (Local0, ShiftLeft (Local2, 0x02), Local0)
                            Or (Local0, ShiftLeft (Local3, 0x03), Local0)
                            Return (Local0)
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC.HKEY)
                    {
                        Method (GDKS, 0, NotSerialized)
                        {
                            Store (0x00, Local0)
                            If (LEqual (\_SB.PCI0.LPC.EC.DOCD, 0x01))
                            {
                                Or (Local0, 0x01, Local0)
                                Store (\_SB.PCI0.LPC.EC.DKID (), Local1)
                                ShiftLeft (Local1, 0x08, Local1)
                                Or (Local0, Local1, Local0)
                            }

                            Or (Local0, 0x00010000, Local0)
                            Return (Local0)
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC)
                    {
                        Method (_Q3F, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6000)
                        }

                        Method (_Q74, 0, NotSerialized)  // _Qxx: EC Query
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6060)
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC.HKEY)
                    {
                        Method (NUMG, 0, NotSerialized)
                        {
                            Store (0x00, Local0)
                            Return (Local0)
                        }
                    }
                    Method (RE1B, 1, NotSerialized)
                    // Arg0 - offset in bytes from zero-based EC
                    {
                        OperationRegion(ERAM, EmbeddedControl, Arg0, 1)
                        Field(ERAM, ByteAcc, NoLock, Preserve) { BYTE, 8 }
                        Return(BYTE)
                    }
                    Method (RECB, 2, Serialized)
                    // Arg0 - offset in bytes from zero-based EC
                    // Arg1 - size of buffer in bits
                    {
                        ShiftRight(Arg1, 3, Arg1)
                        Name(TEMP, Buffer(Arg1) { })
                        Add(Arg0, Arg1, Arg1)
                        Store(0, Local0)
                        While (LLess(Arg0, Arg1))
                        {
                            Store(RE1B(Arg0), Index(TEMP, Local0))
                            Increment(Arg0)
                            Increment(Local0)
                        }
                        Return(TEMP)
                    }
                }
            }

            Device (PEG)
            {
                Name (_ADR, 0x001C0004)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
                Name (LART, Package (0x02)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.LNKA, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.LNKB, 
                        0x00
                    }
                })
                Name (AART, Package (0x02)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x11
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (\GPIC)
                    {
                        Return (AART) /* \_SB_.PCI0.PEG_.AART */
                    }
                    Else
                    {
                        Return (LART) /* \_SB_.PCI0.PEG_.LART */
                    }
                }

                Mutex(MDGS, 0)
                Name (VDEE, 0x01)
                Name (VDDA, Buffer (0x04) {})
                CreateBitField (VDDA, 0x00, VUPC)
                CreateBitField (VDDA, 0x01, VQDL)
                CreateBitField (VDDA, 0x02, VQDC)
                CreateBitField (VDDA, 0x03, VQD0)
                CreateBitField (VDDA, 0x04, VQD1)
                CreateBitField (VDDA, 0x05, VQD2)
                CreateBitField (VDDA, 0x06, VQD3)
                CreateBitField (VDDA, 0x07, VQD4)
                CreateBitField (VDDA, 0x08, VQD5)
                CreateBitField (VDDA, 0x09, VSDL)
                CreateBitField (VDDA, 0x0A, VSDC)
                CreateBitField (VDDA, 0x0B, VSD0)
                CreateBitField (VDDA, 0x0C, VSD1)
                CreateBitField (VDDA, 0x0D, VSD2)
                CreateBitField (VDDA, 0x0E, VSD3)
                CreateBitField (VDDA, 0x0F, VSD4)
                CreateBitField (VDDA, 0x10, VSD5)
                CreateBitField (VDDA, 0x11, MSWT)
                CreateBitField (VDDA, 0x12, VWST)
                Name (WKEN, 0x00)
                Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                {
                    If (Arg1)
                    {
                        Store (0x00, WKEN) /* \_SB_.PCI0.PEG_.WKEN */
                    }
                    Else
                    {
                        If (LAnd (Arg0, Arg2))
                        {
                            Store (0x01, WKEN) /* \_SB_.PCI0.PEG_.WKEN */
                        }
                        Else
                        {
                            Store (0x00, WKEN) /* \_SB_.PCI0.PEG_.WKEN */
                        }
                    }
                }

                PowerResource (NVP3, 0x00, 0x0000)
                {
                    Name (_STA, One)  // _STA: Status
                    Method (_ON, 0, Serialized)  // _ON_: Power On
                    {
                        \_SB.PCI0.PEG.VID.GPON (0x00)
                        Store (One, _STA) /* \_SB_.PCI0.PEG_.NVP3._STA */
                    }

                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                    {
                        \_SB.PCI0.PEG.VID.GPOF (0x00)
                        Store (Zero, _STA) /* \_SB_.PCI0.PEG_.NVP3._STA */
                    }
                }

                PowerResource (NVP2, 0x00, 0x0000)
                {
                    Name (_STA, One)  // _STA: Status
                    Method (_ON, 0, Serialized)  // _ON_: Power On
                    {
                        Store (One, _STA) /* \_SB_.PCI0.PEG_.NVP2._STA */
                    }

                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                    {
                        Store (One, _STA) /* \_SB_.PCI0.PEG_.NVP2._STA */
                    }
                }

                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    NVP3
                })
                Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                {
                    NVP2
                })
                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                {
                    NVP3
                })
                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    Return (0x04)
                }

                Device (VID)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    OperationRegion (VPCG, PCI_Config, 0x00, 0x0100)
                    Field (VPCG, DWordAcc, NoLock, Preserve)
                    {
                        Offset (0x2C), 
                        VSID,   32, 
                        Offset (0x40), 
                        VIDS,   32, 
                        Offset (0x70), 
                        VPWR,   8
                    }

                    OperationRegion (GPPB, PCI_Config, 0xB4, 0x14)
                    Field (GPPB, ByteAcc, NoLock, Preserve)
                    {
                        PBCI,   8, 
                        PBNP,   8, 
                        PBLS,   8, 
                        PBCC,   8, 
                        PBCR,   32, 
                        PBDI,   32, 
                        PBDO,   32, 
                        PBMR,   32
                    }

                    Method (VRSI, 0, NotSerialized)
                    {
                        If (LEqual (PJCD, 0x00))
                        {
                            If (LGreaterEqual (OSYS, 0x07DD)) {}
                            Else
                            {
                                Store (0x503517AA, VIDS) /* \_SB_.PCI0.PEG_.VID_.VIDS */
                            }
                        }
                        Else
                        {
                            If (LEqual (PJCD, 0x01))
                            {
                                If (LGreaterEqual (OSYS, 0x07DD)) {}
                                Else
                                {
                                    Store (0x503717AA, VIDS) /* \_SB_.PCI0.PEG_.VID_.VIDS */
                                }
                            }
                            Else
                            {
                                If (LEqual (PJCD, 0x02))
                                {
                                    If (LGreaterEqual (OSYS, 0x07DD)) {}
                                    Else
                                    {
                                        Store (0x503A17AA, VIDS) /* \_SB_.PCI0.PEG_.VID_.VIDS */
                                    }
                                }
                            }
                        }
                    }

                    Name (_S3D, 0x03)  // _S3D: S3 Device State
                    Name (DGOS, 0x00)
                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                        \VUPS (0x02)
                        Store (\VCDL, VQDL) /* \_SB_.PCI0.PEG_.VQDL */
                        Store (\VCDC, VQDC) /* \_SB_.PCI0.PEG_.VQDC */
                        Store (\VCDT, VQD0) /* \_SB_.PCI0.PEG_.VQD0 */
                        Store (\VCDD, VQD1) /* \_SB_.PCI0.PEG_.VQD1 */
                        VRSI ()
                        If (ISOP ())
                        {
                            \VHYB (0x04, 0x01)
                        }
                    }

                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        If (LNot (VMSH))
                        {
                            GPON (0x00)
                        }
                    }

                    Method (_PS1, 0, NotSerialized)  // _PS1: Power State 1
                    {
                        Noop
                    }

                    Method (_PS2, 0, NotSerialized)  // _PS2: Power State 2
                    {
                        Noop
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                        If (LNot (VMSH))
                        {
                            GPOF (0x00)
                        }
                    }

                    OperationRegion (PRT0, SystemIO, 0x80, 0x04)
                    Field (PRT0, DWordAcc, Lock, Preserve)
                    {
                        P80H,   32
                    }

                    Method (GPON, 1, NotSerialized)
                    {
                        If (ISOP ())
                        {
                            If (DGOS)
                            {
                                \VHYB (0x02, 0x00)
                                If (LEqual (ToInteger (Arg0), 0x00)) {}
                                \VHYB (0x00, 0x01)
                                Store (\VHYB (0x0E, 0x00), Local2)
                                While (LNotEqual (Local2, 0x0F))
                                {
                                    Store (0x7777, P80H) /* \_SB_.PCI0.PEG_.VID_.P80H */
                                    \VHYB (0x00, 0x00)
                                    Sleep (0x14)
                                    \VHYB (0x00, 0x01)
                                    Sleep (0x0A)
                                    Store (\VHYB (0x0E, 0x00), Local2)
                                }

                                Store (0x2222, P80H) /* \_SB_.PCI0.PEG_.VID_.P80H */
                                Sleep (0x19)
                                \VHYB (0x02, 0x01)
                                Sleep (0x01)
                                \VHYB (0x08, 0x03)
                                Store (0x0A, Local0)
                                Store (0x32, Local1)
                                While (Local1)
                                {
                                    Sleep (Local0)
                                    If (\LCHK (0x01))
                                    {
                                        Break
                                    }

                                    Decrement (Local1)
                                }

                                If (VMSH)
                                {
                                    \VHYB (0x0D, 0x00)
                                }

                                Store (0xC8, Local1)
                                While (Local1)
                                {
                                    Sleep (0x01)
                                    If (\VHYB (0x0C, 0x00))
                                    {
                                        Break
                                    }

                                    Decrement (Local1)
                                }

                                \VHYB (0x04, 0x00)
                                \SWTT (0x01)
                                Store (Zero, DGOS) /* \_SB_.PCI0.PEG_.VID_.DGOS */
                            }
                            Else
                            {
                                If (LEqual (PJCD, 0x00))
                                {
                                    If (LNotEqual (VSID, 0x503517AA))
                                    {
                                        \VHYB (0x04, 0x00)
                                    }
                                }
                                Else
                                {
                                    If (LNotEqual (VSID, 0x503717AA))
                                    {
                                        \VHYB (0x04, 0x00)
                                    }
                                }
                            }

                            If (VMSH)
                            {
                                \VHYB (0x09, 0x00)
                            }
                            Else
                            {
                                \VHYB (0x09, \_SB.PCI0.PEG.VID.HDAS)
                            }
                        }
                    }

                    Method (GPOF, 1, NotSerialized)
                    {
                        If (ISOP ())
                        {
                            If (LOr (VMSH, LEqual (\_SB.PCI0.PEG.VID.OMPR, 0x03)))
                            {
                                \SWTT (0x00)
                                \VHYB (0x08, 0x00)
                                Store (0x0A, Local0)
                                Store (0x32, Local1)
                                While (Local1)
                                {
                                    Sleep (Local0)
                                    If (\LCHK (0x00))
                                    {
                                        Break
                                    }

                                    Decrement (Local1)
                                }

                                \VHYB (0x08, 0x02)
                                \VHYB (0x02, 0x00)
                                Sleep (0x10)
                                \VHYB (0x00, 0x00)
                                If (LEqual (ToInteger (Arg0), 0x00)) {}
                                Store (One, DGOS) /* \_SB_.PCI0.PEG_.VID_.DGOS */
                                Store (0x02, \_SB.PCI0.PEG.VID.OMPR)
                            }
                        }
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        If (\CMPB (Arg0, ToUUID ("a486d8f8-0bda-471b-a72b-6042a6b5bee0")))
                        {
                            Return (NVOP (Arg0, Arg1, Arg2, Arg3))
                        }

                        If (\CMPB (Arg0, ToUUID ("a3132d01-8cda-49ba-a52e-bc9d46df6b81")))
                        {
                            Return (NVPS (Arg0, Arg1, Arg2, Arg3))
                        }

                        If (\WIN8)
                        {
                            If (\CMPB (Arg0, ToUUID ("d4a50b75-65c7-46f7-bfb7-41514cea0244")))
                            {
                                Return (NBCI (Arg0, Arg1, Arg2, Arg3))
                            }
                        }

                        Return (Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x80                           /* .... */
                        })
                    }

                    OperationRegion (ATRP, SystemMemory, \ATRB, 0x00010000)
                    Field (ATRP, AnyAcc, Lock, Preserve)
                    {
                        IDX0,   262144, 
                        IDX1,   262144
                    }

                    Method (_ROM, 2, Serialized)  // _ROM: Read-Only Memory
                    {
                        If (LGreaterEqual (Arg0, 0x8000))
                        {
                            Return (GETB (Subtract (Arg0, 0x8000), Arg1, IDX1))
                        }

                        If (LGreater (Add (Arg0, Arg1), 0x8000))
                        {
                            Subtract (0x8000, Arg0, Local0)
                            Subtract (Arg1, Local0, Local1)
                            Store (GETB (Arg0, Local0, IDX0), Local3)
                            Store (GETB (0x00, Local1, IDX1), Local4)
                            Concatenate (Local3, Local4, Local5)
                            Return (Local5)
                        }

                        Return (GETB (Arg0, Arg1, IDX0))
                    }

                    Method (GETB, 3, Serialized)
                    {
                        Multiply (Arg0, 0x08, Local0)
                        Multiply (Arg1, 0x08, Local1)
                        CreateField (Arg2, Local0, Local1, TBF3)
                        Return (TBF3) /* \_SB_.PCI0.PEG_.VID_.GETB.TBF3 */
                    }

                    Method (VSWT, 0, NotSerialized)
                    {
                        If (\WVIS)
                        {
                            Store (\VEVT (0x07), Local0)
                        }
                        Else
                        {
                            Store (\VEVT (0x05), Local0)
                        }

                        And (0xFF, Local0, Local1)
                        If (Local1)
                        {
                            ASWT (Local1, 0x01)
                        }
                    }

                    Method (VLOC, 1, NotSerialized)
                    {
                        If (LEqual (Arg0, \_SB.LID._LID ()))
                        {
                            \VSLD (Arg0)
                            If (LEqual (And (VPWR, 0x03), 0x00))
                            {
                                If (Arg0)
                                {
                                    Store (\VEVT (0x01), Local0)
                                }
                                Else
                                {
                                    Store (\VEVT (0x02), Local0)
                                }

                                And (0x0F, Local0, Local1)
                                If (Local1)
                                {
                                    ASWT (Local1, 0x00)
                                }
                            }
                        }
                    }

                    Method (ASWT, 2, NotSerialized)
                    {
                        If (LEqual (0x01, VDEE))
                        {
                            And (0x01, Arg1, Local1)
                            \VSDS (Arg0, Local1)
                        }
                        Else
                        {
                            Store (0x14, Local0)
                            While (Local0)
                            {
                                Decrement (Local0)
                                Acquire (MDGS, 0xFFFF)
                                If (LEqual (0x00, MSWT))
                                {
                                    Store (0x00, Local0)
                                    If (And (0x01, Arg1))
                                    {
                                        Store (0x01, VUPC) /* \_SB_.PCI0.PEG_.VUPC */
                                    }
                                    Else
                                    {
                                        Store (0x00, VUPC) /* \_SB_.PCI0.PEG_.VUPC */
                                    }

                                    If (And (0x01, Arg0))
                                    {
                                        Store (0x01, VQDL) /* \_SB_.PCI0.PEG_.VQDL */
                                    }
                                    Else
                                    {
                                        Store (0x00, VQDL) /* \_SB_.PCI0.PEG_.VQDL */
                                    }

                                    If (And (0x02, Arg0))
                                    {
                                        Store (0x01, VQDC) /* \_SB_.PCI0.PEG_.VQDC */
                                    }
                                    Else
                                    {
                                        Store (0x00, VQDC) /* \_SB_.PCI0.PEG_.VQDC */
                                    }

                                    If (And (0x04, Arg0))
                                    {
                                        Store (0x01, VQD0) /* \_SB_.PCI0.PEG_.VQD0 */
                                    }
                                    Else
                                    {
                                        Store (0x00, VQD0) /* \_SB_.PCI0.PEG_.VQD0 */
                                    }

                                    If (And (0x08, Arg0))
                                    {
                                        Store (0x01, VQD1) /* \_SB_.PCI0.PEG_.VQD1 */
                                    }
                                    Else
                                    {
                                        Store (0x00, VQD1) /* \_SB_.PCI0.PEG_.VQD1 */
                                    }

                                    If (And (0x10, Arg0))
                                    {
                                        Store (0x01, VQD2) /* \_SB_.PCI0.PEG_.VQD2 */
                                    }
                                    Else
                                    {
                                        Store (0x00, VQD2) /* \_SB_.PCI0.PEG_.VQD2 */
                                    }

                                    If (And (0x20, Arg0))
                                    {
                                        Store (0x01, VQD3) /* \_SB_.PCI0.PEG_.VQD3 */
                                    }
                                    Else
                                    {
                                        Store (0x00, VQD3) /* \_SB_.PCI0.PEG_.VQD3 */
                                    }

                                    If (And (0x40, Arg0))
                                    {
                                        Store (0x01, VQD4) /* \_SB_.PCI0.PEG_.VQD4 */
                                    }
                                    Else
                                    {
                                        Store (0x00, VQD4) /* \_SB_.PCI0.PEG_.VQD4 */
                                    }

                                    If (And (0x80, Arg0))
                                    {
                                        Store (0x01, VQD5) /* \_SB_.PCI0.PEG_.VQD5 */
                                    }
                                    Else
                                    {
                                        Store (0x00, VQD5) /* \_SB_.PCI0.PEG_.VQD5 */
                                    }
                                }

                                Release (MDGS)
                                Sleep (0xC8)
                            }

                            If (And (0x02, Arg1))
                            {
                                Notify (VID, 0x81) // Information Change
                            }
                            Else
                            {
                                Notify (VID, 0x80) // Status Change
                            }
                        }
                    }

                    Method (VDSW, 1, NotSerialized)
                    {
                        If (LEqual (VPWR, 0x00))
                        {
                            If (Arg0)
                            {
                                Store (\VEVT (0x03), Local0)
                            }
                            Else
                            {
                                Store (\VEVT (0x04), Local0)
                            }

                            And (0x0F, Local0, Local1)
                            If (Local1)
                            {
                                ASWT (Local1, 0x00)
                            }
                        }
                    }

                    Device (LCD0)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0110)
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            \VUPS (0x00)
                            If (\VCDL)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQDL) /* \_SB_.PCI0.PEG_.VQDL */
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            And (Arg0, 0x01, VSDL) /* \_SB_.PCI0.PEG_.VSDL */
                            If (And (Arg0, 0x80000000))
                            {
                                If (And (Arg0, 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }

                        Method (_DDC, 1, NotSerialized)  // _DDC: Display Data Current
                        {
                            If (ISOP ())
                            {
                                Return (0x00)
                            }

                            If (LEqual (Arg0, 0x01))
                            {
                                Return (\VEDI)
                            }
                            Else
                            {
                                If (LEqual (Arg0, 0x02))
                                {
                                    Return (\VEDI)
                                }
                            }

                            Return (0x00)
                        }
                    }

                    Device (CRT0)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0100)
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            \VUPS (0x01)
                            If (\VCSS)
                            {
                                If (\VCDC)
                                {
                                    Return (0x1F)
                                }
                                Else
                                {
                                    Return (0x1D)
                                }
                            }
                            Else
                            {
                                If (\VCDC)
                                {
                                    Return (0x0F)
                                }
                                Else
                                {
                                    Return (0x0D)
                                }
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQDC) /* \_SB_.PCI0.PEG_.VQDC */
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            And (Arg0, 0x01, VSDC) /* \_SB_.PCI0.PEG_.VSDC */
                            If (And (Arg0, 0x80000000))
                            {
                                If (And (Arg0, 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }
                    }

                    Device (DVI0)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0111)
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            \VUPS (0x00)
                            If (\VCDD)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQD1) /* \_SB_.PCI0.PEG_.VQD1 */
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            And (Arg0, 0x01, VSD1) /* \_SB_.PCI0.PEG_.VSD1 */
                            If (And (Arg0, 0x80000000))
                            {
                                If (And (Arg0, 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }
                    }

                    Device (DP0)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0114)
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            \VUPS (0x00)
                            If (\VCDT)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQD0) /* \_SB_.PCI0.PEG_.VQD0 */
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            And (Arg0, 0x01, VSD0) /* \_SB_.PCI0.PEG_.VSD0 */
                            If (And (Arg0, 0x80000000))
                            {
                                If (And (Arg0, 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }
                    }

                    Device (DVI1)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0112)
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            \VUPS (0x00)
                            If (\VCDD)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQD3) /* \_SB_.PCI0.PEG_.VQD3 */
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            And (Arg0, 0x01, VSD3) /* \_SB_.PCI0.PEG_.VSD3 */
                            If (And (Arg0, 0x80000000))
                            {
                                If (And (Arg0, 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }
                    }

                    Device (DP1)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0115)
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            \VUPS (0x00)
                            If (\VCDT)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQD2) /* \_SB_.PCI0.PEG_.VQD2 */
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            And (Arg0, 0x01, VSD2) /* \_SB_.PCI0.PEG_.VSD2 */
                            If (And (Arg0, 0x80000000))
                            {
                                If (And (Arg0, 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }
                    }

                    Device (DVI2)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0113)
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            \VUPS (0x00)
                            If (\VCDD)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQD5) /* \_SB_.PCI0.PEG_.VQD5 */
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            And (Arg0, 0x01, VSD5) /* \_SB_.PCI0.PEG_.VSD5 */
                            If (And (Arg0, 0x80000000))
                            {
                                If (And (Arg0, 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }
                    }

                    Device (DP2)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0116)
                        }

                        Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                        {
                            \VUPS (0x00)
                            If (\VCDT)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                        {
                            Return (VQD4) /* \_SB_.PCI0.PEG_.VQD4 */
                        }

                        Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                        {
                            And (Arg0, 0x01, VSD4) /* \_SB_.PCI0.PEG_.VSD4 */
                            If (And (Arg0, 0x80000000))
                            {
                                If (And (Arg0, 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }
                    }

                    Method (DSWT, 1, NotSerialized)
                    {
                        If (VSDL)
                        {
                            Store (0x01, Local0)
                        }
                        Else
                        {
                            Store (0x00, Local0)
                        }

                        If (VSDC)
                        {
                            Or (0x02, Local0, Local0)
                        }

                        If (VSD0)
                        {
                            Or (0x08, Local0, Local0)
                        }

                        If (Local0)
                        {
                            If (VUPC)
                            {
                                \VSDS (Local0, Arg0)
                            }
                        }
                        Else
                        {
                            Noop
                        }
                    }
                }

                Scope (\_SB.PCI0.PEG.VID)
                {
                    Method (NBCI, 4, Serialized)
                    {
                        Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                        Store ("------- NBCI DSM --------", Debug)
                        While (One)
                        {
                            Store (ToInteger (Arg2), _T_0) /* \_SB_.PCI0.PEG_.VID_.NBCI._T_0 */
                            If (LEqual (_T_0, 0x00))
                            {
                                Store (Buffer (0x04)
                                    {
                                         0x00, 0x00, 0x00, 0x00                           /* .... */
                                    }, Local0)
                                Divide (0x00, 0x08, Local2, Local1)
                                ShiftLeft (0x01, Local2, Local2)
                                Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                                Divide (0x14, 0x08, Local2, Local1)
                                ShiftLeft (0x01, Local2, Local2)
                                Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                                Return (Local0)
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x14))
                                {
                                    Store (Package (0x07)
                                        {
                                            0x0110, 
                                            0x0200, 
                                            0x00, 
                                            0x00, 
                                            0x05, 
                                            0x01, 
                                            Package (0x04)
                                            {
                                                0xDC, 
                                                0x00, 
                                                0x03E8, 
                                                Package (0x03)
                                                {
                                                    0x65, 
                                                    Package (0x65)
                                                    {
                                                        0x00, 
                                                        0x0A, 
                                                        0x14, 
                                                        0x1E, 
                                                        0x28, 
                                                        0x32, 
                                                        0x3C, 
                                                        0x46, 
                                                        0x50, 
                                                        0x5A, 
                                                        0x64, 
                                                        0x6E, 
                                                        0x78, 
                                                        0x82, 
                                                        0x8C, 
                                                        0x96, 
                                                        0xA0, 
                                                        0xAA, 
                                                        0xB4, 
                                                        0xBE, 
                                                        0xC8, 
                                                        0xD2, 
                                                        0xDC, 
                                                        0xE6, 
                                                        0xF0, 
                                                        0xFA, 
                                                        0x0104, 
                                                        0x010E, 
                                                        0x0118, 
                                                        0x0122, 
                                                        0x012C, 
                                                        0x0136, 
                                                        0x0140, 
                                                        0x014A, 
                                                        0x0154, 
                                                        0x015E, 
                                                        0x0168, 
                                                        0x0172, 
                                                        0x017C, 
                                                        0x0186, 
                                                        0x0190, 
                                                        0x019A, 
                                                        0x01A4, 
                                                        0x01AE, 
                                                        0x01B8, 
                                                        0x01C2, 
                                                        0x01CC, 
                                                        0x01D6, 
                                                        0x01E0, 
                                                        0x01EA, 
                                                        0x01F4, 
                                                        0x01FE, 
                                                        0x0208, 
                                                        0x0212, 
                                                        0x021C, 
                                                        0x0226, 
                                                        0x0230, 
                                                        0x023A, 
                                                        0x0244, 
                                                        0x024E, 
                                                        0x0258, 
                                                        0x0262, 
                                                        0x026C, 
                                                        0x0276, 
                                                        0x0280, 
                                                        0x028A, 
                                                        0x0294, 
                                                        0x029E, 
                                                        0x02A8, 
                                                        0x02B2, 
                                                        0x02BC, 
                                                        0x02C6, 
                                                        0x02D0, 
                                                        0x02DA, 
                                                        0x02E4, 
                                                        0x02EE, 
                                                        0x02F8, 
                                                        0x0302, 
                                                        0x030C, 
                                                        0x0316, 
                                                        0x0320, 
                                                        0x032A, 
                                                        0x0334, 
                                                        0x033E, 
                                                        0x0348, 
                                                        0x0352, 
                                                        0x035C, 
                                                        0x0366, 
                                                        0x0370, 
                                                        0x037A, 
                                                        0x0384, 
                                                        0x038E, 
                                                        0x0398, 
                                                        0x03A2, 
                                                        0x03AC, 
                                                        0x03B6, 
                                                        0x03C0, 
                                                        0x03CA, 
                                                        0x03D4, 
                                                        0x03DE, 
                                                        0x03E8
                                                    }, 

                                                    Package (0x65)
                                                    {
                                                        0x00, 
                                                        0x0A, 
                                                        0x14, 
                                                        0x1E, 
                                                        0x28, 
                                                        0x32, 
                                                        0x3C, 
                                                        0x46, 
                                                        0x50, 
                                                        0x5A, 
                                                        0x64, 
                                                        0x6E, 
                                                        0x78, 
                                                        0x82, 
                                                        0x8C, 
                                                        0x96, 
                                                        0xA0, 
                                                        0xAA, 
                                                        0xB4, 
                                                        0xBE, 
                                                        0xC8, 
                                                        0xD2, 
                                                        0xDC, 
                                                        0xE6, 
                                                        0xF0, 
                                                        0xFA, 
                                                        0x0104, 
                                                        0x010E, 
                                                        0x0118, 
                                                        0x0122, 
                                                        0x012C, 
                                                        0x0136, 
                                                        0x0140, 
                                                        0x014A, 
                                                        0x0154, 
                                                        0x015E, 
                                                        0x0168, 
                                                        0x0172, 
                                                        0x017C, 
                                                        0x0186, 
                                                        0x0190, 
                                                        0x019A, 
                                                        0x01A4, 
                                                        0x01AE, 
                                                        0x01B8, 
                                                        0x01C2, 
                                                        0x01CC, 
                                                        0x01D6, 
                                                        0x01E0, 
                                                        0x01EA, 
                                                        0x01F4, 
                                                        0x01FE, 
                                                        0x0208, 
                                                        0x0212, 
                                                        0x021C, 
                                                        0x0226, 
                                                        0x0230, 
                                                        0x023A, 
                                                        0x0244, 
                                                        0x024E, 
                                                        0x0258, 
                                                        0x0262, 
                                                        0x026C, 
                                                        0x0276, 
                                                        0x0280, 
                                                        0x028A, 
                                                        0x0294, 
                                                        0x029E, 
                                                        0x02A8, 
                                                        0x02B2, 
                                                        0x02BC, 
                                                        0x02C6, 
                                                        0x02D0, 
                                                        0x02DA, 
                                                        0x02E4, 
                                                        0x02EE, 
                                                        0x02F8, 
                                                        0x0302, 
                                                        0x030C, 
                                                        0x0316, 
                                                        0x0320, 
                                                        0x032A, 
                                                        0x0334, 
                                                        0x033E, 
                                                        0x0348, 
                                                        0x0352, 
                                                        0x035C, 
                                                        0x0366, 
                                                        0x0370, 
                                                        0x037A, 
                                                        0x0384, 
                                                        0x038E, 
                                                        0x0398, 
                                                        0x03A2, 
                                                        0x03AC, 
                                                        0x03B6, 
                                                        0x03C0, 
                                                        0x03CA, 
                                                        0x03D4, 
                                                        0x03DE, 
                                                        0x03E8
                                                    }
                                                }
                                            }
                                        }, Local0)
                                    Store (0x00, Local1)
                                    While (LLessEqual (Local1, 0x64))
                                    {
                                        Store (DerefOf (Index (DerefOf (Index (\_SB.PCI0.LPC.EC.BRTD, \BRTN)), Local1)), Local2)
                                        Multiply (Local2, 0x03E8, Local2)
                                        Divide (Local2, 0xFF, Local2, Local3)
                                        Store (Local3, Index (DerefOf (Index (DerefOf (Index (DerefOf (Index (Local0, 0x06)), 
                                            0x03)), 0x01)), Local1))
                                        Increment (Local1)
                                    }

                                    Return (Local0)
                                }
                            }

                            Break
                        }

                        Return (0x80000002)
                    }

                    Method (NVSB, 1, NotSerialized)
                    {
                        Name (CNT, 0x00)
                        If (LEqual (PBCC, 0x01))
                        {
                            If (LEqual (PBMR, 0x00))
                            {
                                Store (0x02, PBMR) /* \_SB_.PCI0.PEG_.VID_.PBMR */
                                If (LEqual (PBMR, 0x02))
                                {
                                    While (LAnd (LAnd (PBCC, 0xFF), LLess (CNT, 0x0A)))
                                    {
                                        Increment (CNT)
                                        Sleep (0x01)
                                    }

                                    If (LEqual (And (PBCR, 0x02), 0x00))
                                    {
                                        Multiply (Arg0, 0x03E8, Local0)
                                        Divide (Local0, 0xFF, Local1, Local2)
                                        ShiftLeft (Local2, 0x08, Local2)
                                        Store (Local2, PBDI) /* \_SB_.PCI0.PEG_.VID_.PBDI */
                                        Store (0x86100000, PBCR) /* \_SB_.PCI0.PEG_.VID_.PBCR */
                                    }

                                    Store (0x00, PBMR) /* \_SB_.PCI0.PEG_.VID_.PBMR */
                                    Return (0x01)
                                }
                            }
                        }

                        Return (0x00)
                    }
                }

                OperationRegion (PEGC, PCI_Config, 0x00, 0x0100)
                Field (PEGC, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xEC), 
                    GMGP,   1, 
                    HPGP,   1, 
                    PMGP,   1
                }
            }

            Device (B0D3)
            {
                Name (_ADR, 0x00030000)  // _ADR: Address
            }

            Device (IGBE)
            {
                Name (_ADR, 0x00190000)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x6D, 
                    0x00
                })
            }

            Name (LTRE, 0x00)
            Name (OBFF, 0x00)
            Name (LMSL, 0x00)
            Name (LNSL, 0x00)
            Device (EXP1)
            {
                Name (_ADR, 0x001C0000)  // _ADR: Address
                Name (RID, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Store (LTR1, LTRE) /* \_SB_.PCI0.LTRE */
                    Store (PML1, LMSL) /* \_SB_.PCI0.LMSL */
                    Store (PNL1, LNSL) /* \_SB_.PCI0.LNSL */
                    Store (OBF1, OBFF) /* \_SB_.PCI0.OBFF */
                }

                Name (LPRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.LNKA, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.LNKB, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        \_SB.LNKC, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        \_SB.LNKD, 
                        0x00
                    }
                })
                Name (APRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        0x00, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        0x00, 
                        0x13
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (\GPIC)
                    {
                        Return (APRT) /* \_SB_.PCI0.EXP1.APRT */
                    }
                    Else
                    {
                        Return (LPRT) /* \_SB_.PCI0.EXP1.LPRT */
                    }
                }

                OperationRegion (PXCS, PCI_Config, 0x00, 0x0380)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    VDID,   32, 
                    Offset (0x50), 
                    L0SE,   1, 
                        ,   3, 
                    LDIS,   1, 
                    Offset (0x51), 
                    Offset (0x52), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x5A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x5B), 
                    Offset (0x60), 
                    Offset (0x62), 
                    PSPX,   1, 
                    Offset (0xA4), 
                    D3HT,   2, 
                    Offset (0xD8), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                    Offset (0xE2), 
                        ,   2, 
                    L23E,   1, 
                    L23R,   1, 
                    Offset (0x324), 
                        ,   3, 
                    LEDM,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xDC), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Name (LTRV, Package (0x04)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Name (OPTS, 0x00)
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    While (One)
                    {
                        Store (ToInteger (Arg0), _T_0) /* \_SB_.PCI0.EXP1._DSM._T_0 */
                        If (LEqual (_T_0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                        {
                            While (One)
                            {
                                Store (ToInteger (Arg2), _T_1) /* \_SB_.PCI0.EXP1._DSM._T_1 */
                                If (LEqual (_T_1, 0x00))
                                {
                                    Store (0x00, OPTS) /* \_SB_.PCI0.EXP1.OPTS */
                                    If (LGreaterEqual (Arg1, 0x02))
                                    {
                                        Store (0x01, OPTS) /* \_SB_.PCI0.EXP1.OPTS */
                                        If (LTRE)
                                        {
                                            Or (OPTS, 0x40, OPTS) /* \_SB_.PCI0.EXP1.OPTS */
                                        }

                                        If (OBFF)
                                        {
                                            Or (OPTS, 0x10, OPTS) /* \_SB_.PCI0.EXP1.OPTS */
                                        }
                                    }

                                    Return (OPTS) /* \_SB_.PCI0.EXP1.OPTS */
                                }
                                Else
                                {
                                    If (LEqual (_T_1, 0x04))
                                    {
                                        If (LGreaterEqual (Arg1, 0x02))
                                        {
                                            If (OBFF)
                                            {
                                                Return (Buffer (0x10)
                                                {
                                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                                    /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   /* ........ */
                                                })
                                            }
                                            Else
                                            {
                                                Return (Buffer (0x10)
                                                {
                                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                                                })
                                            }
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_1, 0x06))
                                        {
                                            If (LGreaterEqual (Arg1, 0x02))
                                            {
                                                If (LTRE)
                                                {
                                                    If (LOr (LEqual (LMSL, 0x00), LEqual (LNSL, 0x00)))
                                                    {
                                                        If (LEqual (PCHS, 0x01))
                                                        {
                                                            Store (0x0846, LMSL) /* \_SB_.PCI0.LMSL */
                                                            Store (0x0846, LNSL) /* \_SB_.PCI0.LNSL */
                                                        }
                                                        Else
                                                        {
                                                            If (LEqual (PCHS, 0x02))
                                                            {
                                                                Store (0x1003, LMSL) /* \_SB_.PCI0.LMSL */
                                                                Store (0x1003, LNSL) /* \_SB_.PCI0.LNSL */
                                                            }
                                                        }
                                                    }

                                                    Store (And (ShiftRight (LMSL, 0x0A), 0x07), Index (LTRV, 0x00))
                                                    Store (And (LMSL, 0x03FF), Index (LTRV, 0x01))
                                                    Store (And (ShiftRight (LNSL, 0x0A), 0x07), Index (LTRV, 0x02))
                                                    Store (And (LNSL, 0x03FF), Index (LTRV, 0x03))
                                                    Return (LTRV) /* \_SB_.PCI0.EXP1.LTRV */
                                                }
                                                Else
                                                {
                                                    Return (0x00)
                                                }
                                            }
                                        }
                                    }
                                }

                                Break
                            }
                        }

                        Break
                    }

                    Return (Buffer (0x01)
                    {
                         0x00                                             /* . */
                    })
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Store (0xC8, Local0)
                        While (Local0)
                        {
                            Store (0x01, PMSX) /* \_SB_.PCI0.EXP1.PMSX */
                            If (PMSX)
                            {
                                Decrement (Local0)
                            }
                            Else
                            {
                                Store (0x00, Local0)
                            }
                        }
                    }
                }
            }

            Device (EXP2)
            {
                Name (_ADR, 0x001C0001)  // _ADR: Address
                Name (RID, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Store (LTR2, LTRE) /* \_SB_.PCI0.LTRE */
                    Store (PML2, LMSL) /* \_SB_.PCI0.LMSL */
                    Store (PNL2, LNSL) /* \_SB_.PCI0.LNSL */
                    Store (OBF2, OBFF) /* \_SB_.PCI0.OBFF */
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x69, 
                    0x04
                })
                Name (LPRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.LNKB, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.LNKC, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        \_SB.LNKD, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        \_SB.LNKA, 
                        0x00
                    }
                })
                Name (APRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        0x00, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        0x00, 
                        0x10
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (\GPIC)
                    {
                        Return (APRT) /* \_SB_.PCI0.EXP2.APRT */
                    }
                    Else
                    {
                        Return (LPRT) /* \_SB_.PCI0.EXP2.LPRT */
                    }
                }

                OperationRegion (PXCS, PCI_Config, 0x00, 0x0380)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    VDID,   32, 
                    Offset (0x50), 
                    L0SE,   1, 
                        ,   3, 
                    LDIS,   1, 
                    Offset (0x51), 
                    Offset (0x52), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x5A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x5B), 
                    Offset (0x60), 
                    Offset (0x62), 
                    PSPX,   1, 
                    Offset (0xA4), 
                    D3HT,   2, 
                    Offset (0xD8), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                    Offset (0xE2), 
                        ,   2, 
                    L23E,   1, 
                    L23R,   1, 
                    Offset (0x324), 
                        ,   3, 
                    LEDM,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xDC), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Name (LTRV, Package (0x04)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Name (OPTS, 0x00)
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    While (One)
                    {
                        Store (ToInteger (Arg0), _T_0) /* \_SB_.PCI0.EXP2._DSM._T_0 */
                        If (LEqual (_T_0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                        {
                            While (One)
                            {
                                Store (ToInteger (Arg2), _T_1) /* \_SB_.PCI0.EXP2._DSM._T_1 */
                                If (LEqual (_T_1, 0x00))
                                {
                                    Store (0x00, OPTS) /* \_SB_.PCI0.EXP2.OPTS */
                                    If (LGreaterEqual (Arg1, 0x02))
                                    {
                                        Store (0x01, OPTS) /* \_SB_.PCI0.EXP2.OPTS */
                                        If (LTRE)
                                        {
                                            Or (OPTS, 0x40, OPTS) /* \_SB_.PCI0.EXP2.OPTS */
                                        }

                                        If (OBFF)
                                        {
                                            Or (OPTS, 0x10, OPTS) /* \_SB_.PCI0.EXP2.OPTS */
                                        }
                                    }

                                    Return (OPTS) /* \_SB_.PCI0.EXP2.OPTS */
                                }
                                Else
                                {
                                    If (LEqual (_T_1, 0x04))
                                    {
                                        If (LGreaterEqual (Arg1, 0x02))
                                        {
                                            If (OBFF)
                                            {
                                                Return (Buffer (0x10)
                                                {
                                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                                    /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   /* ........ */
                                                })
                                            }
                                            Else
                                            {
                                                Return (Buffer (0x10)
                                                {
                                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                                                })
                                            }
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_1, 0x06))
                                        {
                                            If (LGreaterEqual (Arg1, 0x02))
                                            {
                                                If (LTRE)
                                                {
                                                    If (LOr (LEqual (LMSL, 0x00), LEqual (LNSL, 0x00)))
                                                    {
                                                        If (LEqual (PCHS, 0x01))
                                                        {
                                                            Store (0x0846, LMSL) /* \_SB_.PCI0.LMSL */
                                                            Store (0x0846, LNSL) /* \_SB_.PCI0.LNSL */
                                                        }
                                                        Else
                                                        {
                                                            If (LEqual (PCHS, 0x02))
                                                            {
                                                                Store (0x1003, LMSL) /* \_SB_.PCI0.LMSL */
                                                                Store (0x1003, LNSL) /* \_SB_.PCI0.LNSL */
                                                            }
                                                        }
                                                    }

                                                    Store (And (ShiftRight (LMSL, 0x0A), 0x07), Index (LTRV, 0x00))
                                                    Store (And (LMSL, 0x03FF), Index (LTRV, 0x01))
                                                    Store (And (ShiftRight (LNSL, 0x0A), 0x07), Index (LTRV, 0x02))
                                                    Store (And (LNSL, 0x03FF), Index (LTRV, 0x03))
                                                    Return (LTRV) /* \_SB_.PCI0.EXP2.LTRV */
                                                }
                                                Else
                                                {
                                                    Return (0x00)
                                                }
                                            }
                                        }
                                    }
                                }

                                Break
                            }
                        }

                        Break
                    }

                    Return (Buffer (0x01)
                    {
                         0x00                                             /* . */
                    })
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Store (0xC8, Local0)
                        While (Local0)
                        {
                            Store (0x01, PMSX) /* \_SB_.PCI0.EXP2.PMSX */
                            If (PMSX)
                            {
                                Decrement (Local0)
                            }
                            Else
                            {
                                Store (0x00, Local0)
                            }
                        }
                    }
                }
            }

            Device (EXP3)
            {
                Name (_ADR, 0x001C0002)  // _ADR: Address
                Name (RID, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Store (LTR3, LTRE) /* \_SB_.PCI0.LTRE */
                    Store (PML3, LMSL) /* \_SB_.PCI0.LMSL */
                    Store (PNL3, LNSL) /* \_SB_.PCI0.LNSL */
                    Store (OBF3, OBFF) /* \_SB_.PCI0.OBFF */
                }

                Name (LPRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.LNKC, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.LNKD, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        \_SB.LNKA, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        \_SB.LNKB, 
                        0x00
                    }
                })
                Name (APRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        0x00, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        0x00, 
                        0x11
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (\GPIC)
                    {
                        Return (APRT) /* \_SB_.PCI0.EXP3.APRT */
                    }
                    Else
                    {
                        Return (LPRT) /* \_SB_.PCI0.EXP3.LPRT */
                    }
                }

                OperationRegion (PXCS, PCI_Config, 0x00, 0x0380)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    VDID,   32, 
                    Offset (0x50), 
                    L0SE,   1, 
                        ,   3, 
                    LDIS,   1, 
                    Offset (0x51), 
                    Offset (0x52), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x5A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x5B), 
                    Offset (0x60), 
                    Offset (0x62), 
                    PSPX,   1, 
                    Offset (0xA4), 
                    D3HT,   2, 
                    Offset (0xD8), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                    Offset (0xE2), 
                        ,   2, 
                    L23E,   1, 
                    L23R,   1, 
                    Offset (0x324), 
                        ,   3, 
                    LEDM,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xDC), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Name (LTRV, Package (0x04)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Name (OPTS, 0x00)
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                    While (One)
                    {
                        Store (ToInteger (Arg0), _T_0) /* \_SB_.PCI0.EXP3._DSM._T_0 */
                        If (LEqual (_T_0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                        {
                            While (One)
                            {
                                Store (ToInteger (Arg2), _T_1) /* \_SB_.PCI0.EXP3._DSM._T_1 */
                                If (LEqual (_T_1, 0x00))
                                {
                                    Store (0x00, OPTS) /* \_SB_.PCI0.EXP3.OPTS */
                                    If (LGreaterEqual (Arg1, 0x02))
                                    {
                                        Store (0x01, OPTS) /* \_SB_.PCI0.EXP3.OPTS */
                                        If (LTRE)
                                        {
                                            Or (OPTS, 0x40, OPTS) /* \_SB_.PCI0.EXP3.OPTS */
                                        }

                                        If (OBFF)
                                        {
                                            Or (OPTS, 0x10, OPTS) /* \_SB_.PCI0.EXP3.OPTS */
                                        }
                                    }

                                    Return (OPTS) /* \_SB_.PCI0.EXP3.OPTS */
                                }
                                Else
                                {
                                    If (LEqual (_T_1, 0x04))
                                    {
                                        If (LGreaterEqual (Arg1, 0x02))
                                        {
                                            If (OBFF)
                                            {
                                                Return (Buffer (0x10)
                                                {
                                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                                    /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   /* ........ */
                                                })
                                            }
                                            Else
                                            {
                                                Return (Buffer (0x10)
                                                {
                                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                                                })
                                            }
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_1, 0x06))
                                        {
                                            If (LGreaterEqual (Arg1, 0x02))
                                            {
                                                If (LTRE)
                                                {
                                                    If (LOr (LEqual (LMSL, 0x00), LEqual (LNSL, 0x00)))
                                                    {
                                                        If (LEqual (PCHS, 0x01))
                                                        {
                                                            Store (0x0846, LMSL) /* \_SB_.PCI0.LMSL */
                                                            Store (0x0846, LNSL) /* \_SB_.PCI0.LNSL */
                                                        }
                                                        Else
                                                        {
                                                            If (LEqual (PCHS, 0x02))
                                                            {
                                                                Store (0x1003, LMSL) /* \_SB_.PCI0.LMSL */
                                                                Store (0x1003, LNSL) /* \_SB_.PCI0.LNSL */
                                                            }
                                                        }
                                                    }

                                                    Store (And (ShiftRight (LMSL, 0x0A), 0x07), Index (LTRV, 0x00))
                                                    Store (And (LMSL, 0x03FF), Index (LTRV, 0x01))
                                                    Store (And (ShiftRight (LNSL, 0x0A), 0x07), Index (LTRV, 0x02))
                                                    Store (And (LNSL, 0x03FF), Index (LTRV, 0x03))
                                                    Return (LTRV) /* \_SB_.PCI0.EXP3.LTRV */
                                                }
                                                Else
                                                {
                                                    Return (0x00)
                                                }
                                            }
                                        }
                                    }
                                }

                                Break
                            }
                        }

                        Break
                    }

                    Return (Buffer (0x01)
                    {
                         0x00                                             /* . */
                    })
                }

                Method (HPME, 0, Serialized)
                {
                    If (PMSX)
                    {
                        Store (0xC8, Local0)
                        While (Local0)
                        {
                            Store (0x01, PMSX) /* \_SB_.PCI0.EXP3.PMSX */
                            If (PMSX)
                            {
                                Decrement (Local0)
                            }
                            Else
                            {
                                Store (0x00, Local0)
                            }
                        }
                    }
                }
            }

            Device (SAT1)
            {
                Name (_ADR, 0x001F0002)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
            }

            Device (SAT2)
            {
                Name (_ADR, 0x001F0005)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
            }

            Device (SMBU)
            {
                Name (_ADR, 0x001F0003)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
                Device (NFC)
                {
                    Name (_HID, EisaId ("BCM2F09"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("BCM2F09"))  // _CID: Compatible ID
                    Name (_UID, 0x00)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x00)
                    }

                    Method (GPEN, 0, NotSerialized)
                    {
                        Store (0x01, \_GPE.GPFG)
                    }

                    Method (SNFC, 1, NotSerialized)
                    {
                        If (Arg0)
                        {
                            Store (0x01, \_SB.PCI0.LPC.NFCP)
                        }
                        Else
                        {
                            Store (0x00, \_SB.PCI0.LPC.NFCP)
                        }
                    }
                }
                Device (BUS0)
                {
                    Name (_CID, "smbus")
                    Name (_ADR, Zero)
                    Device (DVL0)
                    {
                        Name (_ADR, 0x57)
                        Name (_CID, "diagsvault")
                        Method (_DSM, 4, NotSerialized)
                        {
                            If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
                            Return (Package() { "address", 0x57 })
                        }
                    }
                }
            }

            Device (XHCI)
            {
                Name (_ADR, 0x00140000)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
                Name (LPTH, 0x01)
                Name (LPTL, 0x02)
                Name (WPTL, 0x03)
                Method (PCHV, 0, NotSerialized)
                {
                    If (LAnd (LEqual (PCHG, 0x01), LEqual (PCHS, 0x01)))
                    {
                        Return (LPTH) /* \_SB_.PCI0.XHCI.LPTH */
                    }

                    If (LAnd (LEqual (PCHG, 0x01), LEqual (PCHS, 0x02)))
                    {
                        Return (LPTL) /* \_SB_.PCI0.XHCI.LPTL */
                    }

                    If (LAnd (LEqual (PCHG, 0x02), LEqual (PCHS, 0x02)))
                    {
                        Return (WPTL) /* \_SB_.PCI0.XHCI.WPTL */
                    }

                    Return (0x00)
                }

                OperationRegion (XHCB, PCI_Config, 0x00, 0x0100)
                Field (XHCB, AnyAcc, NoLock, Preserve)
                {
                    DVID,   16, 
                    Offset (0x40), 
                        ,   11, 
                    SWAI,   1, 
                    Offset (0x44), 
                        ,   12, 
                    SAIP,   2, 
                    Offset (0x48), 
                    Offset (0x74), 
                    D0D3,   2, 
                    Offset (0x75), 
                    PMEE,   1, 
                        ,   6, 
                    PMES,   1, 
                    Offset (0xA8), 
                        ,   13, 
                    MW13,   1, 
                    MW14,   1, 
                    Offset (0xAC), 
                    Offset (0xB0), 
                        ,   13, 
                    MB13,   1, 
                    MB14,   1, 
                    Offset (0xB4), 
                    Offset (0xD0), 
                    PR2,    32, 
                    PR2M,   32, 
                    PR3,    32, 
                    PR3M,   32
                }

                OperationRegion (XHCP, SystemMemory, Add (0xF8000000, 0x000A0000), 0x0100)
                Field (XHCP, AnyAcc, Lock, Preserve)
                {
                    Offset (0x04), 
                    PDBM,   16, 
                    Offset (0x10), 
                    MBA1,   32
                }

                Name (XRST, Zero)
                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Name (_PR1, Package (0x01)  // _PR1: Power Resources for D1
                {
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                {
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Name (_PRW, Package (0x03)  // _PRW: Power Resources for Wake
                {
                    0x6D, 
                    0x00, 
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Method (CUID, 1, Serialized)
                {
                    If (LEqual (Arg0, ToUUID ("7c9512a9-1705-4cb4-af7d-506a2423ab71")))
                    {
                        Return (0x01)
                    }

                    Return (0x00)
                }

                Method (POSC, 3, Serialized)
                {
                    CreateDWordField (Arg2, 0x00, CDW1)
                    CreateDWordField (Arg2, 0x08, CDW3)
                    If (LEqual (\XHCI, 0x00))
                    {
                        Or (CDW1, 0x02, CDW1) /* \_SB_.PCI0.XHCI.POSC.CDW1 */
                        Store (0x00, \_SB.PCI0.LPC.XUSB)
                        Store (0x00, XRST) /* \_SB_.PCI0.XHCI.XRST */
                    }

                    If (LNot (And (CDW1, 0x01)))
                    {
                        If (And (CDW3, 0x01))
                        {
                            ESEL ()
                        }
                        Else
                        {
                            If (0x00)
                            {
                                If (LGreater (Arg0, 0x01))
                                {
                                    SXHC ()
                                }
                                Else
                                {
                                    Or (CDW1, 0x0A, CDW1) /* \_SB_.PCI0.XHCI.POSC.CDW1 */
                                }
                            }
                            Else
                            {
                                If (LGreater (Arg0, 0x02))
                                {
                                    SXHC ()
                                }
                                Else
                                {
                                    Or (CDW1, 0x0A, CDW1) /* \_SB_.PCI0.XHCI.POSC.CDW1 */
                                }
                            }
                        }

                        Return (Arg2)
                    }

                    If (LAnd (LNot (And (CDW1, 0x01)), LOr (LEqual (\XHCI, 0x02), LEqual (
                        \XHCI, 0x03))))
                    {
                        SXHC ()
                    }

                    Return (Arg2)
                }

                Method (ESEL, 0, Serialized)
                {
                    If (LOr (LEqual (\XHCI, 0x02), LEqual (\XHCI, 0x03)))
                    {
                        And (PR3, 0xFFFFFFC0, PR3) /* \_SB_.PCI0.XHCI.PR3_ */
                        And (PR2, 0xFFFF8000, PR2) /* \_SB_.PCI0.XHCI.PR2_ */
                        Store (0x00, \_SB.PCI0.LPC.XUSB)
                        Store (0x00, XRST) /* \_SB_.PCI0.XHCI.XRST */
                    }
                }

                Method (DEHC, 0, NotSerialized)
                {
                    Store (0x01, \XHCC)
                    \DIEH (0x01)
                }

                Method (EEHC, 0, NotSerialized)
                {
                    Store (0x00, \XHCC)
                    \DIEH (0x00)
                }

                Method (SXHC, 0, NotSerialized)
                {
                    Store (0x01, \_SB.PCI0.LPC.XUSB)
                    Store (0x01, XRST) /* \_SB_.PCI0.XHCI.XRST */
                    Store (0x00, Local0)
                    And (PR3, 0xFFFFFFC0, Local0)
                    Or (Local0, PR3M, PR3) /* \_SB_.PCI0.XHCI.PR3_ */
                    And (PR3, 0xFFFFFFF7, PR3) /* \_SB_.PCI0.XHCI.PR3_ */
                    Store (0x00, Local0)
                    And (PR2, 0xFFFF8000, Local0)
                    Or (Local0, PR2M, PR2) /* \_SB_.PCI0.XHCI.PR2_ */
                    And (PR2, 0xFFFFFFF7, PR2) /* \_SB_.PCI0.XHCI.PR2_ */
                    Store (0x01, \_SB.PCI0.LPC.XUSB)
                    Store (0x01, \USBR)
                }

                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    If (\WIN8)
                    {
                        DEHC ()
                        SXHC ()
                    }
                    Else
                    {
                        EEHC ()
                    }
                }

                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    Return (0x03)
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    If (LEqual (^DVID, 0xFFFF))
                    {
                        Return (Zero)
                    }

                    Store (^MBA1, Local2)
                    Store (^PDBM, Local1)
                    And (^PDBM, Not (0x06), ^PDBM) /* \_SB_.PCI0.XHCI.PDBM */
                    Store (^D0D3, Local3)
                    Store (0x00, ^D0D3) /* \_SB_.PCI0.XHCI.D0D3 */
                    Store (\XWMB, ^MBA1) /* \_SB_.PCI0.XHCI.MBA1 */
                    Or (Local1, 0x02, ^PDBM) /* \_SB_.PCI0.XHCI.PDBM */
                    OperationRegion (MCA1, SystemMemory, \XWMB, 0x9000)
                    Field (MCA1, DWordAcc, Lock, Preserve)
                    {
                        Offset (0x80E0), 
                            ,   15, 
                        AX15,   1, 
                        Offset (0x8154), 
                            ,   31, 
                        CLK2,   1, 
                        Offset (0x816C), 
                            ,   2, 
                        CLK0,   1, 
                            ,   11, 
                        CLK1,   1
                    }

                    If (LEqual (PCHV (), LPTL))
                    {
                        Store (0x00, ^MB13) /* \_SB_.PCI0.XHCI.MB13 */
                        Store (0x00, ^MB14) /* \_SB_.PCI0.XHCI.MB14 */
                        Store (0x00, CLK0) /* \_SB_.PCI0.XHCI._PS0.CLK0 */
                        Store (0x00, CLK1) /* \_SB_.PCI0.XHCI._PS0.CLK1 */
                    }

                    If (LEqual (PCHG, 0x01))
                    {
                        Store (0x01, CLK2) /* \_SB_.PCI0.XHCI._PS0.CLK2 */
                    }

                    If (LAnd (LEqual (PCHS, 0x02), LEqual (PCHG, 0x01)))
                    {
                        Store (\XWMB, Local3)
                        Add (Local3, 0x0510, Local3)
                        OperationRegion (PSCA, SystemMemory, Local3, 0x40)
                        Field (PSCA, DWordAcc, Lock, Preserve)
                        {
                            PSC1,   32, 
                            Offset (0x10), 
                            PSC2,   32, 
                            Offset (0x20), 
                            PSC3,   32, 
                            Offset (0x30), 
                            PSC4,   32
                        }

                        While (LOr (LOr (LEqual (And (PSC1, 0x03F8), 0x02E0), LEqual (And (PSC2, 
                            0x03F8), 0x02E0)), LOr (LEqual (And (PSC3, 0x03F8), 0x02E0), LEqual (And (PSC4, 
                            0x03F8), 0x02E0))))
                        {
                            Stall (0x0A)
                        }

                        Store (0x00, Local4)
                        And (PSC1, Not (0x02), Local0)
                        If (LEqual (And (Local0, 0x000203F9), 0x02A0))
                        {
                            Or (Local0, 0x80000000, PSC1) /* \_SB_.PCI0.XHCI._PS0.PSC1 */
                            Or (Local4, 0x01, Local4)
                        }

                        And (PSC2, Not (0x02), Local0)
                        If (LEqual (And (Local0, 0x000203F9), 0x02A0))
                        {
                            Or (Local0, 0x80000000, PSC2) /* \_SB_.PCI0.XHCI._PS0.PSC2 */
                            Or (Local4, 0x02, Local4)
                        }

                        And (PSC3, Not (0x02), Local0)
                        If (LEqual (And (Local0, 0x000203F9), 0x02A0))
                        {
                            Or (Local0, 0x80000000, PSC3) /* \_SB_.PCI0.XHCI._PS0.PSC3 */
                            Or (Local4, 0x04, Local4)
                        }

                        And (PSC4, Not (0x02), Local0)
                        If (LEqual (And (Local0, 0x000203F9), 0x02A0))
                        {
                            Or (Local0, 0x80000000, PSC4) /* \_SB_.PCI0.XHCI._PS0.PSC4 */
                            Or (Local4, 0x08, Local4)
                        }

                        If (Local4)
                        {
                            Store (0x00, Local7)
                            While (LEqual (LAnd (LAnd (LAnd (PSC1, 0x00080000), LAnd (PSC2, 0x00080000)), LAnd (LAnd (
                                PSC3, 0x00080000), LAnd (PSC4, 0x00080000))), 0x00))
                            {
                                Stall (0x0A)
                                Increment (Local7)
                                If (LEqual (Local7, 0x012C))
                                {
                                    Break
                                }
                            }

                            If (And (Local4, 0x01))
                            {
                                And (PSC1, Not (0x02), Local0)
                                Or (Local0, 0x00FE0000, PSC1) /* \_SB_.PCI0.XHCI._PS0.PSC1 */
                            }

                            If (And (Local4, 0x02))
                            {
                                And (PSC2, Not (0x02), Local0)
                                Or (Local0, 0x00FE0000, PSC2) /* \_SB_.PCI0.XHCI._PS0.PSC2 */
                            }

                            If (And (Local4, 0x04))
                            {
                                And (PSC3, Not (0x02), Local0)
                                Or (Local0, 0x00FE0000, PSC3) /* \_SB_.PCI0.XHCI._PS0.PSC3 */
                            }

                            If (And (Local4, 0x08))
                            {
                                And (PSC4, Not (0x02), Local0)
                                Or (Local0, 0x00FE0000, PSC4) /* \_SB_.PCI0.XHCI._PS0.PSC4 */
                            }
                        }

                        Store (0x01, AX15) /* \_SB_.PCI0.XHCI._PS0.AX15 */
                    }

                    If (LOr (LEqual (PCHG, 0x01), LAnd (LEqual (PCHV (), WPTL), LEqual (PCHP, 0x41))))
                    {
                        Store (0x00, ^SWAI) /* \_SB_.PCI0.XHCI.SWAI */
                        Store (0x00, ^SAIP) /* \_SB_.PCI0.XHCI.SAIP */
                    }

                    And (^PDBM, Not (0x02), ^PDBM) /* \_SB_.PCI0.XHCI.PDBM */
                    Store (Local2, ^MBA1) /* \_SB_.PCI0.XHCI.MBA1 */
                    Store (Local1, ^PDBM) /* \_SB_.PCI0.XHCI.PDBM */
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    Store (^PDBM, Local1)
                    Store (^MBA1, Local2)
                    And (^PDBM, Not (0x06), ^PDBM) /* \_SB_.PCI0.XHCI.PDBM */
                    Store (0x00, ^D0D3) /* \_SB_.PCI0.XHCI.D0D3 */
                    Store (\XWMB, ^MBA1) /* \_SB_.PCI0.XHCI.MBA1 */
                    Or (Local1, 0x02, ^PDBM) /* \_SB_.PCI0.XHCI.PDBM */
                    Store (0x01, ^PMES) /* \_SB_.PCI0.XHCI.PMES */
                    Store (0x01, ^PMEE) /* \_SB_.PCI0.XHCI.PMEE */
                    Store (\XWMB, Local0)
                    OperationRegion (MCA1, SystemMemory, \XWMB, 0x9000)
                    Field (MCA1, DWordAcc, Lock, Preserve)
                    {
                        Offset (0x80E0), 
                            ,   15, 
                        AX15,   1, 
                        Offset (0x8154), 
                            ,   31, 
                        CLK2,   1, 
                        Offset (0x816C), 
                            ,   2, 
                        CLK0,   1, 
                            ,   11, 
                        CLK1,   1, 
                        Offset (0x8170)
                    }

                    If (LEqual (PCHV (), LPTL))
                    {
                        Store (0x01, ^MB13) /* \_SB_.PCI0.XHCI.MB13 */
                        Store (0x01, ^MB14) /* \_SB_.PCI0.XHCI.MB14 */
                        Store (0x01, CLK0) /* \_SB_.PCI0.XHCI._PS3.CLK0 */
                        Store (0x01, CLK1) /* \_SB_.PCI0.XHCI._PS3.CLK1 */
                    }

                    If (LEqual (PCHG, 0x01))
                    {
                        Store (0x00, CLK2) /* \_SB_.PCI0.XHCI._PS3.CLK2 */
                    }

                    If (LAnd (LEqual (PCHS, 0x02), LEqual (PCHG, 0x01)))
                    {
                        Store (0x00, AX15) /* \_SB_.PCI0.XHCI._PS3.AX15 */
                    }

                    If (LOr (LEqual (PCHG, 0x01), LAnd (LEqual (PCHV (), WPTL), LEqual (PCHP, 0x41))))
                    {
                        Store (0x01, ^SWAI) /* \_SB_.PCI0.XHCI.SWAI */
                        Store (0x01, ^SAIP) /* \_SB_.PCI0.XHCI.SAIP */
                    }

                    And (^PDBM, Not (0x02), ^PDBM) /* \_SB_.PCI0.XHCI.PDBM */
                    Store (0x03, ^D0D3) /* \_SB_.PCI0.XHCI.D0D3 */
                    Store (Local2, ^MBA1) /* \_SB_.PCI0.XHCI.MBA1 */
                    Store (Local1, ^PDBM) /* \_SB_.PCI0.XHCI.PDBM */
                }

                Device (URTH)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    Device (HSP0)
                    {
                        Name (_ADR, 0x01)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPC0, UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP0._UPC.UPCP */
                            If (LNot (And (PR2, 0x01)))
                            {
                                Store (0x00, Index (UPCP, 0x00))
                            }

                            Return (UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP0._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            Store (\PLD0, PLDP) /* \_SB_.PCI0.XHCI.URTH.HSP0._PLD.PLDP */
                            CreateBitField (PLDP, 0x40, VIS)
                            If (LNot (And (PR2, 0x01)))
                            {
                                And (VIS, 0x00, VIS) /* \_SB_.PCI0.XHCI.URTH.HSP0._PLD.VIS_ */
                            }

                            Return (PLDP) /* \_SB_.PCI0.XHCI.URTH.HSP0._PLD.PLDP */
                        }
                    }

                    Device (HSP1)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPC1, UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP1._UPC.UPCP */
                            If (LNot (And (PR2, 0x02)))
                            {
                                Store (0x00, Index (UPCP, 0x00))
                            }

                            Return (UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP1._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            Store (\PLD1, PLDP) /* \_SB_.PCI0.XHCI.URTH.HSP1._PLD.PLDP */
                            CreateBitField (PLDP, 0x40, VIS)
                            If (LNot (And (PR2, 0x02)))
                            {
                                And (VIS, 0x00, VIS) /* \_SB_.PCI0.XHCI.URTH.HSP1._PLD.VIS_ */
                            }

                            Return (PLDP) /* \_SB_.PCI0.XHCI.URTH.HSP1._PLD.PLDP */
                        }
                    }

                    Device (HSP2)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPC2, UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP2._UPC.UPCP */
                            If (LNot (And (PR2, 0x04)))
                            {
                                Store (0x00, Index (UPCP, 0x00))
                            }

                            Return (UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP2._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            Store (\PLD2, PLDP) /* \_SB_.PCI0.XHCI.URTH.HSP2._PLD.PLDP */
                            CreateBitField (PLDP, 0x40, VIS)
                            If (LNot (And (PR2, 0x04)))
                            {
                                And (VIS, 0x00, VIS) /* \_SB_.PCI0.XHCI.URTH.HSP2._PLD.VIS_ */
                            }

                            Return (PLDP) /* \_SB_.PCI0.XHCI.URTH.HSP2._PLD.PLDP */
                        }
                    }

                    Device (HSP3)
                    {
                        Name (_ADR, 0x04)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPC3, UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP3._UPC.UPCP */
                            If (LNot (And (PR2, 0x08)))
                            {
                                Store (0x00, Index (UPCP, 0x00))
                            }

                            Return (UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP3._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            Store (\PLD3, PLDP) /* \_SB_.PCI0.XHCI.URTH.HSP3._PLD.PLDP */
                            CreateBitField (PLDP, 0x40, VIS)
                            If (LNot (And (PR2, 0x08)))
                            {
                                And (VIS, 0x00, VIS) /* \_SB_.PCI0.XHCI.URTH.HSP3._PLD.VIS_ */
                            }

                            Return (PLDP) /* \_SB_.PCI0.XHCI.URTH.HSP3._PLD.PLDP */
                        }
                    }

                    Device (HSP4)
                    {
                        Name (_ADR, 0x05)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPCI, UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP4._UPC.UPCP */
                            If (LNot (And (PR2, 0x10)))
                            {
                                Store (0x00, Index (UPCP, 0x00))
                            }

                            Return (UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP4._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            Store (\PLDI, PLDP) /* \_SB_.PCI0.XHCI.URTH.HSP4._PLD.PLDP */
                            CreateBitField (PLDP, 0x40, VIS)
                            If (LNot (And (PR2, 0x10)))
                            {
                                And (VIS, 0x00, VIS) /* \_SB_.PCI0.XHCI.URTH.HSP4._PLD.VIS_ */
                            }

                            Return (PLDP) /* \_SB_.PCI0.XHCI.URTH.HSP4._PLD.PLDP */
                        }
                    }

                    Device (HSP5)
                    {
                        Name (_ADR, 0x06)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPCI, UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP5._UPC.UPCP */
                            If (LNot (And (PR2, 0x20)))
                            {
                                Store (0x00, Index (UPCP, 0x00))
                            }

                            Return (UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP5._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            Store (\PLDI, PLDP) /* \_SB_.PCI0.XHCI.URTH.HSP5._PLD.PLDP */
                            CreateBitField (PLDP, 0x40, VIS)
                            If (LNot (And (PR2, 0x20)))
                            {
                                And (VIS, 0x00, VIS) /* \_SB_.PCI0.XHCI.URTH.HSP5._PLD.VIS_ */
                            }

                            Return (PLDP) /* \_SB_.PCI0.XHCI.URTH.HSP5._PLD.PLDP */
                        }
                    }

                    Device (HSP6)
                    {
                        Name (_ADR, 0x07)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPCI, UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP6._UPC.UPCP */
                            If (LNot (And (PR2, 0x40)))
                            {
                                Store (0x00, Index (UPCP, 0x00))
                            }

                            Return (UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP6._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            Store (\PLDI, PLDP) /* \_SB_.PCI0.XHCI.URTH.HSP6._PLD.PLDP */
                            CreateBitField (PLDP, 0x40, VIS)
                            If (LNot (And (PR2, 0x40)))
                            {
                                And (VIS, 0x00, VIS) /* \_SB_.PCI0.XHCI.URTH.HSP6._PLD.VIS_ */
                            }

                            Return (PLDP) /* \_SB_.PCI0.XHCI.URTH.HSP6._PLD.PLDP */
                        }
                    }

                    Device (HSP7)
                    {
                        Name (_ADR, 0x08)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPCI, UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP7._UPC.UPCP */
                            If (LNot (And (PR2, 0x80)))
                            {
                                Store (0x00, Index (UPCP, 0x00))
                            }

                            Return (UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP7._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            Store (\PLDI, PLDP) /* \_SB_.PCI0.XHCI.URTH.HSP7._PLD.PLDP */
                            CreateBitField (PLDP, 0x40, VIS)
                            If (LNot (And (PR2, 0x80)))
                            {
                                And (VIS, 0x00, VIS) /* \_SB_.PCI0.XHCI.URTH.HSP7._PLD.VIS_ */
                            }

                            Return (PLDP) /* \_SB_.PCI0.XHCI.URTH.HSP7._PLD.PLDP */
                        }

                        Device (WCAM)
                        {
                            Name (_ADR, 0x08)  // _ADR: Address
                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                If (\WIN8)
                                {
                                    Return (0x0F)
                                }
                                Else
                                {
                                    Return (0x00)
                                }
                            }

                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (\UPCI)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (\PLDC)
                            }
                        }
                    }

                    Device (SSP0)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            If (LEqual (PJCD, 0x02))
                            {
                                Return (0x0A)
                            }
                            Else
                            {
                                Return (0x0C)
                            }
                        }

                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPC0, UPCP) /* \_SB_.PCI0.XHCI.URTH.SSP0._UPC.UPCP */
                            If (LOr (LNot (And (PR2, 0x01)), LNot (And (PR3, 0x01))))
                            {
                                Store (0x00, Index (UPCP, 0x00))
                            }

                            Return (UPCP) /* \_SB_.PCI0.XHCI.URTH.SSP0._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            Store (\PLD0, PLDP) /* \_SB_.PCI0.XHCI.URTH.SSP0._PLD.PLDP */
                            CreateBitField (PLDP, 0x40, VIS)
                            If (LOr (LNot (And (PR2, 0x01)), LNot (And (PR3, 0x01))))
                            {
                                And (VIS, 0x00, VIS) /* \_SB_.PCI0.XHCI.URTH.SSP0._PLD.VIS_ */
                            }

                            Return (PLDP) /* \_SB_.PCI0.XHCI.URTH.SSP0._PLD.PLDP */
                        }
                    }

                    Device (SSP1)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            If (LEqual (PJCD, 0x02))
                            {
                                Return (0x0B)
                            }
                            Else
                            {
                                Return (0x0D)
                            }
                        }

                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPC1, UPCP) /* \_SB_.PCI0.XHCI.URTH.SSP1._UPC.UPCP */
                            If (LOr (LNot (And (PR2, 0x02)), LNot (And (PR3, 0x02))))
                            {
                                Store (0x00, Index (UPCP, 0x00))
                            }

                            Return (UPCP) /* \_SB_.PCI0.XHCI.URTH.SSP1._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            Store (\PLD1, PLDP) /* \_SB_.PCI0.XHCI.URTH.SSP1._PLD.PLDP */
                            CreateBitField (PLDP, 0x40, VIS)
                            If (LOr (LNot (And (PR2, 0x02)), LNot (And (PR3, 0x02))))
                            {
                                And (VIS, 0x00, VIS) /* \_SB_.PCI0.XHCI.URTH.SSP1._PLD.VIS_ */
                            }

                            Return (PLDP) /* \_SB_.PCI0.XHCI.URTH.SSP1._PLD.PLDP */
                        }
                    }

                    Device (SSP2)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            If (LEqual (PJCD, 0x02))
                            {
                                Return (0x0C)
                            }
                            Else
                            {
                                Return (0x0E)
                            }
                        }

                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPC2, UPCP) /* \_SB_.PCI0.XHCI.URTH.SSP2._UPC.UPCP */
                            If (LOr (LNot (And (PR2, 0x04)), LNot (And (PR3, 0x04))))
                            {
                                Store (0x00, Index (UPCP, 0x00))
                            }

                            Return (UPCP) /* \_SB_.PCI0.XHCI.URTH.SSP2._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            Store (\PLD2, PLDP) /* \_SB_.PCI0.XHCI.URTH.SSP2._PLD.PLDP */
                            CreateBitField (PLDP, 0x40, VIS)
                            If (LOr (LNot (And (PR2, 0x04)), LNot (And (PR3, 0x04))))
                            {
                                And (VIS, 0x00, VIS) /* \_SB_.PCI0.XHCI.URTH.SSP2._PLD.VIS_ */
                            }

                            Return (PLDP) /* \_SB_.PCI0.XHCI.URTH.SSP2._PLD.PLDP */
                        }
                    }

                    Device (SSP3)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            If (LEqual (PJCD, 0x02))
                            {
                                Return (0x0D)
                            }
                            Else
                            {
                                Return (0x0F)
                            }
                        }

                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPC3, UPCP) /* \_SB_.PCI0.XHCI.URTH.SSP3._UPC.UPCP */
                            If (LOr (LNot (And (PR2, 0x04)), LNot (And (PR3, 0x04))))
                            {
                                Store (0x00, Index (UPCP, 0x00))
                            }

                            Return (UPCP) /* \_SB_.PCI0.XHCI.URTH.SSP3._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            Store (\PLD3, PLDP) /* \_SB_.PCI0.XHCI.URTH.SSP3._PLD.PLDP */
                            CreateBitField (PLDP, 0x40, VIS)
                            If (LOr (LNot (And (PR2, 0x04)), LNot (And (PR3, 0x04))))
                            {
                                And (VIS, 0x00, VIS) /* \_SB_.PCI0.XHCI.URTH.SSP3._PLD.VIS_ */
                            }

                            Return (PLDP) /* \_SB_.PCI0.XHCI.URTH.SSP3._PLD.PLDP */
                        }
                    }
                }
            }

            Device (EHC1)
            {
                Name (_ADR, 0x001D0000)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
                OperationRegion (EHCS, PCI_Config, 0x00, 0x0100)
                Field (EHCS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x62), 
                    PWKI,   1, 
                    PWUC,   8, 
                    Offset (0x64)
                }

                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Name (_PR1, Package (0x01)  // _PR1: Power Resources for D1
                {
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                {
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Store (0x01, PWKI) /* \_SB_.PCI0.EHC1.PWKI */
                    Store (0x23, PWUC) /* \_SB_.PCI0.EHC1.PWUC */
                }

                Name (_PRW, Package (0x03)  // _PRW: Power Resources for Wake
                {
                    0x6D, 
                    0x00, 
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Device (URTH)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    Device (URMH)
                    {
                        Name (_ADR, 0x01)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Return (\UPCI)
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Return (\PLDI)
                        }

                        Device (PRT0)
                        {
                            Name (_ADR, 0x01)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0x00, 
                                    0x00, 
                                    0x00, 
                                    0x00
                                })
                                CopyObject (\UPC0, UPCP) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT0._UPC.UPCP */
                                If (LEqual (\XHCI, 0x00)) {}
                                Else
                                {
                                    If (And (\_SB.PCI0.XHCI.PR2, 0x01))
                                    {
                                        Store (0x00, Index (UPCP, 0x00))
                                    }
                                }

                                Return (UPCP) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT0._UPC.UPCP */
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Buffer (0x10) {})
                                Store (\PLD0, PLDP) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT0._PLD.PLDP */
                                CreateBitField (PLDP, 0x40, VIS)
                                If (LEqual (\XHCI, 0x00)) {}
                                Else
                                {
                                    If (And (\_SB.PCI0.XHCI.PR2, 0x01))
                                    {
                                        And (VIS, 0x00, VIS) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT0._PLD.VIS_ */
                                    }

                                    Return (PLDP) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT0._PLD.PLDP */
                                }
                            }
                        }

                        Device (PRT1)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0x00, 
                                    0x00, 
                                    0x00, 
                                    0x00
                                })
                                CopyObject (\UPC1, UPCP) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT1._UPC.UPCP */
                                If (LEqual (\XHCI, 0x00)) {}
                                Else
                                {
                                    If (And (\_SB.PCI0.XHCI.PR2, 0x02))
                                    {
                                        Store (0x00, Index (UPCP, 0x00))
                                    }
                                }

                                Return (UPCP) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT1._UPC.UPCP */
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Buffer (0x10) {})
                                Store (\PLD1, PLDP) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT1._PLD.PLDP */
                                CreateBitField (PLDP, 0x40, VIS)
                                If (LEqual (\XHCI, 0x00)) {}
                                Else
                                {
                                    If (And (\_SB.PCI0.XHCI.PR2, 0x02))
                                    {
                                        And (VIS, 0x00, VIS) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT1._PLD.VIS_ */
                                    }
                                }

                                Return (PLDP) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT1._PLD.PLDP */
                            }
                        }

                        Device (PRT2)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0x00, 
                                    0x00, 
                                    0x00, 
                                    0x00
                                })
                                CopyObject (\UPC2, UPCP) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT2._UPC.UPCP */
                                If (LEqual (\XHCI, 0x00)) {}
                                Else
                                {
                                    If (And (\_SB.PCI0.XHCI.PR2, 0x04))
                                    {
                                        Store (0x00, Index (UPCP, 0x00))
                                    }
                                }

                                Return (UPCP) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT2._UPC.UPCP */
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Buffer (0x10) {})
                                Store (\PLD2, PLDP) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT2._PLD.PLDP */
                                CreateBitField (PLDP, 0x40, VIS)
                                If (LEqual (\XHCI, 0x00)) {}
                                Else
                                {
                                    If (And (\_SB.PCI0.XHCI.PR2, 0x04))
                                    {
                                        And (VIS, 0x00, VIS) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT2._PLD.VIS_ */
                                    }
                                }

                                Return (PLDP) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT2._PLD.PLDP */
                            }
                        }

                        Device (PRT3)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0x00, 
                                    0x00, 
                                    0x00, 
                                    0x00
                                })
                                CopyObject (\UPCI, UPCP) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT3._UPC.UPCP */
                                If (LEqual (\XHCI, 0x00)) {}
                                Else
                                {
                                    If (And (\_SB.PCI0.XHCI.PR2, 0x08))
                                    {
                                        Store (0x00, Index (UPCP, 0x00))
                                    }
                                }

                                Return (UPCP) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT3._UPC.UPCP */
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Buffer (0x10) {})
                                Store (\PLD3, PLDP) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT3._PLD.PLDP */
                                CreateBitField (PLDP, 0x40, VIS)
                                If (LEqual (\XHCI, 0x00)) {}
                                Else
                                {
                                    If (And (\_SB.PCI0.XHCI.PR2, 0x08))
                                    {
                                        And (VIS, 0x00, VIS) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT3._PLD.VIS_ */
                                    }
                                }

                                Return (PLDP) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT3._PLD.PLDP */
                            }
                        }

                        Device (PRT4)
                        {
                            Name (_ADR, 0x05)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0x00, 
                                    0x00, 
                                    0x00, 
                                    0x00
                                })
                                CopyObject (\UPCI, UPCP) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT4._UPC.UPCP */
                                If (LEqual (\XHCI, 0x00)) {}
                                Else
                                {
                                    If (And (\_SB.PCI0.XHCI.PR2, 0x10))
                                    {
                                        Store (0x00, Index (UPCP, 0x00))
                                    }
                                }

                                Return (UPCP) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT4._UPC.UPCP */
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Buffer (0x10) {})
                                Store (\PLDI, PLDP) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT4._PLD.PLDP */
                                CreateBitField (PLDP, 0x40, VIS)
                                If (LEqual (\XHCI, 0x00)) {}
                                Else
                                {
                                    If (And (\_SB.PCI0.XHCI.PR2, 0x10))
                                    {
                                        And (VIS, 0x00, VIS) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT4._PLD.VIS_ */
                                    }
                                }

                                Return (PLDP) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT4._PLD.PLDP */
                            }
                        }

                        Device (PRT5)
                        {
                            Name (_ADR, 0x06)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0x00, 
                                    0x00, 
                                    0x00, 
                                    0x00
                                })
                                CopyObject (\UPCI, UPCP) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT5._UPC.UPCP */
                                If (LEqual (\XHCI, 0x00)) {}
                                Else
                                {
                                    If (And (\_SB.PCI0.XHCI.PR2, 0x20))
                                    {
                                        Store (0x00, Index (UPCP, 0x00))
                                    }
                                }

                                Return (UPCP) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT5._UPC.UPCP */
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Buffer (0x10) {})
                                Store (\PLDI, PLDP) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT5._PLD.PLDP */
                                CreateBitField (PLDP, 0x40, VIS)
                                If (LEqual (\XHCI, 0x00)) {}
                                Else
                                {
                                    If (And (\_SB.PCI0.XHCI.PR2, 0x20))
                                    {
                                        And (VIS, 0x00, VIS) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT5._PLD.VIS_ */
                                    }
                                }

                                Return (PLDP) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT5._PLD.PLDP */
                            }
                        }

                        Device (PRT6)
                        {
                            Name (_ADR, 0x07)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Name (UPCP, Package (0x04)
                                {
                                    0x00, 
                                    0x00, 
                                    0x00, 
                                    0x00
                                })
                                CopyObject (\UPCI, UPCP) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT6._UPC.UPCP */
                                If (LEqual (\XHCI, 0x00)) {}
                                Else
                                {
                                    If (And (\_SB.PCI0.XHCI.PR2, 0x40))
                                    {
                                        Store (0x00, Index (UPCP, 0x00))
                                    }
                                }

                                Return (UPCP) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT6._UPC.UPCP */
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Buffer (0x10) {})
                                Store (\PLDI, PLDP) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT6._PLD.PLDP */
                                CreateBitField (PLDP, 0x40, VIS)
                                If (LEqual (\XHCI, 0x00)) {}
                                Else
                                {
                                    If (And (\_SB.PCI0.XHCI.PR2, 0x40))
                                    {
                                        And (VIS, 0x00, VIS) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT6._PLD.VIS_ */
                                    }
                                }

                                Return (PLDP) /* \_SB_.PCI0.EHC1.URTH.URMH.PRT6._PLD.PLDP */
                            }
                        }

                        Device (PRT7)
                        {
                            Name (_ADR, 0x08)  // _ADR: Address
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (\UPCI)
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (\PLDI)
                            }

                            Device (WCAM)
                            {
                                Name (_ADR, 0x08)  // _ADR: Address
                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    If (\WIN8)
                                    {
                                        Return (0x0F)
                                    }
                                    Else
                                    {
                                        Return (0x00)
                                    }
                                }

                                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                                {
                                    Return (\UPCI)
                                }

                                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                                {
                                    Return (\PLDC)
                                }
                            }
                        }
                    }

                    Device (PRT3)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            CopyObject (\UPCI, UPCP) /* \_SB_.PCI0.EHC1.URTH.PRT3._UPC.UPCP */
                            If (LEqual (\XHCI, 0x00))
                            {
                                Store (0x00, Index (UPCP, 0x00))
                            }
                            Else
                            {
                                If (And (\_SB.PCI0.XHCI.PR2, 0x40))
                                {
                                    Store (0x00, Index (UPCP, 0x00))
                                }
                            }

                            Return (UPCP) /* \_SB_.PCI0.EHC1.URTH.PRT3._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Buffer (0x10) {})
                            Store (\PLDI, PLDP) /* \_SB_.PCI0.EHC1.URTH.PRT3._PLD.PLDP */
                            CreateBitField (PLDP, 0x40, VIS)
                            If (LEqual (\XHCI, 0x00)) {}
                            Else
                            {
                                If (And (\_SB.PCI0.XHCI.PR2, 0x40))
                                {
                                    And (VIS, 0x00, VIS) /* \_SB_.PCI0.EHC1.URTH.PRT3._PLD.VIS_ */
                                }
                            }

                            Return (PLDP) /* \_SB_.PCI0.EHC1.URTH.PRT3._PLD.PLDP */
                        }
                    }
                }
            }

            Device (HDEF)
            {
                Name (_ADR, 0x001B0000)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
            }
            Device (IMEI)
            {
                Name (_ADR, 0x00160000)
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Name (BDEV, 0xFF)
            Name (BSTS, 0x00)
            Name (BHKE, 0x00)
            Method (_Q2C, 0, NotSerialized)  // _Qxx: EC Query
            {
                If (LEqual (BSTS, 0x00))
                {
                    Store (BGID (0x00), BDEV) /* \_SB_.PCI0.LPC_.EC__.BDEV */
                    NBRE (BDEV)
                }
            }

            Method (_Q2D, 0, NotSerialized)  // _Qxx: EC Query
            {
                Store (BGID (0x00), BDEV) /* \_SB_.PCI0.LPC_.EC__.BDEV */
                NBIN (BDEV)
            }

            Method (_Q38, 0, NotSerialized)  // _Qxx: EC Query
            {
                Store (BGID (0x00), Local0)
                If (LEqual (Local0, 0x0F))
                {
                    BDIS ()
                    \BHDP (0x01, 0x00)
                    NBEJ (BDEV)
                    Store (Local0, BDEV) /* \_SB_.PCI0.LPC_.EC__.BDEV */
                    If (LEqual (\BIDE, 0x03))
                    {
                        Store (0x00, \_SB.PCI0.SAT1.PRIM.GTME) /* External reference */
                        Store (0x00, \_SB.PCI0.SAT1.SCND.GTME) /* External reference */
                    }
                }
                Else
                {
                    If (HPBU) {}
                    Else
                    {
                        Store (Local0, BDEV) /* \_SB_.PCI0.LPC_.EC__.BDEV */
                        NBIN (Local0)
                    }
                }
            }

            Method (NBRE, 1, NotSerialized)
            {
                If (LLess (Arg0, 0x0C))
                {
                    If (LEqual (\BIDE, 0x03))
                    {
                        Notify (\_SB.PCI0.SAT1.SCND.MSTR, 0x03) // Eject Request
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.SAT1.PRT1, 0x03) // Eject Request
                    }
                }
            }

            Method (NBEJ, 1, NotSerialized)
            {
                If (LEqual (BSTS, 0x00))
                {
                    If (LLess (Arg0, 0x0C))
                    {
                        If (LEqual (\BIDE, 0x03))
                        {
                            Notify (\_SB.PCI0.SAT1.SCND.MSTR, 0x01) // Device Check
                        }
                        Else
                        {
                            Notify (\_SB.PCI0.SAT1.PRT1, 0x01) // Device Check
                        }
                    }
                }

                BEEP (0x00)
                Store (0x00, BSTS) /* \_SB_.PCI0.LPC_.EC__.BSTS */
            }

            Method (NBIN, 1, NotSerialized)
            {
                If (LLess (Arg0, 0x0C))
                {
                    BEN (0x01)
                    If (LEqual (\BIDE, 0x03))
                    {
                        Notify (\_SB.PCI0.SAT1.SCND.MSTR, 0x01) // Device Check
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.SAT1.PRT1, 0x01) // Device Check
                    }
                }

                BEEP (0x00)
                Store (0x00, BSTS) /* \_SB_.PCI0.LPC_.EC__.BSTS */
            }

            Method (BEJ0, 1, NotSerialized)
            {
                If (Arg0)
                {
                    BDIS ()
                    \BHDP (0x01, 0x00)
                    Store (0x01, BSTS) /* \_SB_.PCI0.LPC_.EC__.BSTS */
                    If (BHKE)
                    {
                        Store (0x00, BHKE) /* \_SB_.PCI0.LPC_.EC__.BHKE */
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x3003)
                    }
                }
                Else
                {
                    Store (0x00, BSTS) /* \_SB_.PCI0.LPC_.EC__.BSTS */
                }
            }

            Method (BEJ3, 1, NotSerialized)
            {
                If (Arg0)
                {
                    BDIS ()
                    Store (0x01, BSTS) /* \_SB_.PCI0.LPC_.EC__.BSTS */
                }
                Else
                {
                    Store (0x00, BSTS) /* \_SB_.PCI0.LPC_.EC__.BSTS */
                }
            }

            Method (BPTS, 1, NotSerialized)
            {
                Store (0x01, HDBM) /* \_SB_.PCI0.LPC_.EC__.HDBM */
                If (LNotEqual (BSTS, 0x00))
                {
                    Store (0x0F, BDEV) /* \_SB_.PCI0.LPC_.EC__.BDEV */
                    Store (0x00, BSTS) /* \_SB_.PCI0.LPC_.EC__.BSTS */
                }

                Store (0x00, BHKE) /* \_SB_.PCI0.LPC_.EC__.BHKE */
                BUWK (0x00)
            }

            Method (BWAK, 1, NotSerialized)
            {
                BUWK (0x00)
                Store (BGID (0x00), Local0)
                If (LEqual (BSTS, 0x00))
                {
                    If (LNotEqual (Local0, BDEV))
                    {
                        NBEJ (BDEV)
                        Store (Local0, BDEV) /* \_SB_.PCI0.LPC_.EC__.BDEV */
                        NBIN (Local0)
                    }
                    Else
                    {
                        If (LOr (\LFDC, LNotEqual (BDEV, 0x0D)))
                        {
                            If (LNotEqual (Local0, 0x0F))
                            {
                                If (HPBU)
                                {
                                    If (LLessEqual (Arg0, 0x02)) {}
                                    Else
                                    {
                                        NBRE (Local0)
                                    }
                                }
                            }
                        }
                    }
                }

                If (LLess (BDEV, 0x0C))
                {
                    \UBIS (0x00)
                }
                Else
                {
                    \UBIS (0x01)
                }
            }

            Method (BDIS, 0, NotSerialized)
            {
                If (LNot (\_SB.PCI0.LPC.CSON))
                {
                    If (LNot (\_SB.PCI0.LPC.GLIS))
                    {
                        \UBIS (0x01)
                    }

                    Store (0x01, \_SB.PCI0.LPC.CSON)
                    Store (0x0F, \IDET)
                }
            }

            Method (BPON, 1, NotSerialized)
            {
                If (\_SB.PCI0.LPC.CSON)
                {
                    Store (0x00, \_SB.PCI0.LPC.CSON)
                    If (\_SB.PCI0.LPC.GLIS)
                    {
                        \UBIS (0x00)
                    }
                }
            }

            Method (BEN, 1, NotSerialized)
            {
                If (\_SB.PCI0.LPC.CSON)
                {
                    BPON (Arg0)
                    If (Arg0)
                    {
                        IRDY ()
                    }
                }
            }

            Method (BSTA, 1, NotSerialized)
            {
                If (\_SB.PCI0.LPC.CSON)
                {
                    Return (0x00)
                }

                BINI ()
                If (LEqual (Arg0, 0x01))
                {
                    Return (LLess (BDEV, 0x0C))
                }

                Return (0x00)
            }

            Method (BUWK, 1, NotSerialized)
            {
                If (\H8DR)
                {
                    If (Arg0)
                    {
                        Store (0x01, \_SB.PCI0.LPC.EC.HWBU)
                    }
                    Else
                    {
                        Store (0x00, \_SB.PCI0.LPC.EC.HWBU)
                    }
                }
                Else
                {
                    If (Arg0)
                    {
                        \MBEC (0x32, 0xFF, 0x80)
                    }
                    Else
                    {
                        \MBEC (0x32, 0x7F, 0x00)
                    }
                }
            }

            Method (BINI, 0, NotSerialized)
            {
                If (LEqual (BDEV, 0xFF))
                {
                    Store (BGID (0x00), BDEV) /* \_SB_.PCI0.LPC_.EC__.BDEV */
                }
            }

            Method (BGID, 1, NotSerialized)
            {
                If (Arg0)
                {
                    Store (0xFF, Local0)
                }
                Else
                {
                    If (\H8DR)
                    {
                        Store (HPBU, Local1)
                        Store (HBID, Local2)
                    }
                    Else
                    {
                        Store (RBEC (0x47), Local2)
                        And (Local2, 0x01, Local1)
                        And (Local2, 0x04, Local2)
                        ShiftRight (Local2, 0x02, Local2)
                    }

                    If (Local2)
                    {
                        Store (0x0F, Local0)
                    }
                    Else
                    {
                        If (HDUB)
                        {
                            Store (0x0F, Local0)
                        }
                        Else
                        {
                            If (LOr (LEqual (\IDET, 0x03), LEqual (\IDET, 0x06)))
                            {
                                Store (\IDET, Local0)
                            }
                            Else
                            {
                                Store (0x07, Local0)
                            }
                        }
                    }

                    If (LEqual (Local0, 0x0F)) {}
                }

                If (LAnd (\HDUB, LLess (Local0, 0x0C)))
                {
                    Store (0x0F, Local0)
                }

                Return (Local0)
            }

            Method (IRDY, 0, NotSerialized)
            {
                Store (0x01F4, Local0)
                Store (0x3C, Local1)
                Store (Zero, Local2)
                While (Local1)
                {
                    Sleep (Local0)
                    Store (\BCHK (), Local3)
                    If (LNot (Local3))
                    {
                        Break
                    }

                    If (LEqual (Local3, 0x02))
                    {
                        Store (One, Local2)
                        Break
                    }

                    Decrement (Local1)
                }

                Return (Local2)
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Method (_Q43, 0, NotSerialized)  // _Qxx: EC Query
            {
                \UCMS (0x18)
            }

            Method (SAUM, 1, NotSerialized)
            {
                If (LGreater (Arg0, 0x03))
                {
                    Noop
                }
                Else
                {
                    If (\H8DR)
                    {
                        Store (Arg0, HAUM) /* \_SB_.PCI0.LPC_.EC__.HAUM */
                    }
                    Else
                    {
                        \MBEC (0x03, 0x9F, ShiftLeft (Arg0, 0x05))
                    }
                }
            }
        }

        Scope (\_SB.PCI0.LPC.EC.HKEY)
        {
            Method (GSMS, 1, NotSerialized)
            {
                Return (\AUDC (0x00, 0x00))
            }

            Method (SSMS, 1, NotSerialized)
            {
                Return (\AUDC (0x01, And (Arg0, 0x01)))
            }

            Method (SHDA, 1, NotSerialized)
            {
                Return (\AUDC (0x02, And (Arg0, 0x01)))
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Name (BRTW, Package (0x12)
            {
                0x64, 
                0x64, 
                0x05, 
                0x0A, 
                0x14, 
                0x19, 
                0x1E, 
                0x23, 
                0x28, 
                0x2D, 
                0x32, 
                0x37, 
                0x3C, 
                0x41, 
                0x46, 
                0x50, 
                0x5A, 
                0x64
            })
            Name (BRTB, Package (0x04)
            {
                Package (0x16)
                {
                    0x1E, 
                    0x03, 
                    0x03, 
                    0x06, 
                    0x09, 
                    0x0C, 
                    0x0F, 
                    0x13, 
                    0x17, 
                    0x1C, 
                    0x21, 
                    0x28, 
                    0x32, 
                    0x41, 
                    0x58, 
                    0x7D, 
                    0xB9, 
                    0xFF, 
                    0x0393, 
                    0x0393, 
                    0x03, 
                    0x03
                }, 

                Package (0x16)
                {
                    0x19, 
                    0x04, 
                    0x04, 
                    0x06, 
                    0x08, 
                    0x0B, 
                    0x0F, 
                    0x14, 
                    0x1B, 
                    0x24, 
                    0x31, 
                    0x3F, 
                    0x50, 
                    0x66, 
                    0x82, 
                    0xA5, 
                    0xCD, 
                    0xFF, 
                    0xDC, 
                    0xDC, 
                    0x04, 
                    0x04
                }, 

                Package (0x16)
                {
                    0x16, 
                    0x04, 
                    0x04, 
                    0x08, 
                    0x0C, 
                    0x13, 
                    0x19, 
                    0x20, 
                    0x27, 
                    0x30, 
                    0x39, 
                    0x43, 
                    0x4E, 
                    0x5C, 
                    0x71, 
                    0x8B, 
                    0xB4, 
                    0xFF, 
                    0xDC, 
                    0xDC, 
                    0x04, 
                    0x04
                }, 

                Package (0x16)
                {
                    0x14, 
                    0x04, 
                    0x04, 
                    0x08, 
                    0x0C, 
                    0x13, 
                    0x19, 
                    0x20, 
                    0x27, 
                    0x30, 
                    0x39, 
                    0x43, 
                    0x4E, 
                    0x5C, 
                    0x71, 
                    0x8B, 
                    0xB4, 
                    0xFF, 
                    0xDC, 
                    0xDC, 
                    0x04, 
                    0x04
                }
            })
            Name (BRTD, Package (0x04)
            {
                Package (0x65)
                {
                    0x03, 
                    0x04, 
                    0x05, 
                    0x06, 
                    0x07, 
                    0x08, 
                    0x09, 
                    0x0A, 
                    0x0B, 
                    0x0C, 
                    0x0D, 
                    0x0E, 
                    0x0F, 
                    0x10, 
                    0x11, 
                    0x12, 
                    0x13, 
                    0x14, 
                    0x15, 
                    0x16, 
                    0x17, 
                    0x18, 
                    0x19, 
                    0x1A, 
                    0x1C, 
                    0x1D, 
                    0x1F, 
                    0x21, 
                    0x22, 
                    0x24, 
                    0x26, 
                    0x28, 
                    0x2A, 
                    0x2C, 
                    0x2E, 
                    0x30, 
                    0x33, 
                    0x35, 
                    0x37, 
                    0x3A, 
                    0x3C, 
                    0x3F, 
                    0x41, 
                    0x44, 
                    0x46, 
                    0x49, 
                    0x4C, 
                    0x4F, 
                    0x51, 
                    0x54, 
                    0x57, 
                    0x5A, 
                    0x5D, 
                    0x61, 
                    0x64, 
                    0x67, 
                    0x6A, 
                    0x6E, 
                    0x71, 
                    0x75, 
                    0x78, 
                    0x7C, 
                    0x80, 
                    0x83, 
                    0x87, 
                    0x8B, 
                    0x8F, 
                    0x93, 
                    0x97, 
                    0x9B, 
                    0x9F, 
                    0xA3, 
                    0xA8, 
                    0xAC, 
                    0xB0, 
                    0xB5, 
                    0xB9, 
                    0xBE, 
                    0xC3, 
                    0xC7, 
                    0xCC, 
                    0xCE, 
                    0xD1, 
                    0xD3, 
                    0xD6, 
                    0xD8, 
                    0xDB, 
                    0xDD, 
                    0xE0, 
                    0xE2, 
                    0xE5, 
                    0xE7, 
                    0xEA, 
                    0xEC, 
                    0xEF, 
                    0xF2, 
                    0xF4, 
                    0xF7, 
                    0xFA, 
                    0xFC, 
                    0xFF
                }, 

                Package (0x65)
                {
                    0x03, 
                    0x04, 
                    0x05, 
                    0x06, 
                    0x07, 
                    0x08, 
                    0x09, 
                    0x0A, 
                    0x0B, 
                    0x0C, 
                    0x0D, 
                    0x0E, 
                    0x0F, 
                    0x10, 
                    0x11, 
                    0x12, 
                    0x13, 
                    0x14, 
                    0x15, 
                    0x16, 
                    0x17, 
                    0x18, 
                    0x19, 
                    0x1A, 
                    0x1B, 
                    0x1C, 
                    0x1D, 
                    0x1E, 
                    0x1F, 
                    0x20, 
                    0x21, 
                    0x22, 
                    0x23, 
                    0x25, 
                    0x26, 
                    0x28, 
                    0x2A, 
                    0x2C, 
                    0x2E, 
                    0x2F, 
                    0x31, 
                    0x33, 
                    0x35, 
                    0x37, 
                    0x3A, 
                    0x3C, 
                    0x3E, 
                    0x40, 
                    0x42, 
                    0x45, 
                    0x47, 
                    0x4A, 
                    0x4C, 
                    0x4E, 
                    0x51, 
                    0x54, 
                    0x56, 
                    0x59, 
                    0x5C, 
                    0x5E, 
                    0x61, 
                    0x64, 
                    0x67, 
                    0x6A, 
                    0x6D, 
                    0x70, 
                    0x73, 
                    0x76, 
                    0x79, 
                    0x7D, 
                    0x80, 
                    0x83, 
                    0x86, 
                    0x8A, 
                    0x8D, 
                    0x91, 
                    0x94, 
                    0x98, 
                    0x9C, 
                    0x9F, 
                    0xA3, 
                    0xA7, 
                    0xAB, 
                    0xAF, 
                    0xB4, 
                    0xB8, 
                    0xBC, 
                    0xC1, 
                    0xC5, 
                    0xCA, 
                    0xCE, 
                    0xD3, 
                    0xD8, 
                    0xDC, 
                    0xE1, 
                    0xE6, 
                    0xEB, 
                    0xF0, 
                    0xF5, 
                    0xFA, 
                    0xFF
                }, 

                Package (0x65)
                {
                    0x03, 
                    0x04, 
                    0x05, 
                    0x06, 
                    0x07, 
                    0x08, 
                    0x09, 
                    0x0A, 
                    0x0B, 
                    0x0C, 
                    0x0D, 
                    0x0E, 
                    0x0F, 
                    0x10, 
                    0x11, 
                    0x12, 
                    0x13, 
                    0x14, 
                    0x15, 
                    0x16, 
                    0x17, 
                    0x18, 
                    0x19, 
                    0x1A, 
                    0x1C, 
                    0x1D, 
                    0x1F, 
                    0x21, 
                    0x22, 
                    0x24, 
                    0x26, 
                    0x28, 
                    0x2A, 
                    0x2C, 
                    0x2E, 
                    0x30, 
                    0x33, 
                    0x35, 
                    0x37, 
                    0x3A, 
                    0x3C, 
                    0x3F, 
                    0x41, 
                    0x44, 
                    0x46, 
                    0x49, 
                    0x4C, 
                    0x4F, 
                    0x51, 
                    0x54, 
                    0x57, 
                    0x5A, 
                    0x5D, 
                    0x61, 
                    0x64, 
                    0x67, 
                    0x6A, 
                    0x6E, 
                    0x71, 
                    0x75, 
                    0x78, 
                    0x7C, 
                    0x80, 
                    0x83, 
                    0x87, 
                    0x8B, 
                    0x8F, 
                    0x93, 
                    0x97, 
                    0x9B, 
                    0x9F, 
                    0xA3, 
                    0xA8, 
                    0xAC, 
                    0xB0, 
                    0xB5, 
                    0xB9, 
                    0xBE, 
                    0xC3, 
                    0xC7, 
                    0xCC, 
                    0xCE, 
                    0xD1, 
                    0xD3, 
                    0xD6, 
                    0xD8, 
                    0xDB, 
                    0xDD, 
                    0xE0, 
                    0xE2, 
                    0xE5, 
                    0xE7, 
                    0xEA, 
                    0xEC, 
                    0xEF, 
                    0xF2, 
                    0xF4, 
                    0xF7, 
                    0xFA, 
                    0xFC, 
                    0xFF
                }, 

                Package (0x65)
                {
                    0x03, 
                    0x04, 
                    0x05, 
                    0x06, 
                    0x07, 
                    0x08, 
                    0x09, 
                    0x0A, 
                    0x0B, 
                    0x0C, 
                    0x0D, 
                    0x0E, 
                    0x0F, 
                    0x10, 
                    0x11, 
                    0x12, 
                    0x13, 
                    0x14, 
                    0x15, 
                    0x16, 
                    0x17, 
                    0x18, 
                    0x19, 
                    0x1A, 
                    0x1C, 
                    0x1D, 
                    0x1F, 
                    0x21, 
                    0x22, 
                    0x24, 
                    0x26, 
                    0x28, 
                    0x2A, 
                    0x2C, 
                    0x2E, 
                    0x30, 
                    0x33, 
                    0x35, 
                    0x37, 
                    0x3A, 
                    0x3C, 
                    0x3F, 
                    0x41, 
                    0x44, 
                    0x46, 
                    0x49, 
                    0x4C, 
                    0x4F, 
                    0x51, 
                    0x54, 
                    0x57, 
                    0x5A, 
                    0x5D, 
                    0x61, 
                    0x64, 
                    0x67, 
                    0x6A, 
                    0x6E, 
                    0x71, 
                    0x75, 
                    0x78, 
                    0x7C, 
                    0x80, 
                    0x83, 
                    0x87, 
                    0x8B, 
                    0x8F, 
                    0x93, 
                    0x97, 
                    0x9B, 
                    0x9F, 
                    0xA3, 
                    0xA8, 
                    0xAC, 
                    0xB0, 
                    0xB5, 
                    0xB9, 
                    0xBE, 
                    0xC3, 
                    0xC7, 
                    0xCC, 
                    0xCE, 
                    0xD1, 
                    0xD3, 
                    0xD6, 
                    0xD8, 
                    0xDB, 
                    0xDD, 
                    0xE0, 
                    0xE2, 
                    0xE5, 
                    0xE7, 
                    0xEA, 
                    0xEC, 
                    0xEF, 
                    0xF2, 
                    0xF4, 
                    0xF7, 
                    0xFA, 
                    0xFC, 
                    0xFF
                }
            })
            Method (_Q14, 0, NotSerialized)  // _Qxx: EC Query
            {
                
                Notify(\_SB.PCI0.LPC.KBD, 0x0206)
                Notify(\_SB.PCI0.LPC.KBD, 0x0286)

            }

            Method (_Q15, 0, NotSerialized)  // _Qxx: EC Query
            {
                
                Notify(\_SB.PCI0.LPC.KBD, 0x0205)
                Notify(\_SB.PCI0.LPC.KBD, 0x0285)

            }

            Method (BRNS, 0, NotSerialized)
            {
                Add (\BRLV, 0x02, Local0)
                Store (\BRTN, Local3)
                If (\_SB.PCI0.VID.DRDY)
                {
                    If (LEqual (0x00, Local0))
                    {
                        Store (DerefOf (Index (DerefOf (Index (BRTB, Local3)), 0x14)), Local1)
                        Store (DerefOf (Index (DerefOf (Index (BRTB, Local3)), 0x12)), Local2)
                    }
                    Else
                    {
                        Store (DerefOf (Index (DerefOf (Index (BRTB, Local3)), 0x15)), Local1)
                        Store (DerefOf (Index (DerefOf (Index (BRTB, Local3)), 0x13)), Local2)
                    }

                    Or (Local1, ShiftLeft (Local2, 0x09), Local2)
                    \_SB.PCI0.VID.AINT (0x03, Local2)
                    Store (DerefOf (Index (DerefOf (Index (BRTB, Local3)), Local0)), Local2)
                    \_SB.PCI0.VID.AINT (0x01, Local2)
                }
                Else
                {
                    \UCMS (0x12)
                }
            }

            Method (BRCF, 1, NotSerialized)
            {
                If (LLess (Arg0, 0x00))
                {
                    Return (0x00)
                }

                If (LGreater (Arg0, 0x64))
                {
                    Return (0x0F)
                }

                Add (Arg0, 0x03, Local0)
                Multiply (Local0, 0x0F, Local0)
                Divide (Local0, 0x64, Local0, Local1)
                Return (Local1)
            }

            Method (BRCD, 1, NotSerialized)
            {
                Store (DerefOf (Index (DerefOf (Index (BRTD, \BRTN)), Arg0)), Local0)
                Return (Local0)
            }

            Method (BFRQ, 0, NotSerialized)
            {
                Store (0x80000100, Local0)
                Store (DerefOf (Index (DerefOf (Index (BRTB, \BRTN)), 0x13)), Local1)
                Or (ShiftLeft (Local1, 0x09), Local0, Local0)
                Store (DerefOf (Index (DerefOf (Index (BRTB, \BRTN)), 0x15)), Local1)
                Or (Local1, Local0, Local0)
                Return (Local0)
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Method (_Q19, 0, NotSerialized)  // _Qxx: EC Query
            {
                If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x00800000))
                {
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1018)
                }

                \UCMS (0x03)
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Method (_Q63, 0, NotSerialized)  // _Qxx: EC Query
            {
                If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x00080000))
                {
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1014)
                }

                \UCMS (0x0B)
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Method (_Q70, 0, NotSerialized)  // _Qxx: EC Query
            {
                FNST ()
            }

            Method (_Q72, 0, NotSerialized)  // _Qxx: EC Query
            {
                FNST ()
            }

            Method (_Q73, 0, NotSerialized)  // _Qxx: EC Query
            {
                FNST ()
            }

            Method (FNST, 0, NotSerialized)
            {
                If (\H8DR)
                {
                    Store (HFNS, Local0)
                    Store (HFNE, Local1)
                }
                Else
                {
                    And (\RBEC (0x0E), 0x03, Local0)
                    And (\RBEC (0x00), 0x08, Local1)
                }

                If (Local1)
                {
                    If (LEqual (Local0, 0x00))
                    {
                        \UCMS (0x11)
                    }

                    If (LEqual (Local0, 0x01))
                    {
                        \UCMS (0x0F)
                    }

                    If (LEqual (Local0, 0x02))
                    {
                        \UCMS (0x10)
                    }

                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6005)
                }
            }
        }

        Scope (\_SB.PCI0.LPC.EC.HKEY)
        {
            Method (GHSL, 1, NotSerialized)
            {
                Return (\FNSC (0x00, 0x00))
            }

            Method (SHSL, 1, NotSerialized)
            {
                Return (\FNSC (0x01, And (Arg0, 0x01)))
            }
        }

        Scope (\_SB.PCI0.LPC.EC.HKEY)
        {
            Name (WGFL, 0x00)
            Method (WSIF, 0, NotSerialized)
            {
                Return (0x00)
            }

            Method (WLSW, 0, NotSerialized)
            {
                Return (0x00010001)
            }

            Method (GWAN, 0, NotSerialized)
            {
                Store (0x00, Local0)
                If (And (WGFL, 0x01))
                {
                    Or (Local0, 0x01, Local0)
                }

                If (And (WGFL, 0x08))
                {
                    Return (Local0)
                }

                If (WPWS ())
                {
                    Or (Local0, 0x02, Local0)
                }

                Or (Local0, 0x04, Local0)
                Return (Local0)
            }

            Method (SWAN, 1, NotSerialized)
            {
                If (And (Arg0, 0x02))
                {
                    WPWC (0x01)
                }
                Else
                {
                    WPWC (0x00)
                }
            }

            Method (GBDC, 0, NotSerialized)
            {
                Store (0x00, Local0)
                If (And (WGFL, 0x10))
                {
                    Or (Local0, 0x01, Local0)
                }

                If (And (WGFL, 0x80))
                {
                    Return (Local0)
                }

                If (BPWS ())
                {
                    Or (Local0, 0x02, Local0)
                }

                Or (Local0, 0x04, Local0)
                Return (Local0)
            }

            Method (SBDC, 1, NotSerialized)
            {
                If (And (Arg0, 0x02))
                {
                    BPWC (0x01)
                }
                Else
                {
                    BPWC (0x00)
                }
            }

            Method (WPWS, 0, NotSerialized)
            {
                If (\H8DR)
                {
                    Store (\_SB.PCI0.LPC.EC.DCWW, Local0)
                }
                Else
                {
                    Store (ShiftRight (And (\RBEC (0x3A), 0x40), 0x06), Local0)
                }

                Return (Local0)
            }

            Method (WPWC, 1, NotSerialized)
            {
                If (LAnd (Arg0, LAnd (And (WGFL, 0x01), LNot (And (WGFL, 0x08
                    )))))
                {
                    If (\H8DR)
                    {
                        Store (One, \_SB.PCI0.LPC.EC.DCWW)
                    }
                    Else
                    {
                        \MBEC (0x3A, 0xFF, 0x40)
                    }

                    Or (WGFL, 0x02, WGFL) /* \_SB_.PCI0.LPC_.EC__.HKEY.WGFL */
                }
                Else
                {
                    If (\H8DR)
                    {
                        Store (Zero, \_SB.PCI0.LPC.EC.DCWW)
                    }
                    Else
                    {
                        \MBEC (0x3A, 0xBF, 0x00)
                    }

                    And (WGFL, Not (0x02), WGFL) /* \_SB_.PCI0.LPC_.EC__.HKEY.WGFL */
                }
            }

            Method (BPWS, 0, NotSerialized)
            {
                If (\H8DR)
                {
                    Store (\_SB.PCI0.LPC.EC.DCBD, Local0)
                }
                Else
                {
                    Store (ShiftRight (And (\RBEC (0x3A), 0x10), 0x04), Local0)
                }

                Return (Local0)
            }

            Method (BPWC, 1, NotSerialized)
            {
                If (LAnd (Arg0, LAnd (And (WGFL, 0x10), LNot (And (WGFL, 0x80
                    )))))
                {
                    If (\H8DR)
                    {
                        Store (One, \_SB.PCI0.LPC.EC.DCBD)
                    }
                    Else
                    {
                        \MBEC (0x3A, 0xFF, 0x10)
                    }

                    Or (WGFL, 0x20, WGFL) /* \_SB_.PCI0.LPC_.EC__.HKEY.WGFL */
                }
                Else
                {
                    If (\H8DR)
                    {
                        Store (Zero, \_SB.PCI0.LPC.EC.DCBD)
                    }
                    Else
                    {
                        \MBEC (0x3A, 0xEF, 0x00)
                    }

                    And (WGFL, Not (0x20), WGFL) /* \_SB_.PCI0.LPC_.EC__.HKEY.WGFL */
                }
            }

            Method (WGIN, 0, NotSerialized)
            {
                Store (0x00, WGFL) /* \_SB_.PCI0.LPC_.EC__.HKEY.WGFL */
                Store (\WGSV (0x01), WGFL) /* \_SB_.PCI0.LPC_.EC__.HKEY.WGFL */
                If (\WIN8)
                {
                    If (LAnd (WGFL, 0x10))
                    {
                        BPWC (0x01)
                    }
                }

                If (WPWS ())
                {
                    Or (WGFL, 0x02, WGFL) /* \_SB_.PCI0.LPC_.EC__.HKEY.WGFL */
                }

                If (BPWS ())
                {
                    Or (WGFL, 0x20, WGFL) /* \_SB_.PCI0.LPC_.EC__.HKEY.WGFL */
                }
            }

            Method (WGPS, 1, NotSerialized)
            {
                If (LGreaterEqual (Arg0, 0x04))
                {
                    \BLTH (0x05)
                }
            }

            Method (WGWK, 1, NotSerialized)
            {
                Noop
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Method (_Q41, 0, NotSerialized)  // _Qxx: EC Query
            {
                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x7000)
            }
        }

        Device (WMI1)
        {
            Name (_HID, EisaId ("PNP0C14") /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, 0x01)  // _UID: Unique ID
            Name (_WDG, Buffer (0xB4)
            {
                /* 0000 */  0x0E, 0x23, 0xF5, 0x51, 0x77, 0x96, 0xCD, 0x46,  /* .#.Qw..F */
                /* 0008 */  0xA1, 0xCF, 0xC0, 0xB2, 0x3E, 0xE3, 0x4D, 0xB7,  /* ....>.M. */
                /* 0010 */  0x41, 0x30, 0x50, 0x05, 0x64, 0x9A, 0x47, 0x98,  /* A0P.d.G. */
                /* 0018 */  0xF5, 0x33, 0x33, 0x4E, 0xA7, 0x07, 0x8E, 0x25,  /* .33N...% */
                /* 0020 */  0x1E, 0xBB, 0xC3, 0xA1, 0x41, 0x31, 0x01, 0x06,  /* ....A1.. */
                /* 0028 */  0xEF, 0x54, 0x4B, 0x6A, 0xED, 0xA5, 0x33, 0x4D,  /* .TKj..3M */
                /* 0030 */  0x94, 0x55, 0xB0, 0xD9, 0xB4, 0x8D, 0xF4, 0xB3,  /* .U...... */
                /* 0038 */  0x41, 0x32, 0x01, 0x06, 0xB6, 0xEB, 0xF1, 0x74,  /* A2.....t */
                /* 0040 */  0x7A, 0x92, 0x7D, 0x4C, 0x95, 0xDF, 0x69, 0x8E,  /* z.}L..i. */
                /* 0048 */  0x21, 0xE8, 0x0E, 0xB5, 0x41, 0x33, 0x01, 0x06,  /* !...A3.. */
                /* 0050 */  0xFF, 0x04, 0xEF, 0x7E, 0x28, 0x43, 0x7C, 0x44,  /* ...~(C|D */
                /* 0058 */  0xB5, 0xBB, 0xD4, 0x49, 0x92, 0x5D, 0x53, 0x8D,  /* ...I.]S. */
                /* 0060 */  0x41, 0x34, 0x01, 0x06, 0x9E, 0x15, 0xDB, 0x8A,  /* A4...... */
                /* 0068 */  0x32, 0x1E, 0x5C, 0x45, 0xBC, 0x93, 0x30, 0x8A,  /* 2.\E..0. */
                /* 0070 */  0x7E, 0xD9, 0x82, 0x46, 0x41, 0x35, 0x01, 0x01,  /* ~..FA5.. */
                /* 0078 */  0xFD, 0xD9, 0x51, 0x26, 0x1C, 0x91, 0x69, 0x4B,  /* ..Q&..iK */
                /* 0080 */  0xB9, 0x4E, 0xD0, 0xDE, 0xD5, 0x96, 0x3B, 0xD7,  /* .N....;. */
                /* 0088 */  0x41, 0x36, 0x01, 0x06, 0x1A, 0x65, 0x64, 0x73,  /* A6...eds */
                /* 0090 */  0x2F, 0x13, 0xE7, 0x4F, 0xAD, 0xAA, 0x40, 0xC6,  /* /..O..@. */
                /* 0098 */  0xC7, 0xEE, 0x2E, 0x3B, 0x41, 0x37, 0x01, 0x06,  /* ...;A7.. */
                /* 00A0 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,  /* !...f... */
                /* 00A8 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,  /* ......). */
                /* 00B0 */  0x42, 0x41, 0x01, 0x00                           /* BA.. */
            })
            Name (RETN, Package (0x05)
            {
                "Success", 
                "Not Supported", 
                "Invalid Parameter", 
                "Access Denied", 
                "System Busy"
            })
            Name (ITEM, Package (0x57)
            {
                Package (0x02)
                {
                    0x0E, 
                    "WakeOnLAN"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "EthernetLANOptionROM"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "USBBIOSSupport"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "AlwaysOnUSB"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "TrackPoint"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "TouchPad"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FnKeyLock"
                }, 

                Package (0x02)
                {
                    0x04, 
                    "ThinkPadNumLock"
                }, 

                Package (0x02)
                {
                    0x0C, 
                    "PowerOnNumLock"
                }, 

                Package (0x02)
                {
                    0x05, 
                    "BootDisplayDevice"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "SpeedStep"
                }, 

                Package (0x02)
                {
                    0x09, 
                    "AdaptiveThermalManagementAC"
                }, 

                Package (0x02)
                {
                    0x09, 
                    "AdaptiveThermalManagementBattery"
                }, 

                Package (0x02)
                {
                    0x06, 
                    "CDROMSpeed"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "CPUPowerManagement"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PowerControlBeep"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "LowBatteryAlarm"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PasswordBeep"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "KeyboardBeep"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "ExtendedMemoryTest"
                }, 

                Package (0x02)
                {
                    0x07, 
                    "SATAControllerMode"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "CoreMultiProcessing"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "VirtualizationTechnology"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "LockBIOSSetting"
                }, 

                Package (0x02)
                {
                    0x0B, 
                    "MinimumPasswordLength"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BIOSPasswordAtUnattendedBoot"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FingerprintPredesktopAuthentication"
                }, 

                Package (0x02)
                {
                    0x08, 
                    "FingerprintReaderPriority"
                }, 

                Package (0x02)
                {
                    0x03, 
                    "FingerprintSecurityMode"
                }, 

                Package (0x02)
                {
                    0x02, 
                    "SecurityChip"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BIOSUpdateByEndUsers"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "DataExecutionPrevention"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "EthernetLANAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "WirelessLANAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "WirelessWANAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BluetoothAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "WirelessUSBAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "ModemAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "USBPortAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "IEEE1394Access"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "ExpressCardAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PCIExpressSlotAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "UltrabayAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "MemoryCardSlotAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "SmartCardSlotAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "IntegratedCameraAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "MicrophoneAccess"
                }, 

                Package (0x02)
                {
                    0x0A, 
                    "BootMode"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "StartupOptionKeys"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BootDeviceListF12Option"
                }, 

                Package (0x02)
                {
                    0x64, 
                    "BootOrder"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "WiMAXAccess"
                }, 

                Package (0x02)
                {
                    0x0D, 
                    "GraphicsDevice"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "TXTFeature"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "VTdFeature"
                }, 

                Package (0x02)
                {
                    0x0F, 
                    "AMTControl"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FingerprintPasswordAuthentication"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FingerprintReaderAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "OsDetectionForSwitchableGraphics"
                }, 

                Package (0x02)
                {
                    0x0F, 
                    "ComputraceModuleActivation"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "PCIExpressPowerManagement"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "NFFControl"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "eSATAPortAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "HardwarePasswordManager"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "HyperThreadingTechnology"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FnCtrlKeySwap"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BIOSPasswordAtReboot"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "OnByAcAttach"
                }, 

                Package (0x02)
                {
                    0x64, 
                    "NetworkBoot"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BootOrderLock"
                }, 

                Package (0x02)
                {
                    0x10, 
                    "USB30Mode"
                }, 

                Package (0x02)
                {
                    0x11, 
                    "ExpressCardSpeed"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "RapidStartTechnology"
                }, 

                Package (0x02)
                {
                    0x12, 
                    "KeyboardIllumination"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "IPv4NetworkStack"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "IPv6NetworkStack"
                }, 

                Package (0x02)
                {
                    0x13, 
                    "UefiPxeBootPriority"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PhysicalPresenceForTpmProvision"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PhysicalPresenceForTpmClear"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "SecureRollBackPrevention"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "SecureBoot"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "NfcAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BottomCoverTamperDetected"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PasswordCountExceededError"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BIOSPasswordAtBootDeviceList"
                }, 

                Package (0x02)
                {
                    0x14, 
                    "TotalGraphicsMemory"
                }, 

                Package (0x02)
                {
                    0x15, 
                    "BootTimeExtension"
                }
            })
            Name (VSEL, Package (0x16)
            {
                Package (0x02)
                {
                    "Disable", 
                    "Enable"
                }, 

                Package (0x02)
                {
                    "Disable", 
                    "Automatic"
                }, 

                Package (0x04)
                {
                    "Active", 
                    "Inactive", 
                    "Disable", 
                    "Enable"
                }, 

                Package (0x02)
                {
                    "Normal", 
                    "High"
                }, 

                Package (0x02)
                {
                    "Independent", 
                    "Synchronized"
                }, 

                Package (0x04)
                {
                    "LCD", 
                    "VGA", 
                    "Digital", 
                    "DockDisplay"
                }, 

                Package (0x03)
                {
                    "High", 
                    "Normal", 
                    "Silent"
                }, 

                Package (0x02)
                {
                    "Compatibility", 
                    "AHCI"
                }, 

                Package (0x02)
                {
                    "External", 
                    "InternalOnly"
                }, 

                Package (0x02)
                {
                    "MaximizePerformance", 
                    "Balanced"
                }, 

                Package (0x02)
                {
                    "Quick", 
                    "Diagnostics"
                }, 

                Package (0x0A)
                {
                    "Disable", 
                    "4", 
                    "5", 
                    "6", 
                    "7", 
                    "8", 
                    "9", 
                    "10", 
                    "11", 
                    "12"
                }, 

                Package (0x03)
                {
                    "Auto", 
                    "On", 
                    "Off"
                }, 

                Package (0x03)
                {
                    "IntegratedGfx", 
                    "DiscreteGfx", 
                    "SwitchableGfx"
                }, 

                Package (0x04)
                {
                    "Disable", 
                    "ACOnly", 
                    "ACandBattery", 
                    "Enable"
                }, 

                Package (0x03)
                {
                    "Disable", 
                    "Enable", 
                    "Disable"
                }, 

                Package (0x03)
                {
                    "Disable", 
                    "Enable", 
                    "Automatic"
                }, 

                Package (0x02)
                {
                    "Generation1", 
                    "Automatic"
                }, 

                Package (0x03)
                {
                    "ThinkLightOnly", 
                    "BacklightOnly", 
                    "Both"
                }, 

                Package (0x02)
                {
                    "IPv6First", 
                    "IPv4First"
                }, 

                Package (0x02)
                {
                    "256MB", 
                    "512MB"
                }, 

                Package (0x0B)
                {
                    "Disable", 
                    "1", 
                    "2", 
                    "3", 
                    "", 
                    "5", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "10"
                }
            })
            Name (VLST, Package (0x0F)
            {
                "HDD0", 
                "HDD1", 
                "HDD2", 
                "HDD3", 
                "HDD4", 
                "PCILAN", 
                "ATAPICD0", 
                "ATAPICD1", 
                "ATAPICD2", 
                "USBFDD", 
                "USBCD", 
                "USBHDD", 
                "OtherHDD", 
                "OtherCD", 
                "NODEV"
            })
            Name (PENC, Package (0x02)
            {
                "ascii", 
                "scancode"
            })
            Name (PKBD, Package (0x03)
            {
                "us", 
                "fr", 
                "gr"
            })
            Name (PTYP, Package (0x08)
            {
                "pap", 
                "pop", 
                "uhdp1", 
                "mhdp1", 
                "uhdp2", 
                "mhdp2", 
                "uhdp3", 
                "mhdp3"
            })
            Mutex(MWMI, 0)
            Name (PCFG, Buffer (0x18) {})
            Name (IBUF, Buffer (0x0100) {})
            Name (ILEN, 0x00)
            Name (PSTR, Buffer (0x81) {})
            Method (WQA0, 1, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                If (LNotEqual (\WMIS (0x00, Arg0), 0x00))
                {
                    Release (MWMI)
                    Return ("")
                }

                Store (DerefOf (Index (ITEM, \WITM)), Local0)
                Store (DerefOf (Index (Local0, 0x00)), Local1)
                Store (DerefOf (Index (Local0, 0x01)), Local2)
                If (LLess (Local1, 0x64))
                {
                    Concatenate (Local2, ",", Local6)
                    Store (DerefOf (Index (VSEL, Local1)), Local3)
                    Concatenate (Local6, DerefOf (Index (Local3, \WSEL)), Local7)
                }
                Else
                {
                    Store (SizeOf (VLST), Local3)
                    If (LLessEqual (\WLS0, Local3))
                    {
                        Concatenate (Local2, ",", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, \WLS0)), Local2)
                    }

                    If (LLessEqual (\WLS1, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, \WLS1)), Local2)
                    }

                    If (LLessEqual (\WLS2, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, \WLS2)), Local2)
                    }

                    If (LLessEqual (\WLS3, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, \WLS3)), Local2)
                    }

                    If (LLessEqual (\WLS4, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, \WLS4)), Local2)
                    }

                    If (LLessEqual (\WLS5, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, \WLS5)), Local2)
                    }

                    If (LLessEqual (\WLS6, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, \WLS6)), Local2)
                    }

                    If (LLessEqual (\WLS7, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, \WLS7)), Local2)
                    }

                    If (LLessEqual (\WLS8, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, \WLS8)), Local2)
                    }

                    If (LLessEqual (\WLS9, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, \WLS9)), Local2)
                    }

                    If (LLessEqual (\WLSA, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, \WLSA)), Local2)
                    }

                    If (LLessEqual (\WLSB, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, \WLSB)), Local2)
                    }

                    If (LLessEqual (\WLSC, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, \WLSC)), Local2)
                    }

                    If (LLessEqual (\WLSD, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, \WLSD)), Local2)
                    }

                    Store (Local2, Local7)
                }

                Release (MWMI)
                Return (Local7)
            }

            Method (WMA1, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                If (LEqual (SizeOf (Arg2), 0x00))
                {
                    Store (0x02, Local0)
                }
                Else
                {
                    Store (CARG (Arg2), Local0)
                    If (LEqual (Local0, 0x00))
                    {
                        Store (WSET (ITEM, VSEL), Local0)
                        If (LEqual (Local0, 0x00))
                        {
                            Store (\WMIS (0x01, 0x00), Local0)
                        }
                    }
                }

                Release (MWMI)
                Return (DerefOf (Index (RETN, Local0)))
            }

            Method (WMA2, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Store (CARG (Arg2), Local0)
                If (LEqual (Local0, 0x00))
                {
                    If (LNotEqual (ILEN, 0x00))
                    {
                        Store (CPAS (IBUF, 0x00), Local0)
                    }

                    If (LEqual (Local0, 0x00))
                    {
                        Store (\WMIS (0x02, 0x00), Local0)
                    }
                }

                Release (MWMI)
                Return (DerefOf (Index (RETN, Local0)))
            }

            Method (WMA3, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Store (CARG (Arg2), Local0)
                If (LEqual (Local0, 0x00))
                {
                    If (LNotEqual (ILEN, 0x00))
                    {
                        Store (CPAS (IBUF, 0x00), Local0)
                    }

                    If (LEqual (Local0, 0x00))
                    {
                        Store (\WMIS (0x03, 0x00), Local0)
                    }
                }

                Release (MWMI)
                Return (DerefOf (Index (RETN, Local0)))
            }

            Method (WMA4, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Store (CARG (Arg2), Local0)
                If (LEqual (Local0, 0x00))
                {
                    If (LNotEqual (ILEN, 0x00))
                    {
                        Store (CPAS (IBUF, 0x00), Local0)
                    }

                    If (LEqual (Local0, 0x00))
                    {
                        Store (\WMIS (0x04, 0x00), Local0)
                    }
                }

                Release (MWMI)
                Return (DerefOf (Index (RETN, Local0)))
            }

            Method (WQA5, 1, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Store (\WMIS (0x05, 0x00), Local0)
                Store (\WSPM, Index (PCFG, 0x00))
                Store (\WSPS, Index (PCFG, 0x04))
                Store (\WSMN, Index (PCFG, 0x08))
                Store (\WSMX, Index (PCFG, 0x0C))
                Store (\WSEN, Index (PCFG, 0x10))
                Store (\WSKB, Index (PCFG, 0x14))
                Release (MWMI)
                Return (PCFG) /* \_SB_.WMI1.PCFG */
            }

            Method (WMA6, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                If (LEqual (SizeOf (Arg2), 0x00))
                {
                    Store (0x02, Local0)
                }
                Else
                {
                    Store (CARG (Arg2), Local0)
                    If (LEqual (Local0, 0x00))
                    {
                        If (LNotEqual (ILEN, 0x00))
                        {
                            Store (SPAS (IBUF), Local0)
                        }

                        If (LEqual (Local0, 0x00))
                        {
                            Store (\WMIS (0x06, 0x00), Local0)
                        }
                    }
                }

                Release (MWMI)
                Return (DerefOf (Index (RETN, Local0)))
            }

            Method (WMA7, 3, NotSerialized)
            {
                If (LEqual (SizeOf (Arg2), 0x00))
                {
                    Return ("")
                }

                Store (CARG (Arg2), Local0)
                If (LEqual (Local0, 0x00))
                {
                    Store (GITM (IBUF, ITEM), Local1)
                    If (LEqual (Local1, Ones))
                    {
                        Return ("")
                    }

                    Store (DerefOf (Index (ITEM, Local1)), Local0)
                    Store (DerefOf (Index (Local0, 0x00)), Local1)
                    If (LLess (Local1, 0x64))
                    {
                        Store (DerefOf (Index (VSEL, Local1)), Local3)
                        Store (DerefOf (Index (Local3, 0x00)), Local2)
                        Store (SizeOf (Local3), Local4)
                        Store (0x01, Local5)
                        While (LLess (Local5, Local4))
                        {
                            Store (DerefOf (Index (Local3, Local5)), Local6)
                            If (LNotEqual (SizeOf (Local6), 0x00))
                            {
                                Concatenate (Local2, ",", Local7)
                                Concatenate (Local7, Local6, Local2)
                            }

                            Increment (Local5)
                        }
                    }
                    Else
                    {
                        Store (DerefOf (Index (VLST, 0x00)), Local2)
                        Store (SizeOf (VLST), Local4)
                        Store (0x01, Local5)
                        While (LLess (Local5, Local4))
                        {
                            Store (DerefOf (Index (VLST, Local5)), Local6)
                            Concatenate (Local2, ",", Local7)
                            Concatenate (Local7, Local6, Local2)
                            Increment (Local5)
                        }
                    }
                }

                Return (Local2)
            }

            Method (CARG, 1, NotSerialized)
            {
                Store (SizeOf (Arg0), Local0)
                If (LEqual (Local0, 0x00))
                {
                    Store (0x00, IBUF) /* \_SB_.WMI1.IBUF */
                    Store (0x00, ILEN) /* \_SB_.WMI1.ILEN */
                    Return (0x00)
                }

                If (LNotEqual (ObjectType (Arg0), 0x02))
                {
                    Return (0x02)
                }

                If (LGreaterEqual (Local0, 0xFF))
                {
                    Return (0x02)
                }

                Store (Arg0, IBUF) /* \_SB_.WMI1.IBUF */
                Decrement (Local0)
                Store (DerefOf (Index (IBUF, Local0)), Local1)
                If (LOr (LEqual (Local1, 0x3B), LEqual (Local1, 0x2A)))
                {
                    Store (0x00, Index (IBUF, Local0))
                    Store (Local0, ILEN) /* \_SB_.WMI1.ILEN */
                }
                Else
                {
                    Store (SizeOf (Arg0), ILEN) /* \_SB_.WMI1.ILEN */
                }

                Return (0x00)
            }

            Method (SCMP, 3, NotSerialized)
            {
                Store (SizeOf (Arg0), Local0)
                If (LEqual (Local0, 0x00))
                {
                    Return (0x00)
                }

                Increment (Local0)
                Name (STR1, Buffer (Local0) {})
                Store (Arg0, STR1) /* \_SB_.WMI1.SCMP.STR1 */
                Decrement (Local0)
                Store (0x00, Local1)
                Store (Arg2, Local2)
                While (LLess (Local1, Local0))
                {
                    Store (DerefOf (Index (STR1, Local1)), Local3)
                    Store (DerefOf (Index (Arg1, Local2)), Local4)
                    If (LNotEqual (Local3, Local4))
                    {
                        Return (0x00)
                    }

                    Increment (Local1)
                    Increment (Local2)
                }

                Store (DerefOf (Index (Arg1, Local2)), Local4)
                If (LEqual (Local4, 0x00))
                {
                    Return (0x01)
                }

                If (LOr (LEqual (Local4, 0x2C), LEqual (Local4, 0x3A)))
                {
                    Return (0x01)
                }

                Return (0x00)
            }

            Method (GITM, 2, NotSerialized)
            {
                Store (0x00, Local0)
                Store (SizeOf (Arg1), Local1)
                While (LLess (Local0, Local1))
                {
                    Store (DerefOf (Index (DerefOf (Index (Arg1, Local0)), 0x01)), Local3)
                    If (SCMP (Local3, Arg0, 0x00))
                    {
                        Return (Local0)
                    }

                    Increment (Local0)
                }

                Return (Ones)
            }

            Method (GSEL, 3, NotSerialized)
            {
                Store (0x00, Local0)
                Store (SizeOf (Arg0), Local1)
                While (LLess (Local0, Local1))
                {
                    Store (DerefOf (Index (Arg0, Local0)), Local2)
                    If (SCMP (Local2, Arg1, Arg2))
                    {
                        Return (Local0)
                    }

                    Increment (Local0)
                }

                Return (Ones)
            }

            Method (SLEN, 2, NotSerialized)
            {
                Store (DerefOf (Index (Arg0, Arg1)), Local0)
                Return (SizeOf (Local0))
            }

            Method (CLRP, 0, NotSerialized)
            {
                Store (0x00, \WPAS)
                Store (0x00, \WPNW)
            }

            Method (GPAS, 2, NotSerialized)
            {
                Store (Arg1, Local0)
                Store (0x00, Local1)
                While (LLessEqual (Local1, 0x80))
                {
                    Store (DerefOf (Index (Arg0, Local0)), Local2)
                    If (LOr (LEqual (Local2, 0x2C), LEqual (Local2, 0x00)))
                    {
                        Store (0x00, Index (PSTR, Local1))
                        Return (Local1)
                    }

                    Store (Local2, Index (PSTR, Local1))
                    Increment (Local0)
                    Increment (Local1)
                }

                Store (0x00, Index (PSTR, Local1))
                Return (Ones)
            }

            Method (CPAS, 2, NotSerialized)
            {
                CLRP ()
                Store (Arg1, Local0)
                Store (GPAS (Arg0, Local0), Local1)
                If (LEqual (Local1, Ones))
                {
                    Return (0x02)
                }

                If (LEqual (Local1, 0x00))
                {
                    Return (0x02)
                }

                Store (PSTR, \WPAS)
                Add (Local0, Local1, Local0)
                Increment (Local0)
                Store (GSEL (PENC, Arg0, Local0), Local6)
                If (LEqual (Local6, Ones))
                {
                    Return (0x02)
                }

                Store (Local6, \WENC)
                If (LEqual (Local6, 0x00))
                {
                    Add (Local0, SLEN (PENC, 0x00), Local0)
                    If (LNotEqual (DerefOf (Index (Arg0, Local0)), 0x2C))
                    {
                        Return (0x02)
                    }

                    Increment (Local0)
                    Store (GSEL (PKBD, Arg0, Local0), Local6)
                    If (LEqual (Local6, Ones))
                    {
                        Return (0x02)
                    }

                    Store (Local6, \WKBD)
                }

                Return (0x00)
            }

            Method (SPAS, 1, NotSerialized)
            {
                CLRP ()
                Store (GSEL (PTYP, Arg0, 0x00), Local6)
                If (LEqual (Local6, Ones))
                {
                    Return (0x02)
                }

                Store (Local6, \WPTY)
                Store (SLEN (PTYP, Local6), Local0)
                If (LNotEqual (DerefOf (Index (Arg0, Local0)), 0x2C))
                {
                    Return (0x02)
                }

                Increment (Local0)
                Store (GPAS (Arg0, Local0), Local1)
                If (LOr (LEqual (Local1, Ones), LEqual (Local1, 0x00)))
                {
                    Return (0x02)
                }

                Store (PSTR, \WPAS)
                Add (Local0, Local1, Local0)
                If (LNotEqual (DerefOf (Index (Arg0, Local0)), 0x2C))
                {
                    Return (0x02)
                }

                Increment (Local0)
                Store (GPAS (Arg0, Local0), Local1)
                If (LEqual (Local1, Ones))
                {
                    Return (0x02)
                }

                If (LEqual (Local1, 0x00))
                {
                    Store (0x00, PSTR) /* \_SB_.WMI1.PSTR */
                }

                Store (PSTR, \WPNW)
                Add (Local0, Local1, Local0)
                Increment (Local0)
                Store (GSEL (PENC, Arg0, Local0), Local6)
                If (LEqual (Local6, Ones))
                {
                    Return (0x02)
                }

                Store (Local6, \WENC)
                If (LEqual (Local6, 0x00))
                {
                    Add (Local0, SLEN (PENC, 0x00), Local0)
                    If (LNotEqual (DerefOf (Index (Arg0, Local0)), 0x2C))
                    {
                        Return (0x02)
                    }

                    Increment (Local0)
                    Store (GSEL (PKBD, Arg0, Local0), Local6)
                    If (LEqual (Local6, Ones))
                    {
                        Return (0x02)
                    }

                    Store (Local6, \WKBD)
                }

                Return (0x00)
            }

            Method (WSET, 2, NotSerialized)
            {
                Store (ILEN, Local0)
                Increment (Local0)
                Store (GITM (IBUF, Arg0), Local1)
                If (LEqual (Local1, Ones))
                {
                    Return (0x02)
                }

                Store (Local1, \WITM)
                Store (DerefOf (Index (Arg0, Local1)), Local3)
                Store (DerefOf (Index (Local3, 0x01)), Local4)
                Store (SizeOf (Local4), Local2)
                Increment (Local2)
                Store (DerefOf (Index (Local3, 0x00)), Local4)
                If (LLess (Local4, 0x64))
                {
                    Store (DerefOf (Index (Arg1, Local4)), Local5)
                    Store (GSEL (Local5, IBUF, Local2), Local6)
                    If (LEqual (Local6, Ones))
                    {
                        Return (0x02)
                    }

                    Store (Local6, \WSEL)
                    Add (Local2, SLEN (Local5, Local6), Local2)
                    Store (DerefOf (Index (IBUF, Local2)), Local4)
                }
                Else
                {
                    Store (0x3F, \WLS0)
                    Store (0x3F, \WLS1)
                    Store (0x3F, \WLS2)
                    Store (0x3F, \WLS3)
                    Store (0x3F, \WLS4)
                    Store (0x3F, \WLS5)
                    Store (0x3F, \WLS6)
                    Store (0x3F, \WLS7)
                    Store (0x3F, \WLS8)
                    Store (0x3F, \WLS9)
                    Store (0x3F, \WLSA)
                    Store (0x3F, \WLSB)
                    Store (0x3F, \WLSC)
                    Store (0x3F, \WLSD)
                    Store (GSEL (VLST, IBUF, Local2), Local6)
                    If (LEqual (Local6, Ones))
                    {
                        Return (0x02)
                    }

                    Store (Local6, \WLS0)
                    Add (Local2, SLEN (VLST, Local6), Local2)
                    Store (DerefOf (Index (IBUF, Local2)), Local4)
                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, \WLS1)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, \WLS2)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, \WLS3)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, \WLS4)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, \WLS5)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, \WLS6)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, \WLS7)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, \WLS8)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, \WLS9)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, \WLSA)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, \WLSB)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, \WLSC)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, \WLSD)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }
                }

                If (LAnd (LEqual (Local4, 0x2C), LLess (Local2, Local0)))
                {
                    Increment (Local2)
                    Store (CPAS (IBUF, Local2), Local0)
                    If (LNotEqual (Local0, 0x00))
                    {
                        Return (Local0)
                    }
                }

                Return (0x00)
            }

            Name (WQBA, Buffer (0x089D)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  /* FOMB.... */
                /* 0008 */  0x8D, 0x08, 0x00, 0x00, 0xF2, 0x36, 0x00, 0x00,  /* .....6.. */
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  /* DS...}.T */
                /* 0018 */  0xA8, 0xC9, 0x9A, 0x00, 0x01, 0x06, 0x18, 0x42,  /* .......B */
                /* 0020 */  0x10, 0x13, 0x10, 0x0A, 0x0D, 0x21, 0x02, 0x0B,  /* .....!.. */
                /* 0028 */  0x83, 0x50, 0x4C, 0x18, 0x14, 0xA0, 0x45, 0x41,  /* .PL...EA */
                /* 0030 */  0xC8, 0x05, 0x14, 0x95, 0x02, 0x21, 0xC3, 0x02,  /* .....!.. */
                /* 0038 */  0x14, 0x0B, 0x70, 0x2E, 0x40, 0xBA, 0x00, 0xE5,  /* ..p.@... */
                /* 0040 */  0x28, 0x72, 0x0C, 0x22, 0x02, 0xF7, 0xEF, 0x0F,  /* (r.".... */
                /* 0048 */  0x31, 0x0E, 0x88, 0x14, 0x40, 0x48, 0x26, 0x84,  /* 1...@H&. */
                /* 0050 */  0x44, 0x00, 0x53, 0x21, 0x70, 0x84, 0xA0, 0x5F,  /* D.S!p.._ */
                /* 0058 */  0x01, 0x08, 0x1D, 0xA2, 0xC9, 0xA0, 0x00, 0xA7,  /* ........ */
                /* 0060 */  0x08, 0x82, 0xB4, 0x65, 0x01, 0xBA, 0x05, 0xF8,  /* ...e.... */
                /* 0068 */  0x16, 0xA0, 0x1D, 0x42, 0x68, 0x15, 0x0A, 0x30,  /* ...Bh..0 */
                /* 0070 */  0x29, 0xC0, 0x27, 0x98, 0x2C, 0x0A, 0x90, 0x0D,  /* ).'.,... */
                /* 0078 */  0x26, 0xDB, 0x70, 0x64, 0x18, 0x4C, 0xE4, 0x18,  /* &.pd.L.. */
                /* 0080 */  0x50, 0x62, 0xC6, 0x80, 0xD2, 0x39, 0x05, 0xD9,  /* Pb...9.. */
                /* 0088 */  0x04, 0x16, 0x74, 0xA1, 0x28, 0x9A, 0x46, 0x94,  /* ..t.(.F. */
                /* 0090 */  0x04, 0x07, 0x75, 0x0C, 0x11, 0x82, 0x97, 0x2B,  /* ..u....+ */
                /* 0098 */  0x40, 0xF2, 0x04, 0xA4, 0x79, 0x5E, 0xB2, 0x3E,  /* @...y^.> */
                /* 00A0 */  0x08, 0x0D, 0x81, 0x8D, 0x80, 0x47, 0x91, 0x00,  /* .....G.. */
                /* 00A8 */  0xC2, 0x62, 0x2C, 0x53, 0xE2, 0x61, 0x50, 0x1E,  /* .b,S.aP. */
                /* 00B0 */  0x40, 0x24, 0x67, 0xA8, 0x28, 0x60, 0x7B, 0x9D,  /* @$g.(`{. */
                /* 00B8 */  0x88, 0x86, 0x75, 0x9C, 0x4C, 0x12, 0x1C, 0x6A,  /* ..u.L..j */
                /* 00C0 */  0x94, 0x96, 0x28, 0xC0, 0xFC, 0xC8, 0x34, 0x91,  /* ..(...4. */
                /* 00C8 */  0x63, 0x6B, 0x7A, 0xC4, 0x82, 0x64, 0xD2, 0x86,  /* ckz..d.. */
                /* 00D0 */  0x82, 0x1A, 0xBA, 0xA7, 0x75, 0x52, 0x9E, 0x68,  /* ....uR.h */
                /* 00D8 */  0xC4, 0x83, 0x32, 0x4C, 0x02, 0x8F, 0x82, 0xA1,  /* ..2L.... */
                /* 00E0 */  0x71, 0x82, 0xB2, 0x20, 0xE4, 0x60, 0xA0, 0x28,  /* q.. .`.( */
                /* 00E8 */  0xC0, 0x93, 0xF0, 0x1C, 0x8B, 0x17, 0x20, 0x7C,  /* ...... | */
                /* 00F0 */  0xC6, 0xE4, 0x28, 0x10, 0x23, 0x81, 0x8F, 0x04,  /* ..(.#... */
                /* 00F8 */  0x1E, 0xCD, 0x31, 0x63, 0x81, 0xC2, 0x05, 0x3C,  /* ..1c...< */
                /* 0100 */  0x9F, 0x63, 0x88, 0x1C, 0xF7, 0x50, 0x63, 0x1C,  /* .c...Pc. */
                /* 0108 */  0x45, 0xE4, 0x04, 0xEF, 0x00, 0x51, 0x8C, 0x56,  /* E....Q.V */
                /* 0110 */  0xD0, 0xBC, 0x85, 0x18, 0x2C, 0x9A, 0xC1, 0x7A,  /* ....,..z */
                /* 0118 */  0x06, 0x27, 0x83, 0x4E, 0xF0, 0xFF, 0x3F, 0x02,  /* .'.N..?. */
                /* 0120 */  0x2E, 0x03, 0x42, 0x1E, 0x05, 0x58, 0x1D, 0x94,  /* ..B..X.. */
                /* 0128 */  0xA6, 0x61, 0x82, 0xEE, 0x05, 0xBC, 0x1A, 0x1A,  /* .a...... */
                /* 0130 */  0x13, 0xA0, 0x11, 0x43, 0xCA, 0x04, 0x38, 0xBB,  /* ...C..8. */
                /* 0138 */  0x2F, 0x68, 0x46, 0x6D, 0x09, 0x30, 0x27, 0x40,  /* /hFm.0'@ */
                /* 0140 */  0x9B, 0x00, 0x6F, 0x08, 0x42, 0x39, 0xCF, 0x28,  /* ..o.B9.( */
                /* 0148 */  0xC7, 0x72, 0x8A, 0x51, 0x1E, 0x06, 0x62, 0xBE,  /* .r.Q..b. */
                /* 0150 */  0x0C, 0x04, 0x8D, 0x12, 0x23, 0xE6, 0xB9, 0xC4,  /* ....#... */
                /* 0158 */  0x35, 0x6C, 0x84, 0x18, 0x21, 0x4F, 0x21, 0x50,  /* 5l..!O!P */
                /* 0160 */  0xDC, 0xF6, 0x07, 0x41, 0x06, 0x8D, 0x1B, 0xBD,  /* ...A.... */
                /* 0168 */  0x4F, 0x0B, 0x67, 0x75, 0x02, 0x47, 0xFF, 0xA4,  /* O.gu.G.. */
                /* 0170 */  0x60, 0x02, 0x4F, 0xF9, 0xC0, 0x9E, 0x0D, 0x4E,  /* `.O....N */
                /* 0178 */  0xE0, 0x58, 0xA3, 0xC6, 0x38, 0x95, 0x04, 0x8E,  /* .X..8... */
                /* 0180 */  0xFD, 0x80, 0x90, 0x06, 0x10, 0x45, 0x82, 0x47,  /* .....E.G */
                /* 0188 */  0x9D, 0x16, 0x7C, 0x2E, 0xF0, 0xD0, 0x0E, 0xDA,  /* ..|..... */
                /* 0190 */  0x73, 0x3C, 0x81, 0x20, 0x87, 0x70, 0x04, 0x4F,  /* s<. .p.O */
                /* 0198 */  0x0C, 0x0F, 0x04, 0x1E, 0x03, 0xBB, 0x29, 0xF8,  /* ......). */
                /* 01A0 */  0x08, 0xE0, 0x13, 0x02, 0xDE, 0x35, 0xA0, 0xAE,  /* .....5.. */
                /* 01A8 */  0x06, 0x0F, 0x06, 0x6C, 0xD0, 0xE1, 0x30, 0xE3,  /* ...l..0. */
                /* 01B0 */  0xF5, 0xF0, 0xC3, 0x9D, 0xC0, 0x49, 0x3E, 0x60,  /* .....I>` */
                /* 01B8 */  0xF0, 0xC3, 0x86, 0x07, 0x87, 0x9B, 0xE7, 0xC9,  /* ........ */
                /* 01C0 */  0x1C, 0x59, 0xA9, 0x02, 0xCC, 0x1E, 0x0E, 0x74,  /* .Y.....t */
                /* 01C8 */  0x90, 0xF0, 0x69, 0x83, 0x9D, 0x01, 0x30, 0xF2,  /* ..i...0. */
                /* 01D0 */  0x07, 0x81, 0x1A, 0x99, 0xA1, 0x3D, 0xEE, 0x97,  /* .....=.. */
                /* 01D8 */  0x0E, 0x43, 0x3E, 0x27, 0x1C, 0x16, 0x13, 0x7B,  /* .C>'...{ */
                /* 01E0 */  0xEA, 0xA0, 0xE3, 0x01, 0xFF, 0x65, 0xE4, 0x39,  /* .....e.9 */
                /* 01E8 */  0xC3, 0xD3, 0xF7, 0x7C, 0x4D, 0x30, 0xEC, 0xC0,  /* ...|M0.. */
                /* 01F0 */  0xD1, 0x03, 0x31, 0xF4, 0xC3, 0xC6, 0x61, 0x9C,  /* ..1...a. */
                /* 01F8 */  0x86, 0xEF, 0x1F, 0x3E, 0x2F, 0xC0, 0x38, 0x05,  /* ...>/.8. */
                /* 0200 */  0x78, 0xE4, 0xFE, 0xFF, 0x1F, 0x52, 0x7C, 0x9A,  /* x....R|. */
                /* 0208 */  0xE0, 0x47, 0x0B, 0x9F, 0x26, 0xD8, 0xF5, 0xE0,  /* .G..&... */
                /* 0210 */  0x34, 0x9E, 0x03, 0x3C, 0x9C, 0xB3, 0xF2, 0x61,  /* 4..<...a */
                /* 0218 */  0x02, 0x6C, 0xF7, 0x13, 0x36, 0xA2, 0x77, 0x0B,  /* .l..6.w. */
                /* 0220 */  0x8F, 0x06, 0x7B, 0x0A, 0x00, 0xDF, 0xF9, 0x05,  /* ..{..... */
                /* 0228 */  0x9C, 0x77, 0x0D, 0x36, 0x58, 0x18, 0xE7, 0x17,  /* .w.6X... */
                /* 0230 */  0xE0, 0x71, 0x42, 0xF0, 0x10, 0xF8, 0x41, 0xC2,  /* .qB...A. */
                /* 0238 */  0x43, 0xE0, 0x03, 0x78, 0xFE, 0x38, 0x43, 0x2B,  /* C..x.8C+ */
                /* 0240 */  0x9D, 0x17, 0x72, 0x60, 0xF0, 0xCE, 0x39, 0x30,  /* ..r`..90 */
                /* 0248 */  0x46, 0xC1, 0xF3, 0x3C, 0x36, 0x4C, 0xA0, 0x20,  /* F..<6L.  */
                /* 0250 */  0xAF, 0x01, 0x85, 0x7A, 0x16, 0x50, 0x18, 0x9F,  /* ...z.P.. */
                /* 0258 */  0x6A, 0x80, 0xD7, 0xFF, 0xFF, 0x54, 0x03, 0x5C,  /* j....T.\ */
                /* 0260 */  0x0E, 0x07, 0xB8, 0x93, 0x03, 0xDC, 0x7B, 0x01,  /* ......{. */
                /* 0268 */  0xBB, 0x38, 0x3C, 0xD7, 0xC0, 0x15, 0x7D, 0xAE,  /* .8<...}. */
                /* 0270 */  0x81, 0x7A, 0x6F, 0x29, 0x6E, 0x8C, 0xBA, 0xC6,  /* .zo)n... */
                /* 0278 */  0x04, 0x79, 0x14, 0x78, 0xA4, 0x89, 0xF2, 0x3C,  /* .y.x...< */
                /* 0280 */  0xF3, 0x2E, 0x13, 0xE1, 0xD9, 0xC6, 0xD7, 0x1A,  /* ........ */
                /* 0288 */  0x4F, 0x21, 0x8E, 0xAF, 0x35, 0x46, 0x7C, 0x99,  /* O!..5F|. */
                /* 0290 */  0x78, 0xB7, 0x31, 0xEE, 0xC1, 0x3D, 0xD6, 0x3C,  /* x.1..=.< */
                /* 0298 */  0xE4, 0x18, 0xE4, 0x68, 0x22, 0xBC, 0x18, 0x04,  /* ...h"... */
                /* 02A0 */  0x7C, 0xBC, 0xF1, 0xB1, 0x06, 0xBC, 0x62, 0x5E,  /* |.....b^ */
                /* 02A8 */  0x28, 0xB2, 0x70, 0xAC, 0x01, 0x34, 0xFE, 0xFF,  /* (.p..4.. */
                /* 02B0 */  0x8F, 0x35, 0xC0, 0x0D, 0xEB, 0x01, 0x05, 0x7C,  /* .5.....| */
                /* 02B8 */  0x47, 0x06, 0x76, 0x43, 0x81, 0x77, 0x42, 0x01,  /* G.vC.wB. */
                /* 02C0 */  0xFC, 0x24, 0x7E, 0x01, 0xE8, 0xC8, 0xE1, 0xB4,  /* .$~..... */
                /* 02C8 */  0x20, 0xB2, 0xF1, 0x06, 0xF0, 0x29, 0x80, 0xAA,  /*  ....).. */
                /* 02D0 */  0x01, 0xD2, 0x34, 0x61, 0x13, 0x4C, 0x4F, 0x2E,  /* ..4a.LO. */
                /* 02D8 */  0x78, 0x1F, 0x09, 0x9C, 0x9B, 0x44, 0xC9, 0x87,  /* x....D.. */
                /* 02E0 */  0x45, 0xE1, 0x9C, 0xF5, 0x20, 0x42, 0x41, 0x0C,  /* E... BA. */
                /* 02E8 */  0xE8, 0x20, 0xC7, 0x09, 0xF4, 0x19, 0xC5, 0x07,  /* . ...... */
                /* 02F0 */  0x91, 0x13, 0x7D, 0x22, 0xF4, 0xA0, 0x3C, 0x8C,  /* ..}"..<. */
                /* 02F8 */  0x77, 0x14, 0x76, 0x02, 0xF1, 0x61, 0xC2, 0x63,  /* w.v..a.c */
                /* 0300 */  0xF7, 0x31, 0x81, 0xFF, 0x63, 0x3C, 0x1B, 0xA3,  /* .1..c<.. */
                /* 0308 */  0x5B, 0x0D, 0x86, 0xFE, 0xFF, 0xE7, 0x14, 0x0E,  /* [....... */
                /* 0310 */  0xE6, 0x83, 0x08, 0x27, 0xA8, 0xEB, 0x26, 0x01,  /* ...'..&. */
                /* 0318 */  0x32, 0x7D, 0x47, 0x05, 0x50, 0x00, 0xF9, 0x5E,  /* 2}G.P..^ */
                /* 0320 */  0xE0, 0x73, 0xC0, 0xB3, 0x01, 0x1B, 0xC3, 0xA3,  /* .s...... */
                /* 0328 */  0x80, 0xD1, 0x8C, 0xCE, 0xC3, 0x4F, 0x16, 0x15,  /* .....O.. */
                /* 0330 */  0x77, 0xB2, 0x14, 0xC4, 0x93, 0x75, 0x94, 0xC9,  /* w....u.. */
                /* 0338 */  0xA2, 0x67, 0xE2, 0x7B, 0x85, 0x67, 0xF4, 0xA6,  /* .g.{.g.. */
                /* 0340 */  0xE5, 0x39, 0x7A, 0xC2, 0xBE, 0x87, 0xC0, 0x3A,  /* .9z....: */
                /* 0348 */  0x0C, 0x84, 0x7C, 0x30, 0xF0, 0x34, 0x0C, 0xE7,  /* ..|0.4.. */
                /* 0350 */  0xC9, 0x72, 0x38, 0x4F, 0x96, 0x8F, 0xC5, 0xD7,  /* .r8O.... */
                /* 0358 */  0x10, 0xF0, 0x09, 0x9C, 0x2D, 0xC8, 0xE1, 0x31,  /* ....-..1 */
                /* 0360 */  0xB1, 0x46, 0x45, 0xAF, 0x42, 0x1E, 0x1E, 0xBF,  /* .FE.B... */
                /* 0368 */  0x1C, 0x78, 0x3E, 0xCF, 0x08, 0x47, 0xF9, 0x24,  /* .x>..G.$ */
                /* 0370 */  0x81, 0xC3, 0x78, 0x26, 0xF1, 0x10, 0x7D, 0x2B,  /* ..x&..}+ */
                /* 0378 */  0x82, 0x35, 0x91, 0x93, 0xF6, 0x6D, 0xE1, 0x64,  /* .5...m.d */
                /* 0380 */  0x83, 0xBE, 0x9E, 0x61, 0x6E, 0x45, 0xB0, 0xFF,  /* ...anE.. */
                /* 0388 */  0xFF, 0xB7, 0x22, 0x38, 0x17, 0x34, 0x98, 0x99,  /* .."8.4.. */
                /* 0390 */  0xEE, 0x55, 0xA8, 0x58, 0xF7, 0x2A, 0x40, 0xEC,  /* .U.X.*@. */
                /* 0398 */  0xB0, 0x5E, 0x7B, 0x7C, 0xB0, 0x82, 0x7B, 0xAF,  /* .^{|..{. */
                /* 03A0 */  0x82, 0x7B, 0xA9, 0x7A, 0x56, 0x38, 0xC6, 0xF0,  /* .{.zV8.. */
                /* 03A8 */  0x0F, 0x53, 0x31, 0x4E, 0xE9, 0xB5, 0xD3, 0x40,  /* .S1N...@ */
                /* 03B0 */  0x61, 0xA2, 0xC4, 0x7B, 0xAF, 0xF2, 0x18, 0xDF,  /* a..{.... */
                /* 03B8 */  0xAB, 0xD8, 0x15, 0x2A, 0x4C, 0xAC, 0x97, 0x2B,  /* ...*L..+ */
                /* 03C0 */  0xA3, 0xBE, 0x4E, 0x84, 0x0B, 0x14, 0x24, 0xD2,  /* ..N...$. */
                /* 03C8 */  0xAB, 0x55, 0x94, 0xC8, 0xF1, 0x0D, 0xF9, 0x5E,  /* .U.....^ */
                /* 03D0 */  0x05, 0x5E, 0x39, 0xF7, 0x2A, 0x90, 0xFD, 0xFF,  /* .^9.*... */
                /* 03D8 */  0xEF, 0x55, 0x80, 0x79, 0xB4, 0xF7, 0x2A, 0x30,  /* .U.y..*0 */
                /* 03E0 */  0x5E, 0x1B, 0xD8, 0x0D, 0x09, 0x16, 0xD0, 0x8B,  /* ^....... */
                /* 03E8 */  0x15, 0x60, 0x28, 0xF3, 0xC5, 0x8A, 0xE6, 0xBD,  /* .`(..... */
                /* 03F0 */  0x58, 0x21, 0xFE, 0xFF, 0xE7, 0x12, 0xA6, 0xE7,  /* X!...... */
                /* 03F8 */  0x62, 0x45, 0xE6, 0x09, 0xFF, 0x66, 0x05, 0x70,  /* bE...f.p */
                /* 0400 */  0xFA, 0xFF, 0x7F, 0xB3, 0x02, 0x8C, 0xDD, 0x8B,  /* ........ */
                /* 0408 */  0x30, 0x47, 0x2B, 0x78, 0x29, 0x6F, 0x56, 0x34,  /* 0G+x)oV4 */
                /* 0410 */  0xCE, 0x32, 0x14, 0x70, 0x41, 0x14, 0xC6, 0x37,  /* .2.pA..7 */
                /* 0418 */  0x2B, 0xC0, 0xD1, 0x75, 0x05, 0x37, 0x64, 0xB8,  /* +..u.7d. */
                /* 0420 */  0x60, 0x51, 0x82, 0xF9, 0x10, 0xE2, 0xE9, 0x1C,  /* `Q...... */
                /* 0428 */  0xF1, 0x43, 0xC2, 0x4B, 0xC0, 0x63, 0x8E, 0x07,  /* .C.K.c.. */
                /* 0430 */  0xFC, 0x40, 0xE0, 0xCB, 0x15, 0x98, 0xFE, 0xFF,  /* .@...... */
                /* 0438 */  0x04, 0x3E, 0xF9, 0x9E, 0xE5, 0xDB, 0xD4, 0x7B,  /* .>.....{ */
                /* 0440 */  0x2F, 0x3F, 0x60, 0xBD, 0x57, 0xF9, 0xF0, 0x1B,  /* /?`.W... */
                /* 0448 */  0xEB, 0x9D, 0xE1, 0xE5, 0xCA, 0x23, 0x89, 0x72,  /* .....#.r */
                /* 0450 */  0x12, 0xA1, 0x7C, 0xB7, 0x7A, 0xAF, 0x32, 0x4A,  /* ..|.z.2J */
                /* 0458 */  0xC4, 0x17, 0x62, 0x9F, 0x82, 0x0D, 0x6D, 0x94,  /* ..b...m. */
                /* 0460 */  0xA7, 0x8A, 0xE8, 0xC6, 0x7B, 0xB9, 0x02, 0xAF,  /* ....{... */
                /* 0468 */  0xA4, 0xCB, 0x15, 0x40, 0x93, 0xE1, 0xBF, 0x5C,  /* ...@...\ */
                /* 0470 */  0x81, 0xEF, 0xE6, 0x80, 0xBD, 0x26, 0xC1, 0xF9,  /* .....&.. */
                /* 0478 */  0xFF, 0x5F, 0x93, 0xF8, 0xF5, 0x0A, 0xF0, 0x93,  /* ._...... */
                /* 0480 */  0xFD, 0x7A, 0x45, 0x73, 0x5F, 0xAF, 0x50, 0xA2,  /* .zEs_.P. */
                /* 0488 */  0x20, 0xA4, 0x08, 0x48, 0x33, 0x05, 0xCF, 0xFD,  /*  ..H3... */
                /* 0490 */  0x0A, 0xE0, 0xC4, 0xFF, 0xFF, 0x7E, 0x05, 0x58,  /* .....~.X */
                /* 0498 */  0x0E, 0x77, 0xBF, 0x02, 0x7A, 0xB7, 0x23, 0xF0,  /* .w..z.#. */
                /* 04A0 */  0xA2, 0xBC, 0x1D, 0x61, 0xAF, 0x58, 0xF8, 0x8C,  /* ...a.X.. */
                /* 04A8 */  0x57, 0x2C, 0x1A, 0x66, 0x25, 0x8A, 0xB7, 0x26,  /* W,.f%..& */
                /* 04B0 */  0x0A, 0xE3, 0x2B, 0x16, 0x30, 0xF9, 0xFF, 0x5F,  /* ..+.0.._ */
                /* 04B8 */  0xB1, 0x80, 0xD9, 0x41, 0x14, 0x37, 0x6A, 0xB8,  /* ...A.7j. */
                /* 04C0 */  0x17, 0x27, 0xDF, 0x7A, 0x3C, 0xDF, 0x88, 0xBE,  /* .'.z<... */
                /* 04C8 */  0xC3, 0x60, 0x4E, 0x58, 0x30, 0x6E, 0x58, 0xF0,  /* .`NX0nX. */
                /* 04D0 */  0x87, 0xF4, 0x30, 0xEC, 0x93, 0xC4, 0x3B, 0x96,  /* ..0...;. */
                /* 04D8 */  0x8F, 0x56, 0x06, 0x79, 0x03, 0x7E, 0xB2, 0x7A,  /* .V.y.~.z */
                /* 04E0 */  0xB0, 0x8A, 0x62, 0x84, 0x80, 0xC7, 0xF3, 0x2E,  /* ..b..... */
                /* 04E8 */  0xEC, 0xA3, 0xD5, 0x9B, 0x96, 0x51, 0x62, 0xC7,  /* .....Qb. */
                /* 04F0 */  0xF2, 0x85, 0xEA, 0x59, 0xCB, 0xD7, 0x2C, 0x43,  /* ...Y..,C */
                /* 04F8 */  0xC4, 0x7D, 0x20, 0xF6, 0x0D, 0x0B, 0xB0, 0xFD,  /* .} ..... */
                /* 0500 */  0xFF, 0xBF, 0x61, 0x01, 0x8E, 0x2E, 0x0E, 0xFC,  /* ..a..... */
                /* 0508 */  0xE0, 0x80, 0xBD, 0x61, 0x01, 0x3E, 0x67, 0x0A,  /* ...a.>g. */
                /* 0510 */  0x9E, 0x1B, 0x16, 0xB0, 0xF9, 0xFF, 0xDF, 0xB0,  /* ........ */
                /* 0518 */  0x00, 0xFE, 0xFF, 0xFF, 0x6F, 0x58, 0xC0, 0xE1,  /* ....oX.. */
                /* 0520 */  0x76, 0x85, 0xBD, 0x65, 0x61, 0x6F, 0x2F, 0x64,  /* v..eao/d */
                /* 0528 */  0x15, 0x34, 0xD4, 0x4A, 0x14, 0xFC, 0x7B, 0x65,  /* .4.J..{e */
                /* 0530 */  0x18, 0x7A, 0xC3, 0x02, 0x1C, 0x8D, 0xDB, 0xA3,  /* .z...... */
                /* 0538 */  0x06, 0xC7, 0xD9, 0xE0, 0x49, 0x02, 0x73, 0xAE,  /* ....I.s. */
                /* 0540 */  0xC6, 0xCD, 0xE6, 0xE0, 0x02, 0x47, 0xE8, 0x1D,  /* .....G.. */
                /* 0548 */  0x54, 0x73, 0x67, 0x97, 0x14, 0x18, 0xB7, 0x2C,  /* Tsg...., */
                /* 0550 */  0xB8, 0x97, 0xAA, 0x87, 0x86, 0x28, 0x07, 0xF1,  /* .....(.. */
                /* 0558 */  0x2A, 0xFC, 0x60, 0xF5, 0x28, 0x75, 0x64, 0x8F,  /* *.`.(ud. */
                /* 0560 */  0x57, 0x4F, 0xC3, 0x3E, 0x66, 0xF9, 0x96, 0x65,  /* WO.>f..e */
                /* 0568 */  0xA8, 0x08, 0x6F, 0x59, 0xEC, 0x0C, 0x11, 0x2F,  /* ..oY.../ */
                /* 0570 */  0x56, 0x94, 0x10, 0xEF, 0x15, 0xA1, 0x7D, 0xE7,  /* V.....}. */
                /* 0578 */  0x32, 0xF8, 0xA3, 0xB1, 0x51, 0x83, 0xBE, 0x1C,  /* 2...Q... */
                /* 0580 */  0xBF, 0x65, 0xC1, 0xFB, 0xFF, 0xDF, 0xB2, 0xE0,  /* .e...... */
                /* 0588 */  0x8B, 0xFC, 0xAB, 0xE8, 0x44, 0xE0, 0x5B, 0x16,  /* ....D.[. */
                /* 0590 */  0xC0, 0x8F, 0x60, 0x10, 0x72, 0x32, 0x70, 0xF4,  /* ..`.r2p. */
                /* 0598 */  0x79, 0x01, 0x3F, 0x80, 0x87, 0x11, 0x0F, 0x89,  /* y.?..... */
                /* 05A0 */  0x05, 0x18, 0x38, 0xBD, 0x2F, 0xF9, 0x4C, 0xC1,  /* ..8./.L. */
                /* 05A8 */  0x0F, 0x18, 0x3E, 0x53, 0xB0, 0xEB, 0x41, 0xF4,  /* ..>S..A. */
                /* 05B0 */  0xC7, 0x00, 0x9F, 0x4B, 0x30, 0x83, 0x03, 0xFF,  /* ...K0... */
                /* 05B8 */  0xB5, 0xE2, 0xD0, 0x3D, 0x8A, 0xD7, 0x07, 0x13,  /* ...=.... */
                /* 05C0 */  0x78, 0x70, 0xFC, 0xFF, 0x3F, 0x38, 0xB8, 0x77,  /* xp..?8.w */
                /* 05C8 */  0x86, 0x23, 0xF2, 0x1D, 0xC6, 0x83, 0x03, 0xDB,  /* .#...... */
                /* 05D0 */  0x41, 0x00, 0x38, 0x0C, 0x0E, 0x1F, 0x6A, 0x70,  /* A.8...jp */
                /* 05D8 */  0xE8, 0xF1, 0x18, 0x38, 0xA4, 0xCF, 0x63, 0xEC,  /* ...8..c. */
                /* 05E0 */  0xC2, 0xF0, 0x90, 0xE3, 0xA1, 0x81, 0x0D, 0xD0,  /* ........ */
                /* 05E8 */  0x43, 0x03, 0x96, 0x93, 0x78, 0x0A, 0x39, 0x34,  /* C...x.94 */
                /* 05F0 */  0x30, 0x4B, 0x18, 0x1A, 0x50, 0x8A, 0x37, 0x34,  /* 0K..P.74 */
                /* 05F8 */  0xFA, 0xFF, 0x1F, 0x1A, 0x1F, 0x92, 0x0F, 0x0B,  /* ........ */
                /* 0600 */  0x31, 0x9F, 0x72, 0x22, 0xBC, 0x2F, 0xF8, 0x04,  /* 1.r"./.. */
                /* 0608 */  0xC5, 0xD0, 0x5F, 0x53, 0x7C, 0xBB, 0xF0, 0x4D,  /* .._S|..M */
                /* 0610 */  0x10, 0x37, 0x3E, 0x70, 0x5D, 0x3A, 0x3D, 0x3E,  /* .7>p]:=> */
                /* 0618 */  0xE0, 0x73, 0xE4, 0xF2, 0xF8, 0x70, 0x47, 0x27,  /* .s...pG' */
                /* 0620 */  0x8F, 0x0F, 0x86, 0xCB, 0xAB, 0x0C, 0x39, 0x9A,  /* ......9. */
                /* 0628 */  0xF8, 0x68, 0xC5, 0x86, 0x07, 0xB6, 0x9B, 0x9E,  /* .h...... */
                /* 0630 */  0x87, 0x07, 0x7C, 0xAE, 0x9B, 0x60, 0xBC, 0x42,  /* ..|..`.B */
                /* 0638 */  0xF2, 0x6B, 0x09, 0x8C, 0x13, 0x14, 0xFE, 0xBA,  /* .k...... */
                /* 0640 */  0x09, 0xDE, 0xFF, 0xFF, 0x75, 0x13, 0x78, 0x8E,  /* ....u.x. */
                /* 0648 */  0x82, 0x6B, 0xBD, 0x64, 0xD3, 0x20, 0xAF, 0x1C,  /* .k.d. .. */
                /* 0650 */  0xC5, 0x7A, 0x11, 0x50, 0x18, 0x9F, 0xD9, 0x00,  /* .z.P.... */
                /* 0658 */  0x47, 0x63, 0x7D, 0x66, 0x03, 0xCB, 0xBD, 0x80,  /* Gc}f.... */
                /* 0660 */  0xDD, 0xD8, 0xE0, 0x9E, 0xD6, 0x60, 0xDF, 0x1D,  /* .....`.. */
                /* 0668 */  0x1E, 0xCE, 0x1E, 0xD3, 0x1E, 0xD5, 0x1E, 0xD0,  /* ........ */
                /* 0670 */  0x7C, 0xC4, 0x8E, 0xF1, 0x96, 0x16, 0x24, 0x4E,  /* |.....$N */
                /* 0678 */  0x84, 0xD7, 0x81, 0xA7, 0x35, 0x5F, 0x32, 0xE2,  /* ....5_2. */
                /* 0680 */  0x05, 0x7A, 0x5A, 0x33, 0x46, 0x9C, 0x97, 0x36,  /* .zZ3F..6 */
                /* 0688 */  0x23, 0xBE, 0x52, 0x84, 0x78, 0x58, 0xF3, 0xC9,  /* #.R.xX.. */
                /* 0690 */  0xCD, 0x78, 0x0F, 0x13, 0xE1, 0xC2, 0xBC, 0xB0,  /* .x...... */
                /* 0698 */  0x3D, 0xAD, 0x81, 0xE3, 0xFF, 0x7F, 0x5A, 0x83,  /* =.....Z. */
                /* 06A0 */  0x23, 0xE7, 0x8A, 0x0D, 0xD0, 0xE4, 0xA2, 0x8F,  /* #....... */
                /* 06A8 */  0x3B, 0xA4, 0x80, 0xE5, 0xDA, 0xC0, 0x6E, 0x29,  /* ;.....n) */
                /* 06B0 */  0xF0, 0x2E, 0xD8, 0xC0, 0xF9, 0xFF, 0x7F, 0x44,  /* .......D */
                /* 06B8 */  0x01, 0x5F, 0x96, 0x0B, 0x36, 0xCD, 0x71, 0xC1,  /* ._..6.q. */
                /* 06C0 */  0x46, 0x71, 0x58, 0x0D, 0x90, 0xE6, 0x09, 0xFF,  /* FqX..... */
                /* 06C8 */  0x7A, 0x0D, 0xFE, 0x49, 0xF8, 0x7A, 0x0D, 0xD8,  /* z..I.z.. */
                /* 06D0 */  0xBE, 0xC5, 0xE2, 0xAE, 0xD7, 0xC0, 0xEA, 0xFF,  /* ........ */
                /* 06D8 */  0x7F, 0xBD, 0x06, 0x96, 0x82, 0x47, 0x4A, 0xEF,  /* .....GJ. */
                /* 06E0 */  0xD4, 0xE0, 0xBA, 0x69, 0xE3, 0x41, 0xDF, 0xB4,  /* ...i.A.. */
                /* 06E8 */  0x61, 0x0A, 0xBE, 0x45, 0xD1, 0x28, 0xE4, 0x8A,  /* a..E.(.. */
                /* 06F0 */  0xB6, 0x10, 0x0A, 0xE3, 0x5B, 0x14, 0xE0, 0x08,  /* ....[... */
                /* 06F8 */  0xFB, 0x2D, 0x0A, 0x2C, 0x17, 0xA7, 0xB7, 0x28,  /* .-.,...( */
                /* 0700 */  0xFC, 0x0C, 0x3C, 0x68, 0xDF, 0x75, 0x18, 0xA6,  /* ..<h.u.. */
                /* 0708 */  0xEF, 0xD0, 0xF0, 0x4F, 0x4D, 0xCF, 0x4D, 0x0F,  /* ...OM.M. */
                /* 0710 */  0x4E, 0x0F, 0xCD, 0x3E, 0x48, 0xF9, 0x70, 0xF0,  /* N..>H.p. */
                /* 0718 */  0xFC, 0xF4, 0xFF, 0x8F, 0xF1, 0x5E, 0xE7, 0x9B,  /* .....^.. */
                /* 0720 */  0xD4, 0x6B, 0x94, 0x2F, 0x30, 0xC7, 0x10, 0x31,  /* .k./0..1 */
                /* 0728 */  0xCA, 0xCB, 0xB4, 0x21, 0xE2, 0xF9, 0xD4, 0xE4,  /* ...!.... */
                /* 0730 */  0xB3, 0x42, 0xDC, 0x10, 0x0F, 0xD1, 0x46, 0x88,  /* .B....F. */
                /* 0738 */  0xFA, 0x3C, 0xED, 0x09, 0xBD, 0x46, 0x81, 0x57,  /* .<...F.W */
                /* 0740 */  0xD0, 0x35, 0x0A, 0xA0, 0xC9, 0xFD, 0x08, 0x77,  /* .5.....w */
                /* 0748 */  0x8D, 0x02, 0xCB, 0xBD, 0x81, 0x9D, 0x87, 0xF8,  /* ........ */
                /* 0750 */  0x95, 0xC8, 0xD7, 0x06, 0x18, 0xF7, 0x28, 0x38,  /* ......(8 */
                /* 0758 */  0xFF, 0xFF, 0x7B, 0x14, 0x60, 0x23, 0xCC, 0x3D,  /* ..{.`#.= */
                /* 0760 */  0x8A, 0x06, 0xB9, 0x47, 0xA1, 0x4E, 0x26, 0xBE,  /* ...G.N&. */
                /* 0768 */  0xD4, 0x79, 0xA2, 0xE0, 0x08, 0x7F, 0x91, 0x42,  /* .y.....B */
                /* 0770 */  0xC5, 0x26, 0x51, 0xE8, 0xC3, 0x10, 0x2A, 0xE6,  /* .&Q...*. */
                /* 0778 */  0x61, 0x84, 0x82, 0x18, 0xD0, 0x19, 0x4E, 0x14,  /* a.....N. */
                /* 0780 */  0x68, 0x15, 0x27, 0x0A, 0x72, 0x8B, 0xF1, 0xA4,  /* h.'.r... */
                /* 0788 */  0x1E, 0xA3, 0x00, 0x5F, 0xCB, 0xF4, 0x50, 0x79,  /* ..._..Py */
                /* 0790 */  0xE4, 0xA1, 0x52, 0x10, 0x0F, 0xD5, 0x71, 0x86,  /* ..R...q. */
                /* 0798 */  0x8A, 0x9E, 0xA4, 0xE7, 0x8F, 0xF9, 0xFF, 0x1F,  /* ........ */
                /* 07A0 */  0x1C, 0xB0, 0x07, 0x29, 0x80, 0x17, 0x0A, 0x6D,  /* ...)...m */
                /* 07A8 */  0xFA, 0xD4, 0x68, 0xD4, 0xAA, 0x41, 0x99, 0x1A,  /* ..h..A.. */
                /* 07B0 */  0x65, 0x1A, 0xD4, 0xEA, 0x53, 0xA9, 0x31, 0x63,  /* e...S.1c */
                /* 07B8 */  0xE7, 0x50, 0x4B, 0x3B, 0x4B, 0x50, 0x31, 0x8B,  /* .PK;KP1. */
                /* 07C0 */  0xD1, 0x68, 0x1C, 0x05, 0x84, 0xCA, 0xFE, 0x9B,  /* .h...... */
                /* 07C8 */  0x0B, 0xC4, 0x21, 0x9F, 0x3A, 0x02, 0x74, 0xB0,  /* ..!.:.t. */
                /* 07D0 */  0x17, 0x95, 0x80, 0x2C, 0x6B, 0x6D, 0x02, 0x71,  /* ...,km.q */
                /* 07D8 */  0x7C, 0x13, 0x10, 0x8D, 0x80, 0x48, 0xCB, 0x63,  /* |....H.c */
                /* 07E0 */  0x42, 0x40, 0xCE, 0x0D, 0x22, 0x20, 0xAB, 0x58,  /* B@.." .X */
                /* 07E8 */  0x93, 0x80, 0xAC, 0xF9, 0x01, 0x23, 0x70, 0xEB,  /* .....#p. */
                /* 07F0 */  0xD4, 0x01, 0xC4, 0x52, 0x82, 0xD0, 0x44, 0x0B,  /* ...R..D. */
                /* 07F8 */  0x17, 0xA8, 0xE3, 0x81, 0x68, 0x30, 0x84, 0x46,  /* ....h0.F */
                /* 0800 */  0x40, 0x0E, 0x46, 0x21, 0x20, 0xCB, 0xF8, 0x74,  /* @.F! ..t */
                /* 0808 */  0x0B, 0xDC, 0x02, 0xAC, 0x00, 0x31, 0xF9, 0x20,  /* .....1.  */
                /* 0810 */  0x54, 0xB0, 0x17, 0x50, 0xA6, 0x1E, 0x44, 0x40,  /* T..P..D@ */
                /* 0818 */  0x56, 0xBA, 0x56, 0x01, 0x59, 0x37, 0x88, 0x80,  /* V.V.Y7.. */
                /* 0820 */  0xFE, 0xFF, 0x2F, 0x83, 0x32, 0x03, 0xCE, 0x32,  /* ../.2..2 */
                /* 0828 */  0xBA, 0x01, 0x62, 0x0A, 0x1F, 0x0A, 0x02, 0xB1,  /* ..b..... */
                /* 0830 */  0x26, 0x3D, 0xA0, 0x4C, 0x20, 0x88, 0xAE, 0x1C,  /* &=.L ... */
                /* 0838 */  0xC4, 0x0F, 0x10, 0x93, 0x06, 0x22, 0x20, 0xC7,  /* ....." . */
                /* 0840 */  0x39, 0x98, 0x08, 0xDC, 0x71, 0x14, 0x01, 0x52,  /* 9...q..R */
                /* 0848 */  0x47, 0xC3, 0xA5, 0x20, 0x54, 0xFC, 0xF3, 0x44,  /* G.. T..D */
                /* 0850 */  0x20, 0x16, 0x64, 0x09, 0x8C, 0x82, 0xD0, 0x08,  /*  .d..... */
                /* 0858 */  0x9A, 0x40, 0x98, 0x3C, 0x4F, 0x20, 0x2C, 0xD4,  /* .@.<O ,. */
                /* 0860 */  0x9F, 0x5C, 0xA7, 0x15, 0xA2, 0x6A, 0x88, 0xD4,  /* .\...j.. */
                /* 0868 */  0x15, 0x08, 0x0B, 0xFC, 0x30, 0xD0, 0x60, 0x9C,  /* ....0.`. */
                /* 0870 */  0x1E, 0x44, 0x40, 0x4E, 0xFA, 0xA7, 0x0A, 0x44,  /* .D@N...D */
                /* 0878 */  0x72, 0x83, 0x08, 0xC8, 0xF9, 0x9F, 0x22, 0x02,  /* r.....". */
                /* 0880 */  0x77, 0xEA, 0xD7, 0x84, 0x86, 0x4F, 0xBE, 0x58,  /* w....O.X */
                /* 0888 */  0x41, 0x88, 0xB8, 0x87, 0x55, 0x50, 0xA2, 0x14,  /* A...UP.. */
                /* 0890 */  0x44, 0x40, 0x56, 0xF6, 0xB4, 0x12, 0x90, 0x75,  /* D@V....u */
                /* 0898 */  0x82, 0x08, 0xC8, 0xFF, 0x7F                     /* ..... */
            })
        }

        Device (WMI2)
        {
            Name (_HID, EisaId ("PNP0C14") /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_WDG, Buffer (0x64)
            {
                /* 0000 */  0xF1, 0x24, 0xB4, 0xFC, 0x5A, 0x07, 0x0E, 0x4E,  /* .$..Z..N */
                /* 0008 */  0xBF, 0xC4, 0x62, 0xF3, 0xE7, 0x17, 0x71, 0xFA,  /* ..b...q. */
                /* 0010 */  0x41, 0x37, 0x01, 0x01, 0xE3, 0x5E, 0xBE, 0xE2,  /* A7...^.. */
                /* 0018 */  0xDA, 0x42, 0xDB, 0x49, 0x83, 0x78, 0x1F, 0x52,  /* .B.I.x.R */
                /* 0020 */  0x47, 0x38, 0x82, 0x02, 0x41, 0x38, 0x01, 0x02,  /* G8..A8.. */
                /* 0028 */  0x9A, 0x01, 0x30, 0x74, 0xE9, 0xDC, 0x48, 0x45,  /* ..0t..HE */
                /* 0030 */  0xBA, 0xB0, 0x9F, 0xDE, 0x09, 0x35, 0xCA, 0xFF,  /* .....5.. */
                /* 0038 */  0x41, 0x39, 0x0A, 0x05, 0x03, 0x70, 0xF4, 0x7F,  /* A9...p.. */
                /* 0040 */  0x6C, 0x3B, 0x5E, 0x4E, 0xA2, 0x27, 0xE9, 0x79,  /* l;^N.'.y */
                /* 0048 */  0x82, 0x4A, 0x85, 0xD1, 0x41, 0x41, 0x01, 0x06,  /* .J..AA.. */
                /* 0050 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,  /* !...f... */
                /* 0058 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,  /* ......). */
                /* 0060 */  0x42, 0x42, 0x01, 0x00                           /* BB.. */
            })
            Name (PREL, Buffer (0x08)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
            })
            Method (WQA7, 1, NotSerialized)
            {
                Acquire (\_SB.WMI1.MWMI, 0xFFFF)
                \WMIS (0x07, 0x00)
                Store (\WLS0, Index (PREL, 0x00))
                Store (\WLS1, Index (PREL, 0x01))
                Store (\WLS2, Index (PREL, 0x02))
                Store (\WLS3, Index (PREL, 0x03))
                Store (\WLS4, Index (PREL, 0x04))
                Store (\WLS5, Index (PREL, 0x05))
                Store (\WLS6, Index (PREL, 0x06))
                Store (\WLS7, Index (PREL, 0x07))
                Release (\_SB.WMI1.MWMI)
                Return (PREL) /* \_SB_.WMI2.PREL */
            }

            Method (WMA8, 3, NotSerialized)
            {
                CreateByteField (Arg2, 0x00, PRE0)
                CreateByteField (Arg2, 0x01, PRE1)
                CreateByteField (Arg2, 0x02, PRE2)
                CreateByteField (Arg2, 0x03, PRE3)
                CreateByteField (Arg2, 0x04, PRE4)
                CreateByteField (Arg2, 0x05, PRE5)
                CreateByteField (Arg2, 0x06, PRE6)
                CreateByteField (Arg2, 0x07, PRE7)
                Acquire (\_SB.WMI1.MWMI, 0xFFFF)
                Store (PRE0, \WLS0)
                Store (PRE1, \WLS1)
                Store (PRE2, \WLS2)
                Store (PRE3, \WLS3)
                Store (PRE4, \WLS4)
                Store (PRE5, \WLS5)
                Store (PRE6, \WLS6)
                Store (PRE7, \WLS7)
                \WMIS (0x08, 0x00)
                Release (\_SB.WMI1.MWMI)
            }

            Name (ITEM, Package (0x07)
            {
                Package (0x02)
                {
                    0x00, 
                    "InhibitEnteringThinkPadSetup"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "MTMSerialConcatenation"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "SwapProductName"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "ComputraceMsgDisable"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "CpuDebugEnable"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "NffPermanentDisable"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PasswordAfterBootDeviceList"
                }
            })
            Name (VSEL, Package (0x02)
            {
                Package (0x02)
                {
                    "Disable", 
                    "Enable"
                }, 

                Package (0x02)
                {
                    "Off", 
                    "On"
                }
            })
            Method (WQA9, 1, NotSerialized)
            {
                Acquire (\_SB.WMI1.MWMI, 0xFFFF)
                If (LNotEqual (\WMIS (0x09, Arg0), 0x00))
                {
                    Release (\_SB.WMI1.MWMI)
                    Return ("")
                }

                Store (DerefOf (Index (ITEM, \WITM)), Local0)
                Store (DerefOf (Index (Local0, 0x00)), Local1)
                Store (DerefOf (Index (Local0, 0x01)), Local2)
                Concatenate (Local2, ",", Local6)
                Store (DerefOf (Index (VSEL, Local1)), Local3)
                Concatenate (Local6, DerefOf (Index (Local3, \WSEL)), Local7)
                Release (\_SB.WMI1.MWMI)
                Return (Local7)
            }

            Method (WMAA, 3, NotSerialized)
            {
                Acquire (\_SB.WMI1.MWMI, 0xFFFF)
                If (LEqual (SizeOf (Arg2), 0x00))
                {
                    Store (0x02, Local0)
                }
                Else
                {
                    Store (\_SB.WMI1.CARG (Arg2), Local0)
                    If (LEqual (Local0, 0x00))
                    {
                        Store (\_SB.WMI1.WSET (ITEM, VSEL), Local0)
                        If (LEqual (Local0, 0x00))
                        {
                            Store (\WMIS (0x0A, 0x00), Local0)
                        }
                    }
                }

                Release (\_SB.WMI1.MWMI)
                Return (DerefOf (Index (\_SB.WMI1.RETN, Local0)))
            }

            Name (WQBB, Buffer (0x0538)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  /* FOMB.... */
                /* 0008 */  0x28, 0x05, 0x00, 0x00, 0xAE, 0x18, 0x00, 0x00,  /* (....... */
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  /* DS...}.T */
                /* 0018 */  0x98, 0xDE, 0x8B, 0x00, 0x01, 0x06, 0x18, 0x42,  /* .......B */
                /* 0020 */  0x10, 0x0D, 0x10, 0x8A, 0x0D, 0x21, 0x02, 0x0B,  /* .....!.. */
                /* 0028 */  0x83, 0x50, 0x50, 0x18, 0x14, 0xA0, 0x45, 0x41,  /* .PP...EA */
                /* 0030 */  0xC8, 0x05, 0x14, 0x95, 0x02, 0x21, 0xC3, 0x02,  /* .....!.. */
                /* 0038 */  0x14, 0x0B, 0x70, 0x2E, 0x40, 0xBA, 0x00, 0xE5,  /* ..p.@... */
                /* 0040 */  0x28, 0x72, 0x0C, 0x22, 0x02, 0xF7, 0xEF, 0x0F,  /* (r.".... */
                /* 0048 */  0x31, 0x10, 0x88, 0x14, 0x40, 0x48, 0x28, 0x84,  /* 1...@H(. */
                /* 0050 */  0x44, 0x00, 0x53, 0x21, 0x70, 0x84, 0xA0, 0x5F,  /* D.S!p.._ */
                /* 0058 */  0x01, 0x08, 0x1D, 0x0A, 0x90, 0x29, 0xC0, 0xA0,  /* .....).. */
                /* 0060 */  0x00, 0xA7, 0x08, 0x22, 0x88, 0xD2, 0xB2, 0x00,  /* ...".... */
                /* 0068 */  0xDD, 0x02, 0x7C, 0x0B, 0xD0, 0x0E, 0x21, 0xB4,  /* ..|...!. */
                /* 0070 */  0xC8, 0x95, 0x0A, 0xB0, 0x08, 0x25, 0x9F, 0x80,  /* .....%.. */
                /* 0078 */  0x92, 0x88, 0x22, 0xD9, 0x78, 0xB2, 0x8D, 0x48,  /* ..".x..H */
                /* 0080 */  0xE6, 0x61, 0x91, 0x83, 0x40, 0x89, 0x19, 0x04,  /* .a..@... */
                /* 0088 */  0x4A, 0x27, 0xAE, 0x6C, 0xE2, 0x6A, 0x10, 0x07,  /* J'.l.j.. */
                /* 0090 */  0x10, 0xE5, 0x3C, 0xA2, 0x24, 0x38, 0xAA, 0x83,  /* ..<.$8.. */
                /* 0098 */  0x88, 0x10, 0xBB, 0x5C, 0x01, 0x92, 0x07, 0x20,  /* ...\...  */
                /* 00A0 */  0xCD, 0x13, 0x93, 0xF5, 0x39, 0x68, 0x64, 0x6C,  /* ....9hdl */
                /* 00A8 */  0x04, 0x3C, 0x98, 0x04, 0x10, 0x16, 0x65, 0x9D,  /* .<....e. */
                /* 00B0 */  0x8A, 0x02, 0x83, 0xF2, 0x00, 0x22, 0x39, 0x63,  /* ....."9c */
                /* 00B8 */  0x45, 0x01, 0xDB, 0xEB, 0x44, 0x64, 0x72, 0xA0,  /* E...Ddr. */
                /* 00C0 */  0x54, 0x12, 0x1C, 0x6A, 0x98, 0x9E, 0x5A, 0xF3,  /* T..j..Z. */
                /* 00C8 */  0x13, 0xD3, 0x44, 0x4E, 0xAD, 0xE9, 0x21, 0x0B,  /* ..DN..!. */
                /* 00D0 */  0x92, 0x49, 0x1B, 0x0A, 0x6A, 0xEC, 0x9E, 0xD6,  /* .I..j... */
                /* 00D8 */  0x49, 0x79, 0xA6, 0x11, 0x0F, 0xCA, 0x30, 0x09,  /* Iy....0. */
                /* 00E0 */  0x3C, 0x0A, 0x86, 0xC6, 0x09, 0xCA, 0x82, 0x90,  /* <....... */
                /* 00E8 */  0x83, 0x81, 0xA2, 0x00, 0x4F, 0xC2, 0x73, 0x2C,  /* ....O.s, */
                /* 00F0 */  0x5E, 0x80, 0xF0, 0x11, 0x93, 0xB3, 0x40, 0x8C,  /* ^.....@. */
                /* 00F8 */  0x04, 0x3E, 0x13, 0x78, 0xE4, 0xC7, 0x8C, 0x1D,  /* .>.x.... */
                /* 0100 */  0x51, 0xB8, 0x80, 0xE7, 0x73, 0x0C, 0x91, 0xE3,  /* Q...s... */
                /* 0108 */  0x1E, 0x6A, 0x8C, 0xA3, 0x88, 0x7C, 0x38, 0x0C,  /* .j...|8. */
                /* 0110 */  0xED, 0x74, 0xE3, 0x1C, 0xD8, 0xE9, 0x14, 0x04,  /* .t...... */
                /* 0118 */  0x2E, 0x90, 0x60, 0x3D, 0xCF, 0x59, 0x20, 0xFF,  /* ..`=.Y . */
                /* 0120 */  0xFF, 0x18, 0x07, 0xC1, 0xF0, 0x8E, 0x01, 0x23,  /* .......# */
                /* 0128 */  0x03, 0x42, 0x1E, 0x05, 0x58, 0x1D, 0x96, 0x26,  /* .B..X..& */
                /* 0130 */  0x91, 0xC0, 0xEE, 0x05, 0x68, 0xBC, 0x04, 0x48,  /* ....h..H */
                /* 0138 */  0xE1, 0x20, 0xA5, 0x0C, 0x42, 0x30, 0x8D, 0x09,  /* . ..B0.. */
                /* 0140 */  0xB0, 0x75, 0x68, 0x90, 0x37, 0x01, 0xD6, 0xAE,  /* .uh.7... */
                /* 0148 */  0x02, 0x42, 0x89, 0x74, 0x02, 0x71, 0x42, 0x44,  /* .B.t.qBD */
                /* 0150 */  0x89, 0x18, 0xD4, 0x40, 0x51, 0x6A, 0x43, 0x15,  /* ...@QjC. */
                /* 0158 */  0x4C, 0x67, 0xC3, 0x13, 0x66, 0xDC, 0x10, 0x31,  /* Lg..f..1 */
                /* 0160 */  0x0C, 0x14, 0xB7, 0xFD, 0x41, 0x90, 0x61, 0xE3,  /* ....A.a. */
                /* 0168 */  0xC6, 0xEF, 0x41, 0x9D, 0xD6, 0xD9, 0x1D, 0xD3,  /* ..A..... */
                /* 0170 */  0xAB, 0x82, 0x09, 0x3C, 0xE9, 0x37, 0x84, 0xA7,  /* ...<.7.. */
                /* 0178 */  0x83, 0xA3, 0x38, 0xDA, 0xA8, 0x31, 0x9A, 0x23,  /* ..8..1.# */
                /* 0180 */  0x65, 0xAB, 0xD6, 0xB9, 0xC2, 0x91, 0xE0, 0x51,  /* e......Q */
                /* 0188 */  0xE7, 0x05, 0x9F, 0x0C, 0x3C, 0xB4, 0xC3, 0xF6,  /* ....<... */
                /* 0190 */  0x60, 0xCF, 0xD2, 0x43, 0x38, 0x82, 0x67, 0x86,  /* `..C8.g. */
                /* 0198 */  0x47, 0x02, 0x8F, 0x81, 0xDD, 0x15, 0x7C, 0x08,  /* G.....|. */
                /* 01A0 */  0xF0, 0x19, 0x01, 0xEF, 0x1A, 0x50, 0x97, 0x83,  /* .....P.. */
                /* 01A8 */  0x47, 0x03, 0x36, 0xE9, 0x70, 0x98, 0xF1, 0x7A,  /* G.6.p..z */
                /* 01B0 */  0xEE, 0x9E, 0xBA, 0xCF, 0x18, 0xFC, 0xBC, 0xE1,  /* ........ */
                /* 01B8 */  0xC1, 0xE1, 0x46, 0x7A, 0x32, 0x47, 0x56, 0xAA,  /* ..Fz2GV. */
                /* 01C0 */  0x00, 0xB3, 0xD7, 0x00, 0x1D, 0x25, 0x7C, 0xE0,  /* .....%|. */
                /* 01C8 */  0x60, 0x77, 0x81, 0xA7, 0x00, 0x13, 0x58, 0xFE,  /* `w....X. */
                /* 01D0 */  0x20, 0x50, 0x23, 0x33, 0xB4, 0xC7, 0xFB, 0xDE,  /*  P#3.... */
                /* 01D8 */  0x61, 0xC8, 0x27, 0x85, 0xC3, 0x62, 0x62, 0x0F,  /* a.'..bb. */
                /* 01E0 */  0x1E, 0x74, 0x3C, 0xE0, 0xBF, 0x8F, 0x3C, 0x69,  /* .t<...<i */
                /* 01E8 */  0x78, 0xFA, 0x9E, 0xAF, 0x09, 0x06, 0x86, 0x90,  /* x....... */
                /* 01F0 */  0x95, 0xF1, 0xA0, 0x06, 0x62, 0xE8, 0x57, 0x85,  /* ....b.W. */
                /* 01F8 */  0xC3, 0x38, 0x0D, 0x9F, 0x40, 0x7C, 0x0E, 0x08,  /* .8..@|.. */
                /* 0200 */  0x12, 0xE3, 0x98, 0x3C, 0x38, 0xFF, 0xFF, 0x09,  /* ...<8... */
                /* 0208 */  0x1C, 0x6B, 0xE4, 0xF4, 0x9C, 0xE2, 0xF3, 0x04,  /* .k...... */
                /* 0210 */  0x3F, 0x5C, 0xF8, 0x3C, 0xC1, 0x4E, 0x0C, 0xA7,  /* ?\.<.N.. */
                /* 0218 */  0xF1, 0x1C, 0xE0, 0xE1, 0x9C, 0x95, 0x8F, 0x13,  /* ........ */
                /* 0220 */  0xC0, 0x02, 0xE2, 0x75, 0x82, 0x0F, 0x14, 0x3E,  /* ...u...> */
                /* 0228 */  0xEC, 0xA1, 0x79, 0x14, 0x2F, 0x11, 0x6F, 0x0F,  /* ..y./.o. */
                /* 0230 */  0x26, 0x88, 0xF6, 0x10, 0x03, 0xC6, 0x19, 0xE1,  /* &....... */
                /* 0238 */  0xCE, 0x1B, 0x70, 0x4E, 0x31, 0xC0, 0x03, 0xEA,  /* ..pN1... */
                /* 0240 */  0x10, 0x30, 0x87, 0x09, 0x0F, 0x81, 0x0F, 0xE0,  /* .0...... */
                /* 0248 */  0x19, 0xE4, 0x1C, 0x7D, 0xCC, 0x39, 0x33, 0xDC,  /* ...}.93. */
                /* 0250 */  0x71, 0x07, 0x6C, 0xC3, 0xE0, 0x91, 0x2D, 0x80,  /* q.l...-. */
                /* 0258 */  0xB0, 0x38, 0x4F, 0x02, 0x05, 0x7C, 0x1B, 0x50,  /* .8O..|.P */
                /* 0260 */  0x18, 0x1F, 0x6E, 0xC0, 0xFB, 0xFF, 0x3F, 0xDC,  /* ..n...?. */
                /* 0268 */  0x00, 0xD7, 0xF3, 0x01, 0xEE, 0xF8, 0x00, 0xF7,  /* ........ */
                /* 0270 */  0x62, 0xC1, 0x0E, 0x0F, 0x8F, 0x37, 0xC0, 0x60,  /* b....7.` */
                /* 0278 */  0x48, 0x8F, 0x34, 0x6F, 0x35, 0x31, 0x5E, 0x6D,  /* H.4o51^m */
                /* 0280 */  0x42, 0x44, 0x78, 0xA8, 0x79, 0xB7, 0x31, 0x52,  /* BDx.y.1R */
                /* 0288 */  0xBC, 0xC7, 0x1B, 0x76, 0x8D, 0x39, 0x8B, 0x07,  /* ...v.9.. */
                /* 0290 */  0x90, 0x28, 0xC5, 0xA1, 0xE9, 0x62, 0x13, 0x23,  /* .(...b.# */
                /* 0298 */  0xCA, 0x9B, 0x8D, 0x61, 0xDF, 0x74, 0x0C, 0x14,  /* ...a.t.. */
                /* 02A0 */  0x2A, 0x52, 0x84, 0x30, 0x2F, 0x16, 0x21, 0x1E,  /* *R.0/.!. */
                /* 02A8 */  0x6F, 0xC0, 0x2C, 0xE9, 0xA5, 0xA2, 0xCF, 0x81,  /* o.,..... */
                /* 02B0 */  0x8F, 0x37, 0x80, 0x97, 0xFF, 0xFF, 0xF1, 0x06,  /* .7...... */
                /* 02B8 */  0xF0, 0x30, 0x0C, 0x1F, 0x53, 0xC0, 0x76, 0x73,  /* .0..S.vs */
                /* 02C0 */  0x60, 0xF7, 0x14, 0xF8, 0xE7, 0x14, 0xC0, 0x91,  /* `....... */
                /* 02C8 */  0x90, 0x47, 0x80, 0x0E, 0x1E, 0x16, 0x01, 0x22,  /* .G....." */
                /* 02D0 */  0x1B, 0xCF, 0x00, 0x9F, 0x89, 0xA8, 0x40, 0x2A,  /* ......@* */
                /* 02D8 */  0xCD, 0x14, 0x2C, 0xE3, 0x14, 0xAC, 0x4E, 0x88,  /* ..,...N. */
                /* 02E0 */  0x5C, 0x06, 0x85, 0x44, 0x40, 0x68, 0x64, 0x86,  /* \..D@hd. */
                /* 02E8 */  0xF3, 0x21, 0xD1, 0x60, 0x06, 0xF1, 0xF9, 0xC0,  /* .!.`.... */
                /* 02F0 */  0x67, 0x0A, 0x9F, 0x9C, 0xF8, 0xFF, 0xFF, 0xE4,  /* g....... */
                /* 02F8 */  0x04, 0x9E, 0x83, 0xC9, 0x43, 0x05, 0x2C, 0x44,  /* ....C.,D */
                /* 0300 */  0x9F, 0x16, 0x38, 0x9C, 0xCF, 0x2C, 0x1C, 0xCE,  /* ..8..,.. */
                /* 0308 */  0x47, 0x12, 0x7E, 0x80, 0xE4, 0x47, 0x25, 0x70,  /* G.~..G%p */
                /* 0310 */  0x09, 0x3C, 0x34, 0x80, 0x02, 0xC8, 0xF7, 0x03,  /* .<4..... */
                /* 0318 */  0x9F, 0x03, 0x9E, 0x11, 0xD8, 0x1C, 0x1E, 0x09,  /* ........ */
                /* 0320 */  0x7C, 0x20, 0x60, 0xF0, 0x3C, 0xDA, 0xA8, 0xE8,  /* | `.<... */
                /* 0328 */  0xD1, 0xC6, 0xC3, 0xE3, 0x47, 0x06, 0xCF, 0xE7,  /* ....G... */
                /* 0330 */  0x81, 0xE0, 0x28, 0x1F, 0x09, 0x70, 0x18, 0xEF,  /* ..(..p.. */
                /* 0338 */  0x17, 0x1E, 0xA2, 0x4F, 0x39, 0xB0, 0x26, 0x72,  /* ...O9.&r */
                /* 0340 */  0xD4, 0x16, 0x7D, 0x22, 0x10, 0xE8, 0x33, 0x17,  /* ..}"..3. */
                /* 0348 */  0xE6, 0x94, 0x03, 0x9C, 0x82, 0x8F, 0x1E, 0x15,  /* ........ */
                /* 0350 */  0xF5, 0x40, 0x0A, 0xDA, 0x93, 0x82, 0xCF, 0x0A,  /* .@...... */
                /* 0358 */  0x3E, 0x7C, 0xC1, 0xFF, 0xFF, 0x1F, 0xBE, 0xE0,  /* >|...... */
                /* 0360 */  0xCC, 0xEB, 0x65, 0xCD, 0x07, 0x8E, 0x38, 0x67,  /* ..e...8g */
                /* 0368 */  0x71, 0xBA, 0xEF, 0x16, 0xF8, 0x13, 0x29, 0x30,  /* q.....)0 */
                /* 0370 */  0x0B, 0x72, 0x22, 0x45, 0xC1, 0xF8, 0x44, 0x0A,  /* .r"E..D. */
                /* 0378 */  0xD8, 0xBC, 0x05, 0x60, 0xAF, 0x0B, 0x4F, 0x22,  /* ...`..O" */
                /* 0380 */  0x30, 0xCE, 0x11, 0xCF, 0x58, 0x30, 0x0F, 0x55,  /* 0...X0.U */
                /* 0388 */  0xA7, 0xF8, 0x52, 0xF5, 0xC6, 0x10, 0xE1, 0xC9,  /* ..R..... */
                /* 0390 */  0xEA, 0x35, 0xEA, 0x01, 0xCB, 0x60, 0x2F, 0x02,  /* .5...`/. */
                /* 0398 */  0x86, 0x79, 0xC5, 0xF2, 0xE9, 0x2A, 0xC4, 0x03,  /* .y...*.. */
                /* 03A0 */  0x96, 0xCF, 0x5A, 0xD1, 0x42, 0x84, 0x8C, 0x12,  /* ..Z.B... */
                /* 03A8 */  0xEC, 0x15, 0xEB, 0x55, 0xC6, 0x47, 0x2A, 0x83,  /* ...U.G*. */
                /* 03B0 */  0x07, 0x0C, 0x1B, 0x2D, 0x52, 0x84, 0x47, 0x2C,  /* ...-R.G, */
                /* 03B8 */  0xFC, 0xFF, 0xFF, 0x88, 0x05, 0x1E, 0x09, 0x07,  /* ........ */
                /* 03C0 */  0x52, 0x80, 0x2A, 0x03, 0xC7, 0x1D, 0x48, 0x81,  /* R.*...H. */
                /* 03C8 */  0xFD, 0x69, 0x02, 0x7F, 0xBD, 0xF0, 0x78, 0xB0,  /* .i....x. */
                /* 03D0 */  0xFF, 0xFF, 0x73, 0x00, 0xF8, 0x0E, 0x31, 0xC0,  /* ..s...1. */
                /* 03D8 */  0x60, 0xC0, 0x30, 0x0E, 0x31, 0xC0, 0x43, 0xF0,  /* `.0.1.C. */
                /* 03E0 */  0xC9, 0x0C, 0xF4, 0xC7, 0x1D, 0xF8, 0xE3, 0xE0,  /* ........ */
                /* 03E8 */  0x19, 0x9F, 0x1C, 0x26, 0x50, 0x98, 0x13, 0x29,  /* ...&P..) */
                /* 03F0 */  0x0A, 0xC6, 0x27, 0x52, 0xC0, 0xD9, 0xFF, 0xFF,  /* ..'R.... */
                /* 03F8 */  0x70, 0x05, 0x86, 0xE3, 0x0D, 0xF8, 0x6F, 0x33,  /* p.....o3 */
                /* 0400 */  0x3E, 0x84, 0xFA, 0x7C, 0xE3, 0x0B, 0xA9, 0x21,  /* >..|...! */
                /* 0408 */  0x5E, 0x6C, 0xDE, 0xD4, 0x5E, 0x09, 0x5E, 0xDF,  /* ^l..^.^. */
                /* 0410 */  0xD9, 0xB5, 0xE6, 0xF5, 0xDD, 0xA7, 0x82, 0x27,  /* .......' */
                /* 0418 */  0xD1, 0x08, 0x21, 0xA3, 0xBC, 0xE4, 0x18, 0x24,  /* ..!....$ */
                /* 0420 */  0xC4, 0xEB, 0xA8, 0x01, 0x83, 0x05, 0x89, 0x78,  /* .......x */
                /* 0428 */  0x0A, 0x4F, 0x3B, 0x8F, 0x37, 0xE0, 0x15, 0x75,  /* .O;.7..u */
                /* 0430 */  0x20, 0x05, 0xE8, 0xF1, 0xFF, 0x3F, 0x90, 0x02,  /*  ....?.. */
                /* 0438 */  0x83, 0x7B, 0x0A, 0xEC, 0x73, 0x0A, 0xE0, 0x29,  /* .{..s..) */
                /* 0440 */  0xF9, 0x89, 0x94, 0xA6, 0x3E, 0x91, 0xA2, 0x15,  /* ....>... */
                /* 0448 */  0x01, 0x69, 0xAA, 0x60, 0x21, 0x98, 0xFE, 0x44,  /* .i.`!..D */
                /* 0450 */  0x4A, 0x0F, 0x06, 0xCE, 0x4D, 0xA2, 0xE4, 0x43,  /* J...M..C */
                /* 0458 */  0xA3, 0x70, 0xCE, 0x7A, 0x20, 0xA1, 0x20, 0x06,  /* .p.z . . */
                /* 0460 */  0x74, 0x90, 0x43, 0x05, 0xFA, 0xAC, 0xE2, 0x03,  /* t.C..... */
                /* 0468 */  0xC9, 0x81, 0x3C, 0x22, 0x7A, 0x58, 0x3E, 0x54,  /* ..<"zX>T */
                /* 0470 */  0xFA, 0xAE, 0xE2, 0x73, 0x88, 0x8F, 0x14, 0x1E,  /* ...s.... */
                /* 0478 */  0xBF, 0x0F, 0x0B, 0xFC, 0x3F, 0xE3, 0xE3, 0x28,  /* ....?..( */
                /* 0480 */  0x03, 0xAF, 0xE6, 0xBC, 0x82, 0x02, 0xF3, 0x69,  /* .......i */
                /* 0488 */  0x14, 0xA3, 0xEB, 0x3E, 0x01, 0x92, 0xFF, 0xFF,  /* ...>.... */
                /* 0490 */  0xFC, 0xB8, 0xBE, 0xC3, 0x28, 0xC8, 0xD1, 0x79,  /* ....(..y */
                /* 0498 */  0xF8, 0xC9, 0xA2, 0xE2, 0x4E, 0x96, 0x82, 0x78,  /* ....N..x */
                /* 04A0 */  0xB2, 0x8E, 0x32, 0x59, 0xF4, 0x4C, 0x7C, 0xBB,  /* ..2Y.L|. */
                /* 04A8 */  0xF0, 0x8C, 0xDE, 0xBB, 0x7C, 0x83, 0x65, 0x37,  /* ....|.e7 */
                /* 04B0 */  0x59, 0x78, 0x97, 0x81, 0x90, 0x8F, 0x06, 0xBE,  /* Yx...... */
                /* 04B8 */  0xC9, 0xC2, 0x1D, 0x8B, 0x2F, 0x23, 0xE0, 0xBB,  /* ..../#.. */
                /* 04C0 */  0xC9, 0x02, 0x5E, 0x47, 0xE3, 0xB3, 0x05, 0x3B,  /* ..^G...; */
                /* 04C8 */  0x85, 0xF8, 0xBA, 0x06, 0x4B, 0xA1, 0x4D, 0x9F,  /* ....K.M. */
                /* 04D0 */  0x1A, 0x8D, 0x5A, 0xFD, 0xFF, 0x1B, 0x94, 0xA9,  /* ..Z..... */
                /* 04D8 */  0x51, 0xA6, 0x41, 0xAD, 0x3E, 0x95, 0x1A, 0x33,  /* Q.A.>..3 */
                /* 04E0 */  0x76, 0xA1, 0xB0, 0xB8, 0x0B, 0x06, 0x95, 0xB4,  /* v....... */
                /* 04E8 */  0x2C, 0x8D, 0xCB, 0x81, 0x40, 0x68, 0x80, 0x5B,  /* ,...@h.[ */
                /* 04F0 */  0xA9, 0x40, 0x1C, 0xFA, 0x0B, 0xA4, 0x53, 0x02,  /* .@....S. */
                /* 04F8 */  0xF9, 0x6A, 0x09, 0xC8, 0x62, 0x57, 0x25, 0x10,  /* .j..bW%. */
                /* 0500 */  0xCB, 0x54, 0x01, 0xD1, 0xC8, 0xDD, 0xC2, 0x20,  /* .T.....  */
                /* 0508 */  0x02, 0x72, 0xBC, 0x4F, 0x8D, 0x40, 0x1D, 0x49,  /* .r.O.@.I */
                /* 0510 */  0x07, 0x10, 0x13, 0xE4, 0x63, 0xAC, 0xF4, 0x25,  /* ....c..% */
                /* 0518 */  0x20, 0x10, 0xCB, 0xA6, 0x15, 0xA0, 0xE5, 0x3A,  /*  ......: */
                /* 0520 */  0x01, 0x62, 0x61, 0x41, 0x68, 0xC0, 0x5F, 0xB5,  /* .baAh._. */
                /* 0528 */  0x86, 0xE0, 0xB4, 0x20, 0x02, 0x72, 0x32, 0x2D,  /* ... .r2- */
                /* 0530 */  0x40, 0x2C, 0x27, 0x88, 0x80, 0xFC, 0xFF, 0x07   /* @,'..... */
            })
        }

        Device (WMI3)
        {
            Name (_HID, EisaId ("PNP0C14") /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_WDG, /**** Is ResourceTemplate, but EndTag not at buffer end ****/ Buffer (0x3C)
            {
                /* 0000 */  0x79, 0x36, 0x4D, 0x8F, 0x9E, 0x74, 0x79, 0x44,  /* y6M..tyD */
                /* 0008 */  0x9B, 0x16, 0xC6, 0x26, 0x01, 0xFD, 0x25, 0xF0,  /* ...&..%. */
                /* 0010 */  0x41, 0x42, 0x01, 0x02, 0x69, 0xE8, 0xD2, 0x85,  /* AB..i... */
                /* 0018 */  0x5A, 0x36, 0xCE, 0x4A, 0xA4, 0xD3, 0xCD, 0x69,  /* Z6.J...i */
                /* 0020 */  0x2B, 0x16, 0x98, 0xA0, 0x41, 0x43, 0x01, 0x02,  /* +...AC.. */
                /* 0028 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,  /* !...f... */
                /* 0030 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,  /* ......). */
                /* 0038 */  0x42, 0x43, 0x01, 0x00                           /* BC.. */
            })
            Method (WMAB, 3, NotSerialized)
            {
                CreateByteField (Arg2, 0x00, ASS0)
                CreateWordField (Arg2, 0x01, ASS1)
                CreateByteField (Arg2, 0x03, ASS2)
                Acquire (\_SB.WMI1.MWMI, 0xFFFF)
                Store (ASS0, \WASB)
                Store (ASS1, \WASI)
                Store (ASS2, \WASD)
                \WMIS (0x0B, 0x00)
                Store (\WASS, Local0)
                Release (\_SB.WMI1.MWMI)
                Return (Local0)
            }

            Method (WMAC, 3, NotSerialized)
            {
                CreateByteField (Arg2, 0x00, ASS0)
                CreateWordField (Arg2, 0x01, ASS1)
                Acquire (\_SB.WMI1.MWMI, 0xFFFF)
                Store (ASS0, \WASB)
                Store (ASS1, \WASI)
                \WMIS (0x0C, Arg1)
                Store (\WASS, Local0)
                Release (\_SB.WMI1.MWMI)
                Return (Local0)
            }

            Name (WQBC, Buffer (0x040A)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  /* FOMB.... */
                /* 0008 */  0xFA, 0x03, 0x00, 0x00, 0x32, 0x12, 0x00, 0x00,  /* ....2... */
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  /* DS...}.T */
                /* 0018 */  0x98, 0xC3, 0x88, 0x00, 0x01, 0x06, 0x18, 0x42,  /* .......B */
                /* 0020 */  0x10, 0x07, 0x10, 0x8A, 0x0D, 0x21, 0x02, 0x0B,  /* .....!.. */
                /* 0028 */  0x83, 0x50, 0x50, 0x18, 0x14, 0xA0, 0x45, 0x41,  /* .PP...EA */
                /* 0030 */  0xC8, 0x05, 0x14, 0x95, 0x02, 0x21, 0xC3, 0x02,  /* .....!.. */
                /* 0038 */  0x14, 0x0B, 0x70, 0x2E, 0x40, 0xBA, 0x00, 0xE5,  /* ..p.@... */
                /* 0040 */  0x28, 0x72, 0x0C, 0x22, 0x02, 0xF7, 0xEF, 0x0F,  /* (r.".... */
                /* 0048 */  0x31, 0x10, 0x88, 0x14, 0x40, 0x48, 0x28, 0x84,  /* 1...@H(. */
                /* 0050 */  0x44, 0x00, 0x53, 0x21, 0x70, 0x84, 0xA0, 0x5F,  /* D.S!p.._ */
                /* 0058 */  0x01, 0x08, 0x1D, 0x0A, 0x90, 0x29, 0xC0, 0xA0,  /* .....).. */
                /* 0060 */  0x00, 0xA7, 0x08, 0x22, 0x88, 0xD2, 0xB2, 0x00,  /* ...".... */
                /* 0068 */  0xDD, 0x02, 0x7C, 0x0B, 0xD0, 0x0E, 0x21, 0xB4,  /* ..|...!. */
                /* 0070 */  0x58, 0x07, 0x11, 0x21, 0xD2, 0x31, 0x34, 0x29,  /* X..!.14) */
                /* 0078 */  0x40, 0xA2, 0x00, 0x8B, 0x02, 0x64, 0xC3, 0xC8,  /* @....d.. */
                /* 0080 */  0x36, 0x22, 0x99, 0x87, 0x45, 0x0E, 0x02, 0x25,  /* 6"..E..% */
                /* 0088 */  0x66, 0x10, 0x28, 0x9D, 0xE0, 0xB2, 0x89, 0xAB,  /* f.(..... */
                /* 0090 */  0x41, 0x9C, 0x4C, 0x94, 0xF3, 0x88, 0x92, 0xE0,  /* A.L..... */
                /* 0098 */  0xA8, 0x0E, 0x22, 0x42, 0xEC, 0x72, 0x05, 0x48,  /* .."B.r.H */
                /* 00A0 */  0x1E, 0x80, 0x34, 0x4F, 0x4C, 0xD6, 0xE7, 0xA0,  /* ..4OL... */
                /* 00A8 */  0x91, 0xB1, 0x11, 0xF0, 0x94, 0x1A, 0x40, 0x58,  /* ......@X */
                /* 00B0 */  0xA0, 0x75, 0x2A, 0xE0, 0x7A, 0x0D, 0x43, 0x3D,  /* .u*.z.C= */
                /* 00B8 */  0x80, 0x48, 0xCE, 0x58, 0x51, 0xC0, 0xF6, 0x3A,  /* .H.XQ..: */
                /* 00C0 */  0x11, 0x8D, 0xEA, 0x40, 0x99, 0x24, 0x38, 0xD4,  /* ...@.$8. */
                /* 00C8 */  0x30, 0x3D, 0xB5, 0xE6, 0x27, 0xA6, 0x89, 0x9C,  /* 0=..'... */
                /* 00D0 */  0x5A, 0xD3, 0x43, 0x16, 0x24, 0x93, 0x36, 0x14,  /* Z.C.$.6. */
                /* 00D8 */  0xD4, 0xD8, 0x3D, 0xAD, 0x93, 0xF2, 0x4C, 0x23,  /* ..=...L# */
                /* 00E0 */  0x1E, 0x94, 0x61, 0x12, 0x78, 0x14, 0x0C, 0x8D,  /* ..a.x... */
                /* 00E8 */  0x13, 0x94, 0x75, 0x22, 0xA0, 0x03, 0xE5, 0x80,  /* ..u".... */
                /* 00F0 */  0x27, 0xE1, 0x39, 0x16, 0x2F, 0x40, 0xF8, 0x88,  /* '.9./@.. */
                /* 00F8 */  0xC9, 0xB4, 0x4D, 0xE0, 0x33, 0x81, 0x87, 0x79,  /* ..M.3..y */
                /* 0100 */  0xCC, 0xD8, 0x11, 0x85, 0x0B, 0x78, 0x3E, 0xC7,  /* .....x>. */
                /* 0108 */  0x10, 0x39, 0xEE, 0xA1, 0xC6, 0x38, 0x8A, 0xC8,  /* .9...8.. */
                /* 0110 */  0x47, 0x60, 0x24, 0x03, 0xC5, 0x2B, 0x08, 0x89,  /* G`$..+.. */
                /* 0118 */  0x80, 0xF8, 0x76, 0x70, 0x70, 0x91, 0xFC, 0xFF,  /* ..vpp... */
                /* 0120 */  0x47, 0x89, 0x11, 0x2A, 0xC6, 0xDB, 0x00, 0x6E,  /* G..*...n */
                /* 0128 */  0x5E, 0x09, 0x8A, 0x1E, 0x07, 0x4A, 0x06, 0x84,  /* ^....J.. */
                /* 0130 */  0x3C, 0x0A, 0xB0, 0x7A, 0x28, 0x20, 0x04, 0x16,  /* <..z( .. */
                /* 0138 */  0x27, 0x40, 0xE3, 0x38, 0x05, 0xD3, 0x99, 0x00,  /* '@.8.... */
                /* 0140 */  0x6D, 0x02, 0xBC, 0x09, 0x30, 0x27, 0xC0, 0x16,  /* m...0'.. */
                /* 0148 */  0x86, 0x80, 0x82, 0x9C, 0x59, 0x94, 0x20, 0x11,  /* ....Y. . */
                /* 0150 */  0x42, 0x31, 0x88, 0x0A, 0x05, 0x18, 0x43, 0x14,  /* B1....C. */
                /* 0158 */  0xCA, 0x3B, 0x41, 0x8C, 0xCA, 0x20, 0x74, 0x82,  /* .;A.. t. */
                /* 0160 */  0x08, 0x14, 0x3D, 0x78, 0x98, 0xD6, 0x40, 0x74,  /* ..=x..@t */
                /* 0168 */  0x89, 0xF0, 0xC8, 0xB1, 0x47, 0x00, 0x9F, 0x19,  /* ....G... */
                /* 0170 */  0xCE, 0xE9, 0x04, 0x1F, 0x01, 0xDE, 0x16, 0x4C,  /* .......L */
                /* 0178 */  0xE0, 0x79, 0xBF, 0x24, 0x1C, 0x6A, 0xD8, 0x03,  /* .y.$.j.. */
                /* 0180 */  0x8E, 0x1A, 0xE3, 0x28, 0x12, 0x58, 0xD0, 0x33,  /* ...(.X.3 */
                /* 0188 */  0x42, 0x16, 0x40, 0x14, 0x09, 0x1E, 0x75, 0x64,  /* B.@...ud */
                /* 0190 */  0xF0, 0xE1, 0xC0, 0x23, 0x3B, 0x72, 0xCF, 0xF0,  /* ...#;r.. */
                /* 0198 */  0x04, 0x82, 0x1C, 0xC2, 0x11, 0x3C, 0x36, 0x3C,  /* .....<6< */
                /* 01A0 */  0x15, 0x78, 0x0C, 0xEC, 0xBA, 0xE0, 0x73, 0x80,  /* .x....s. */
                /* 01A8 */  0x8F, 0x09, 0x78, 0xD7, 0x80, 0x9A, 0xF3, 0xD3,  /* ..x..... */
                /* 01B0 */  0x01, 0x9B, 0x72, 0x38, 0xCC, 0x70, 0x3D, 0xFD,  /* ..r8.p=. */
                /* 01B8 */  0x70, 0x27, 0x70, 0xD2, 0x06, 0x64, 0xB3, 0xF3,  /* p'p..d.. */
                /* 01C0 */  0xE0, 0x70, 0xE3, 0x3C, 0x99, 0x23, 0x2B, 0x55,  /* .p.<.#+U */
                /* 01C8 */  0x80, 0xD9, 0x13, 0x82, 0x4E, 0x13, 0x3E, 0x73,  /* ....N.>s */
                /* 01D0 */  0xB0, 0xBB, 0xC0, 0xF9, 0xF4, 0x0C, 0x49, 0xE4,  /* ......I. */
                /* 01D8 */  0x0F, 0x02, 0x35, 0x32, 0x43, 0xFB, 0x2C, 0xF0,  /* ..52C.,. */
                /* 01E0 */  0xEA, 0x61, 0xC8, 0x87, 0x85, 0xC3, 0x62, 0x62,  /* .a....bb */
                /* 01E8 */  0xCF, 0x1E, 0x74, 0x3C, 0xE0, 0x3F, 0x25, 0x3C,  /* ..t<.?%< */
                /* 01F0 */  0x6C, 0x78, 0xFA, 0x9E, 0xAF, 0x09, 0xA2, 0x3D,  /* lx.....= */
                /* 01F8 */  0x8F, 0x80, 0xE1, 0xFF, 0x7F, 0x1E, 0x81, 0x39,  /* .......9 */
                /* 0200 */  0x9C, 0x07, 0x84, 0x27, 0x07, 0x76, 0x80, 0xC0,  /* ...'.v.. */
                /* 0208 */  0x1C, 0x48, 0x80, 0xC9, 0xF9, 0x02, 0x77, 0x28,  /* .H....w( */
                /* 0210 */  0xF0, 0x10, 0xF8, 0x00, 0x1E, 0x25, 0xCE, 0xD1,  /* .....%.. */
                /* 0218 */  0x4A, 0x67, 0x86, 0x3C, 0xB9, 0x80, 0x2D, 0xFB,  /* Jg.<..-. */
                /* 0220 */  0x1B, 0x40, 0x07, 0x0F, 0xE7, 0x06, 0x91, 0x8D,  /* .@...... */
                /* 0228 */  0x57, 0x80, 0x09, 0x74, 0x38, 0xB1, 0x1E, 0x20,  /* W..t8..  */
                /* 0230 */  0x4D, 0x14, 0x0C, 0x04, 0xD3, 0xD3, 0x6B, 0x00,  /* M.....k. */
                /* 0238 */  0x3E, 0x15, 0x38, 0x37, 0x89, 0x92, 0x0F, 0x8C,  /* >.87.... */
                /* 0240 */  0xC2, 0x39, 0xEB, 0x79, 0x84, 0x82, 0x18, 0xD0,  /* .9.y.... */
                /* 0248 */  0x41, 0x20, 0xE4, 0xE4, 0xA0, 0x80, 0x3A, 0xAA,  /* A ....:. */
                /* 0250 */  0xF8, 0x3C, 0x72, 0xAA, 0x0F, 0x3D, 0x9E, 0x94,  /* .<r..=.. */
                /* 0258 */  0x47, 0xE1, 0xAB, 0x8A, 0x0F, 0x21, 0x3E, 0x4F,  /* G....!>O */
                /* 0260 */  0x78, 0xF4, 0x3E, 0x29, 0xF0, 0xEF, 0x8C, 0xAF,  /* x.>).... */
                /* 0268 */  0x0E, 0x46, 0xB7, 0x9A, 0xE3, 0x0A, 0x0A, 0xCC,  /* .F...... */
                /* 0270 */  0x67, 0x11, 0x4E, 0x50, 0xD7, 0x6D, 0x01, 0xFA,  /* g.NP.m.. */
                /* 0278 */  0x29, 0xE0, 0x08, 0x3C, 0x94, 0x77, 0x92, 0xC7,  /* )..<.w.. */
                /* 0280 */  0x90, 0x04, 0xF5, 0x9D, 0x16, 0x40, 0x01, 0xE4,  /* .....@.. */
                /* 0288 */  0x9B, 0x81, 0x4F, 0x02, 0x21, 0xFE, 0xFF, 0x4F,  /* ..O.!..O */
                /* 0290 */  0x07, 0x1E, 0xC3, 0xC3, 0x80, 0xD1, 0x8C, 0xCE,  /* ........ */
                /* 0298 */  0xC3, 0x4F, 0x16, 0x15, 0x77, 0xB2, 0x14, 0xC4,  /* .O..w... */
                /* 02A0 */  0x93, 0x75, 0x94, 0xC9, 0xA2, 0x67, 0xE2, 0xAB,  /* .u...g.. */
                /* 02A8 */  0x85, 0x27, 0x74, 0x4A, 0x41, 0xCE, 0xD1, 0x13,  /* .'tJA... */
                /* 02B0 */  0xF6, 0x55, 0x04, 0xD6, 0xF9, 0x20, 0xE4, 0x8B,  /* .U... .. */
                /* 02B8 */  0x81, 0xA7, 0x61, 0x38, 0x4F, 0x96, 0xC3, 0x79,  /* ..a8O..y */
                /* 02C0 */  0xB2, 0x7C, 0x2C, 0xBE, 0x6A, 0xC0, 0x1F, 0x2D,  /* .|,.j..- */
                /* 02C8 */  0x96, 0xA0, 0xC0, 0xD9, 0x82, 0x1C, 0x1E, 0x13,  /* ........ */
                /* 02D0 */  0x6F, 0x54, 0xF4, 0x46, 0xE4, 0xE1, 0xF1, 0xCB,  /* oT.F.... */
                /* 02D8 */  0x81, 0xE7, 0xF3, 0x8C, 0x70, 0x94, 0x6F, 0x12,  /* ....p.o. */
                /* 02E0 */  0x38, 0x8C, 0xC7, 0x12, 0x0F, 0xD1, 0x97, 0x23,  /* 8......# */
                /* 02E8 */  0x58, 0x13, 0x39, 0x69, 0xDF, 0x16, 0x4E, 0x36,  /* X.9i..N6 */
                /* 02F0 */  0xE8, 0x4B, 0x10, 0xBB, 0x1C, 0x01, 0xBF, 0x88,  /* .K...... */
                /* 02F8 */  0x26, 0x86, 0xC1, 0x22, 0x2D, 0x45, 0x11, 0x17,  /* &.."-E.. */
                /* 0300 */  0x45, 0x61, 0x7C, 0xC5, 0x82, 0xFD, 0xFF, 0xBF,  /* Ea|..... */
                /* 0308 */  0x62, 0x01, 0x16, 0x04, 0x0F, 0x1B, 0x34, 0x87,  /* b.....4. */
                /* 0310 */  0x83, 0x97, 0x1E, 0x36, 0x6B, 0x38, 0x07, 0x99,  /* ...6k8.. */
                /* 0318 */  0xD3, 0xF1, 0x48, 0x4E, 0x1B, 0xC6, 0x1D, 0x0B,  /* ..HN.... */
                /* 0320 */  0xFE, 0x9D, 0xEA, 0xA9, 0xCA, 0xD3, 0x8A, 0xF2,  /* ........ */
                /* 0328 */  0x64, 0xF5, 0x7A, 0xE5, 0x63, 0x96, 0xA1, 0xCE,  /* d.z.c... */
                /* 0330 */  0xE0, 0x1D, 0xCB, 0xB7, 0x3C, 0x4F, 0x21, 0x4A,  /* ....<O!J */
                /* 0338 */  0x9C, 0x97, 0x2D, 0x76, 0xC7, 0x32, 0x48, 0x50,  /* ..-v.2HP */
                /* 0340 */  0x23, 0x3F, 0x68, 0x31, 0x94, 0xE0, 0xF1, 0xDE,  /* #?h1.... */
                /* 0348 */  0xB1, 0x00, 0x6F, 0xFF, 0xFF, 0x3B, 0x16, 0x60,  /* ..o..;.` */
                /* 0350 */  0xFC, 0x04, 0xC1, 0x09, 0x7C, 0xC7, 0x02, 0x1C,  /* ....|... */
                /* 0358 */  0xC5, 0x7E, 0x37, 0xE8, 0x4A, 0x45, 0xEE, 0x58,  /* .~7.JE.X */
                /* 0360 */  0x28, 0x0E, 0xAB, 0xB9, 0x63, 0x41, 0x9C, 0x28,  /* (...cA.( */
                /* 0368 */  0xE6, 0x8A, 0x05, 0x86, 0xFF, 0xFF, 0x15, 0x0B,  /* ........ */
                /* 0370 */  0xE0, 0x75, 0xC0, 0x2B, 0x16, 0x68, 0xFE, 0xFF,  /* .u.+.h.. */
                /* 0378 */  0x57, 0x2C, 0xF0, 0x5E, 0x8E, 0x80, 0xDF, 0x09,  /* W,.^.... */
                /* 0380 */  0xD1, 0x77, 0x0D, 0x7E, 0x9A, 0xB6, 0xA2, 0xBB,  /* .w.~.... */
                /* 0388 */  0x06, 0x94, 0x19, 0xBE, 0x07, 0xF9, 0xB0, 0x13,  /* ........ */
                /* 0390 */  0x2C, 0xD2, 0xA3, 0x8D, 0x6F, 0x49, 0xE1, 0x7C,  /* ,...oI.| */
                /* 0398 */  0xDB, 0x00, 0xD8, 0xF2, 0xFF, 0xBF, 0x6D, 0x00,  /* ......m. */
                /* 03A0 */  0x4C, 0x19, 0xBF, 0x6F, 0x1B, 0xC0, 0x4F, 0xA1,  /* L..o..O. */
                /* 03A8 */  0x4D, 0x9F, 0x1A, 0x8D, 0x5A, 0x35, 0x28, 0x53,  /* M...Z5(S */
                /* 03B0 */  0xA3, 0x4C, 0x83, 0x5A, 0x7D, 0x2A, 0x35, 0x66,  /* .L.Z}*5f */
                /* 03B8 */  0x4C, 0xC9, 0xC1, 0xCE, 0x77, 0x0C, 0x2A, 0x6C,  /* L...w.*l */
                /* 03C0 */  0x65, 0x1A, 0x9A, 0x63, 0x81, 0xD0, 0x10, 0xC7,  /* e..c.... */
                /* 03C8 */  0x26, 0x19, 0x01, 0x51, 0x22, 0x10, 0x01, 0x59,  /* &..Q"..Y */
                /* 03D0 */  0xFD, 0x6F, 0x42, 0x40, 0xCE, 0x02, 0x22, 0x20,  /* .oB@.."  */
                /* 03D8 */  0x2B, 0x58, 0x9A, 0xC0, 0x9D, 0xFF, 0xD8, 0x28,  /* +X.....( */
                /* 03E0 */  0x40, 0xA2, 0x02, 0x84, 0x29, 0x7D, 0x93, 0x09,  /* @...)}.. */
                /* 03E8 */  0xD4, 0xB2, 0x41, 0x04, 0xF4, 0xFF, 0x3F, 0x42,  /* ..A...?B */
                /* 03F0 */  0xD9, 0x00, 0x62, 0x82, 0x41, 0x04, 0x64, 0x91,  /* ..b.A.d. */
                /* 03F8 */  0x3E, 0x80, 0x98, 0x62, 0x10, 0x01, 0x59, 0xDD,  /* >..b..Y. */
                /* 0400 */  0xA3, 0x40, 0x40, 0xD6, 0x0A, 0x22, 0x20, 0xFF,  /* .@@.." . */
                /* 0408 */  0xFF, 0x01                                       /* .. */
            })
        }

        Scope (\_SB.PCI0.LPC.EC.HKEY)
        {
            Mutex(BFWM, 0)
            Method (MHCF, 1, NotSerialized)
            {
                Store (\BFWC (Arg0), Local0)
                Return (Local0)
            }

            Method (MHPF, 1, NotSerialized)
            {
                Name (RETB, Buffer (0x25) {})
                Acquire (BFWM, 0xFFFF)
                If (LLessEqual (SizeOf (Arg0), 0x25))
                {
                    Store (Arg0, \BFWB)
                    If (\BFWP ())
                    {
                        \_SB.PCI0.LPC.EC.CHKS ()
                        \BFWL ()
                    }

                    Store (\BFWB, RETB) /* \_SB_.PCI0.LPC_.EC__.HKEY.MHPF.RETB */
                }

                Release (BFWM)
                Return (RETB) /* \_SB_.PCI0.LPC_.EC__.HKEY.MHPF.RETB */
            }

            Method (MHIF, 1, NotSerialized)
            {
                Name (RETB, Buffer (0x0A) {})
                Acquire (BFWM, 0xFFFF)
                \BFWG (Arg0)
                Store (\BFWB, RETB) /* \_SB_.PCI0.LPC_.EC__.HKEY.MHIF.RETB */
                Release (BFWM)
                Return (RETB) /* \_SB_.PCI0.LPC_.EC__.HKEY.MHIF.RETB */
            }

            Method (MHDM, 1, NotSerialized)
            {
                \BDMC (Arg0)
            }
        }

        Scope (\_SB.PCI0.LPC.EC.HKEY)
        {
            Method (PSSG, 1, NotSerialized)
            {
                Return (\PSIF (0x00, 0x00))
            }

            Method (PSSS, 1, NotSerialized)
            {
                Return (\PSIF (0x01, Arg0))
            }

            Method (PSBS, 1, NotSerialized)
            {
                Return (\PSIF (0x02, Arg0))
            }

            Method (BICG, 1, NotSerialized)
            {
                Return (\PSIF (0x03, Arg0))
            }

            Method (BICS, 1, NotSerialized)
            {
                Return (\PSIF (0x04, Arg0))
            }

            Method (BCTG, 1, NotSerialized)
            {
                Return (\PSIF (0x05, Arg0))
            }

            Method (BCCS, 1, NotSerialized)
            {
                Return (\PSIF (0x06, Arg0))
            }

            Method (BCSG, 1, NotSerialized)
            {
                Return (\PSIF (0x07, Arg0))
            }

            Method (BCSS, 1, NotSerialized)
            {
                Return (\PSIF (0x08, Arg0))
            }

            Method (BDSG, 1, NotSerialized)
            {
                Return (\PSIF (0x09, Arg0))
            }

            Method (BDSS, 1, NotSerialized)
            {
                Return (\PSIF (0x0A, Arg0))
            }
        }

        Scope (\_SB.PCI0.LPC.EC.HKEY)
        {
            Method (GILN, 0, NotSerialized)
            {
                Return (Or (0x02, \ILNF))
            }

            Method (SILN, 1, NotSerialized)
            {
                If (LEqual (0x01, Arg0))
                {
                    Store (0x01, \ILNF)
                    Store (0x00, BBLS) /* \_SB_.PCI0.LPC_.EC__.BBLS */
                    Return (0x00)
                }
                Else
                {
                    If (LEqual (0x02, Arg0))
                    {
                        Store (0x00, \ILNF)
                        Store (0x01, BBLS) /* \_SB_.PCI0.LPC_.EC__.BBLS */
                        Return (0x00)
                    }
                    Else
                    {
                        Return (0x01)
                    }
                }
            }

            Method (GLSI, 0, NotSerialized)
            {
                If (\H8DR)
                {
                    Return (Add (0x02, \_SB.PCI0.LPC.EC.HPLD))
                }
                Else
                {
                    If (And (\RBEC (0x46), 0x04))
                    {
                        Return (0x03)
                    }
                    Else
                    {
                        Return (0x02)
                    }
                }
            }
        }

        Scope (\_SB.PCI0.LPC.EC.HKEY)
        {
            Method (GDLN, 0, NotSerialized)
            {
                Return (Or (0x02, \PLUX))
            }

            Method (SDLN, 1, NotSerialized)
            {
                If (LEqual (0x01, Arg0))
                {
                    Store (0x01, \PLUX)
                    Return (0x00)
                }
                Else
                {
                    If (LEqual (0x02, Arg0))
                    {
                        Store (0x00, \PLUX)
                        Return (0x00)
                    }
                    Else
                    {
                        Return (0x01)
                    }
                }
            }
        }

        Name (\VHCC, 0x00)
        Scope (\_SB.PCI0.PEG.VID)
        {
            Method (ISOP, 0, NotSerialized)
            {
                Return (LAnd (VDSP, LAnd (VIGD, VDSC)))
            }
        }

        Scope (\_SB.PCI0)
        {
            Name (OTM, "OTMACPI 2009-Nov-12 18:18:51")
        }

        Scope (\_SB.PCI0.PEG.VID)
        {
            Method (GOBT, 1, NotSerialized)
            {
                Name (OPVK, Buffer (0xE6)
                {
                    /* 0000 */  0xE4, 0xB8, 0x4F, 0x51, 0x50, 0x72, 0x8A, 0xC2,  /* ..OQPr.. */
                    /* 0008 */  0x4B, 0x56, 0xE6, 0x00, 0x00, 0x00, 0x01, 0x00,  /* KV...... */
                    /* 0010 */  0x31, 0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35,  /* 14859745 */
                    /* 0018 */  0x36, 0x39, 0x38, 0x35, 0x47, 0x65, 0x6E, 0x75,  /* 6985Genu */
                    /* 0020 */  0x69, 0x6E, 0x65, 0x20, 0x4E, 0x56, 0x49, 0x44,  /* ine NVID */
                    /* 0028 */  0x49, 0x41, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69,  /* IA Certi */
                    /* 0030 */  0x66, 0x69, 0x65, 0x64, 0x20, 0x4F, 0x70, 0x74,  /* fied Opt */
                    /* 0038 */  0x69, 0x6D, 0x75, 0x73, 0x20, 0x52, 0x65, 0x61,  /* imus Rea */
                    /* 0040 */  0x64, 0x79, 0x20, 0x4D, 0x6F, 0x74, 0x68, 0x65,  /* dy Mothe */
                    /* 0048 */  0x72, 0x62, 0x6F, 0x61, 0x72, 0x64, 0x20, 0x66,  /* rboard f */
                    /* 0050 */  0x6F, 0x72, 0x20, 0x36, 0x38, 0x38, 0x33, 0x32,  /* or 68832 */
                    /* 0058 */  0x35, 0x6E, 0x6F, 0x7A, 0x6F, 0x6D, 0x69, 0x32,  /* 5nozomi2 */
                    /* 0060 */  0x31, 0x44, 0x35, 0x20, 0x20, 0x20, 0x20, 0x20,  /* 1D5      */
                    /* 0068 */  0x2D, 0x20, 0x40, 0x4A, 0x20, 0x24, 0x55, 0x27,  /* - @J $U' */
                    /* 0070 */  0x5C, 0x22, 0x54, 0x20, 0x29, 0x5F, 0x47, 0x42,  /* \"T )_GB */
                    /* 0078 */  0x20, 0x50, 0x2F, 0x41, 0x4F, 0x5C, 0x37, 0x22,  /*  P/AO\7" */
                    /* 0080 */  0x3D, 0x46, 0x37, 0x39, 0x4B, 0x37, 0x2B, 0x5F,  /* =F79K7+_ */
                    /* 0088 */  0x3F, 0x4B, 0x48, 0x5C, 0x5F, 0x46, 0x58, 0x48,  /* ?KH\_FXH */
                    /* 0090 */  0x5F, 0x44, 0x57, 0x32, 0x26, 0x4A, 0x46, 0x50,  /* _DW2&JFP */
                    /* 0098 */  0x52, 0x25, 0x24, 0x2F, 0x46, 0x24, 0x20, 0x2D,  /* R%$/F$ - */
                    /* 00A0 */  0x20, 0x43, 0x6F, 0x70, 0x79, 0x72, 0x69, 0x67,  /*  Copyrig */
                    /* 00A8 */  0x68, 0x74, 0x20, 0x32, 0x30, 0x31, 0x30, 0x20,  /* ht 2010  */
                    /* 00B0 */  0x4E, 0x56, 0x49, 0x44, 0x49, 0x41, 0x20, 0x43,  /* NVIDIA C */
                    /* 00B8 */  0x6F, 0x72, 0x70, 0x6F, 0x72, 0x61, 0x74, 0x69,  /* orporati */
                    /* 00C0 */  0x6F, 0x6E, 0x20, 0x41, 0x6C, 0x6C, 0x20, 0x52,  /* on All R */
                    /* 00C8 */  0x69, 0x67, 0x68, 0x74, 0x73, 0x20, 0x52, 0x65,  /* ights Re */
                    /* 00D0 */  0x73, 0x65, 0x72, 0x76, 0x65, 0x64, 0x2D, 0x31,  /* served-1 */
                    /* 00D8 */  0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35, 0x36,  /* 48597456 */
                    /* 00E0 */  0x39, 0x38, 0x35, 0x28, 0x52, 0x29               /* 985(R) */
                })
                CreateWordField (Arg0, 0x02, USRG)
                If (LEqual (USRG, 0x564B))
                {
                    Return (OPVK) /* \_SB_.PCI0.PEG_.VID_.GOBT.OPVK */
                }

                Return (Zero)
            }
        }

        Scope (\_SB.PCI0.PEG.VID)
        {
            Name (OMPR, 0x02)
            Name (HDAS, 0x00)
            Method (NVOP, 4, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Store ("------- NV OPTIMUS DSM --------", Debug)
                If (LNotEqual (Arg1, 0x0100))
                {
                    Return (0x80000001)
                }

                While (One)
                {
                    Store (ToInteger (Arg2), _T_0) /* \_SB_.PCI0.PEG_.VID_.NVOP._T_0 */
                    If (LEqual (_T_0, 0x00))
                    {
                        Store (Buffer (0x04)
                            {
                                 0x00, 0x00, 0x00, 0x00                           /* .... */
                            }, Local0)
                        Divide (0x00, 0x08, Local2, Local1)
                        ShiftLeft (0x01, Local2, Local2)
                        Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                        Divide (0x1A, 0x08, Local2, Local1)
                        ShiftLeft (0x01, Local2, Local2)
                        Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                        Divide (0x1B, 0x08, Local2, Local1)
                        ShiftLeft (0x01, Local2, Local2)
                        Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                        Divide (0x10, 0x08, Local2, Local1)
                        ShiftLeft (0x01, Local2, Local2)
                        Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                        Return (Local0)
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x1A))
                        {
                            CreateField (Arg3, 0x18, 0x02, OPCE)
                            CreateField (Arg3, 0x00, 0x01, FLCH)
                            If (ToInteger (FLCH))
                            {
                                Store (OPCE, OMPR) /* \_SB_.PCI0.PEG_.VID_.OMPR */
                            }

                            Store (Buffer (0x04)
                                {
                                     0x00, 0x00, 0x00, 0x00                           /* .... */
                                }, Local0)
                            CreateField (Local0, 0x00, 0x01, OPEN)
                            CreateField (Local0, 0x03, 0x02, CGCS)
                            CreateField (Local0, 0x06, 0x01, SHPC)
                            CreateField (Local0, 0x18, 0x03, DGPC)
                            CreateField (Local0, 0x1B, 0x02, HDAC)
                            Store (One, OPEN) /* \_SB_.PCI0.PEG_.VID_.NVOP.OPEN */
                            Store (One, SHPC) /* \_SB_.PCI0.PEG_.VID_.NVOP.SHPC */
                            Store (One, DGPC) /* \_SB_.PCI0.PEG_.VID_.NVOP.DGPC */
                            If (\_SB.PCI0.PEG.VID._STA ())
                            {
                                Store (0x03, CGCS) /* \_SB_.PCI0.PEG_.VID_.NVOP.CGCS */
                            }

                            Store (0x02, HDAC) /* \_SB_.PCI0.PEG_.VID_.NVOP.HDAC */
                            Return (Local0)
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x1B))
                            {
                                CreateField (Arg3, 0x00, 0x01, HDAU)
                                CreateField (Arg3, 0x01, 0x01, HDAR)
                                Store (Buffer (0x04)
                                    {
                                         0x00, 0x00, 0x00, 0x00                           /* .... */
                                    }, Local0)
                                CreateField (Local0, 0x02, 0x02, RQGS)
                                CreateField (Local0, 0x04, 0x01, PWST)
                                Store (One, PWST) /* \_SB_.PCI0.PEG_.VID_.NVOP.PWST */
                                Store (Zero, RQGS) /* \_SB_.PCI0.PEG_.VID_.NVOP.RQGS */
                                If (ToInteger (HDAR))
                                {
                                    Store (ToInteger (HDAU), HDAS) /* \_SB_.PCI0.PEG_.VID_.HDAS */
                                }

                                Return (Local0)
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x10))
                                {
                                    Return (\_SB.PCI0.PEG.VID.GOBT (Arg3))
                                }
                            }
                        }
                    }

                    Break
                }

                Return (0x80000002)
            }
        }

        Scope (\)
        {
            Method (CMPB, 2, NotSerialized)
            {
                Store (SizeOf (Arg0), Local1)
                If (LNotEqual (Local1, SizeOf (Arg1)))
                {
                    Return (0x00)
                }

                Store (0x00, Local0)
                While (LLess (Local0, Local1))
                {
                    If (LNotEqual (DerefOf (Index (Arg0, Local0)), DerefOf (Index (Arg1, Local0
                        ))))
                    {
                        Return (0x00)
                    }

                    Increment (Local0)
                }

                Return (0x01)
            }
        }

        Scope (\_SB.PCI0.PEG.VID)
        {
            Name (CPPC, 0x00)
            Method (NVPS, 4, Serialized)
            {
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Store ("------- NV GPS DSM --------", Debug)
                While (One)
                {
                    Store (ToInteger (Arg2), _T_0) /* \_SB_.PCI0.PEG_.VID_.NVPS._T_0 */
                    If (LEqual (_T_0, 0x00))
                    {
                        Store (Buffer (0x08)
                            {
                                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                            }, Local0)
                        Store (Buffer (0x07)
                            {
                                 0x00, 0x20, 0x21, 0x22, 0x23, 0x2A, 0xFF         /* . !"#*. */
                            }, Local3)
                        Store (Zero, Local4)
                        Store (DerefOf (Index (Local3, Local4)), Local5)
                        While (LNotEqual (Local5, 0xFF))
                        {
                            Divide (Local5, 0x08, Local2, Local1)
                            ShiftLeft (0x01, Local2, Local2)
                            Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                            Increment (Local4)
                            Store (DerefOf (Index (Local3, Local4)), Local5)
                        }

                        Return (Local0)
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x20))
                        {
                            Store (Buffer (0x04)
                                {
                                     0x00, 0x00, 0x00, 0x00                           /* .... */
                                }, Local0)
                            CreateField (Local0, 0x18, 0x01, CUIT)
                            CreateField (Local0, 0x1E, 0x01, PSER)
                            Store (One, CUIT) /* \_SB_.PCI0.PEG_.VID_.NVPS.CUIT */
                            Store (One, PSER) /* \_SB_.PCI0.PEG_.VID_.NVPS.PSER */
                            Return (Local0)
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x21))
                            {
                                Return (\_PR.CPU0._PSS) /* External reference */
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x22))
                                {
                                    CreateField (Arg3, 0x00, 0x08, PPCV)
                                    Store (PPCV, CPPC) /* \_SB_.PCI0.PEG_.VID_.CPPC */
                                    \PNTF (0x80)
                                    Return (Buffer (0x04)
                                    {
                                         0x00, 0x00, 0x00, 0x00                           /* .... */
                                    })
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x23))
                                    {
                                        Store (Buffer (0x04)
                                            {
                                                 0x00, 0x00, 0x00, 0x00                           /* .... */
                                            }, Local0)
                                        Store (CPPC, Index (Local0, 0x00))
                                        Return (Local0)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x2A))
                                        {
                                            Store (Buffer (0x24)
                                                {
                                                    /* 0000 */  0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00,  /* ........ */
                                                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                                    /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                                    /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                                                    /* 0020 */  0x00, 0x00, 0x00, 0x00                           /* .... */
                                                }, Local0)
                                            Store (DerefOf (Index (Arg3, 0x00)), Index (Local0, 0x00))
                                            CreateField (Arg3, 0x00, 0x04, QTYP)
                                            While (One)
                                            {
                                                Store (ToInteger (QTYP), _T_1) /* \_SB_.PCI0.PEG_.VID_.NVPS._T_1 */
                                                If (LEqual (_T_1, 0x00))
                                                {
                                                    Store (\_SB.PCI0.LPC.EC.TMP0, Local1)
                                                    Store (And (Local1, 0xFF), Index (Local0, 0x0C))
                                                    Return (Local0)
                                                }
                                                Else
                                                {
                                                    If (LEqual (_T_1, 0x01))
                                                    {
                                                        Store (0x08, Index (Local0, 0x0D))
                                                        Store (0x03, Index (Local0, 0x01))
                                                        Return (Local0)
                                                    }
                                                    Else
                                                    {
                                                        If (LEqual (_T_1, 0x02))
                                                        {
                                                            Store (0x50, Local1)
                                                            Store (0x00, Local2)
                                                            Store (Local1, \_SB.PCI0.LPC.EC.HIID)
                                                            Store (\_SB.PCI0.LPC.EC.GP50, Local3)
                                                            Store (Local2, \_SB.PCI0.LPC.EC.HIID)
                                                            If (LEqual (And (Local3, 0x01), Zero))
                                                            {
                                                                Store (0x03, Index (Local0, 0x01))
                                                                Store (0x49, Index (Local0, 0x08))
                                                            }
                                                            Else
                                                            {
                                                                Store (0x03, Index (Local0, 0x01))
                                                                Store (0x55, Index (Local0, 0x08))
                                                            }

                                                            Return (Local0)
                                                        }
                                                    }
                                                }

                                                Break
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    Break
                }

                Return (Buffer (0x04)
                {
                     0x02, 0x00, 0x00, 0x80                           /* .... */
                })
            }
        }
        Method (B1B2, 2, NotSerialized) { Return(Or(Arg0, ShiftLeft(Arg1, 8))) }
        Method (B1B4, 4, NotSerialized)
        {
            Store(Arg3, Local0)
            Or(Arg2, ShiftLeft(Local0, 8), Local0)
            Or(Arg1, ShiftLeft(Local0, 8), Local0)
            Or(Arg0, ShiftLeft(Local0, 8), Local0)
            Return(Local0)
        }
    }

    Name (\_S0, Package (0x04)  // _S0_: S0 System State
    {
        0x00, 
        0x00, 
        0x00, 
        0x00
    })
    Name (\_S3, Package (0x04)  // _S3_: S3 System State
    {
        0x05, 
        0x05, 
        0x00, 
        0x00
    })
    Name (\_S4, Package (0x04)  // _S4_: S4 System State
    {
        0x06, 
        0x06, 
        0x00, 
        0x00
    })
    Name (\_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        0x07, 
        0x00, 
        0x00
    })
    Method (\_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        Store (0x01, Local0)
        If (LEqual (Arg0, \SPS))
        {
            Store (0x00, Local0)
        }

        If (LOr (LEqual (Arg0, 0x00), LGreaterEqual (Arg0, 0x06)))
        {
            Store (0x00, Local0)
        }

        If (Local0)
        {
            Store (Arg0, \SPS)
            \_SB.PCI0.LPC.EC.HKEY.MHKE (0x00)
            If (\_SB.PCI0.LPC.EC.KBLT)
            {
                \UCMS (0x0D)
            }

            If (LEqual (Arg0, 0x01))
            {
                Store (\_SB.PCI0.LPC.EC.HFNI, \FNID)
                Store (0x00, \_SB.PCI0.LPC.EC.HFNI)
                Store (0x00, \_SB.PCI0.LPC.EC.HFSP)
            }

            If (LEqual (Arg0, 0x03))
            {
                If (LEqual (\_SB.PCI0.LPC.EC.DGCS, 0x01))
                {
                    Notify (\_SB.PCI0.PEG.VID, 0xD1) // Hardware-Specific
                    Store (0x00, \_SB.PCI0.LPC.EC.DGCS)
                }

                \VVPD (0x03)
                \TRAP ()
                Store (\_SB.PCI0.LPC.EC.AC._PSR (), \ACST)
                If (LEqual (\FNWK, 0x01))
                {
                    If (\H8DR)
                    {
                        Store (0x00, \_SB.PCI0.LPC.EC.HWFN)
                    }
                    Else
                    {
                        \MBEC (0x32, 0xEF, 0x00)
                    }
                }

                Store (\IFRS (0x00, 0x00), Local1)
                Store (0x00, \FFCL)
                If (And (Local1, 0x20))
                {
                    If (LNotEqual (And (Local1, 0x00FFFF00), 0x00FFFF00))
                    {
                        If (LOr (LAnd (\_SB.PCI0.LPC.EC.HB0A, LGreater (And (\_SB.PCI0.LPC.EC.HB0S, 0x07), 0x01)), LAnd (\_SB.PCI0.LPC.EC.HB1A, 
                            LGreater (And (\_SB.PCI0.LPC.EC.HB1S, 0x07), 0x01))))
                        {
                            Store (0x00, \FFCL)
                        }
                        Else
                        {
                            Store (0x01, \FFCL)
                        }
                    }
                }

                If (\FFCL)
                {
                    \IFRS (0x02, 0x00)
                }

                \VHYB (0x00, 0x01)
            }

            If (LEqual (Arg0, 0x04))
            {
                If (LEqual (\_SB.PCI0.LPC.EC.DGCS, 0x01))
                {
                    Notify (\_SB.PCI0.PEG.VID, 0xD1) // Hardware-Specific
                }

                If (VDSP)
                {
                    Store (Zero, SHA1) /* \SHA1 */
                }

                \_SB.SLPB._PSW (0x00)
                \TRAP ()
                If (CondRefOf (\_SB.PCI0.LPC.TPM.CMOR))
                {
                    \_SB.PCI0.LPC.TPM.CMOR ()
                }

                \AWON (0x04)
            }

            If (LEqual (Arg0, 0x05))
            {
                \TRAP ()
                If (CondRefOf (\_SB.PCI0.LPC.TPM.CMOR))
                {
                    \_SB.PCI0.LPC.TPM.CMOR ()
                }

                \AWON (0x05)
            }

            If (LGreaterEqual (Arg0, 0x04))
            {
                Store (0x00, \_SB.PCI0.LPC.EC.HWLB)
            }
            Else
            {
                Store (0x01, \_SB.PCI0.LPC.EC.HWLB)
            }

            If (LGreaterEqual (Arg0, 0x03))
            {
                Store (0x01, \_SB.PCI0.LPC.EC.HCMU)
            }

            If (LNotEqual (Arg0, 0x05)) {}
            \_SB.PCI0.LPC.EC.HKEY.WGPS (Arg0)
        }
    }

    Name (WAKI, Package (0x02)
    {
        0x00, 
        0x00
    })
    Method (\_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        If (LOr (LEqual (Arg0, 0x00), LGreaterEqual (Arg0, 0x05)))
        {
            Return (WAKI) /* \WAKI */
        }

        Store (0x00, \SPS)
        Store (0x00, \_SB.PCI0.LPC.EC.HCMU)
        \_SB.PCI0.LPC.EC.EVNT (0x01)
        \_SB.PCI0.LPC.EC.HKEY.MHKE (0x01)
        \_SB.PCI0.LPC.EC.FNST ()
        \UCMS (0x0D)
        Store (0x00, \LIDB)
        If (LEqual (Arg0, 0x01))
        {
            Store (\_SB.PCI0.LPC.EC.HFNI, \FNID)
        }

        If (LEqual (Arg0, 0x03))
        {
            \NVSS (0x00)
            \_SB.PCI0.LPC.EC.LED (0x00, 0x80)
            \_SB.PCI0.LPC.EC.LED (0x0A, 0x80)            
            Store (\_SB.PCI0.LPC.EC.AC._PSR (), \PWRS)
            If (\OSC4)
            {
                \PNTF (0x81)
            }

            If (LNotEqual (\ACST, \_SB.PCI0.LPC.EC.AC._PSR ()))
            {
                \_SB.PCI0.LPC.EC.ATMC ()
            }

            If (\SCRM)
            {
                Store (0x07, \_SB.PCI0.LPC.EC.HFSP)
            }

            Store (0x00, \IOEN)
            Store (0x00, \IOST)
            If (LEqual (\ISWK, 0x01))
            {
                If (\_SB.PCI0.LPC.EC.HKEY.DHKC)
                {
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6070)
                }
            }

            If (\FFCL)
            {
                \IFRS (0x03, 0x00)
            }

            If (\VIGD)
            {
                \_SB.PCI0.VID.GLIS (\_SB.LID._LID ())
                If (\WVIS)
                {
                    \VBTD ()
                }
            }
            Else
            {
                If (\WVIS)
                {
                    \_SB.PCI0.VID.GLIS (\_SB.LID._LID ())
                    \VBTD ()
                }
            }

            \VCMS (0x01, \_SB.LID._LID ())
            \AWON (0x00)
            If (\CMPR)
            {
                Notify (\_SB.SLPB, 0x02) // Device Wake
                Store (0x00, \CMPR)
            }

            If (LOr (\USBR, \_SB.PCI0.XHCI.XRST))
            {
                If (LOr (LEqual (\XHCI, 0x02), LEqual (\XHCI, 0x03)))
                {
                    Store (0x00, Local0)
                    And (\_SB.PCI0.XHCI.PR3, 0xFFFFFFC0, Local0)
                    Or (Local0, \_SB.PCI0.XHCI.PR3M, \_SB.PCI0.XHCI.PR3)
                    And (\_SB.PCI0.XHCI.PR3, 0xFFFFFFF7, \_SB.PCI0.XHCI.PR3)
                    Store (0x00, Local0)
                    And (\_SB.PCI0.XHCI.PR2, 0xFFFF8000, Local0)
                    Or (Local0, \_SB.PCI0.XHCI.PR2M, \_SB.PCI0.XHCI.PR2)
                    And (\_SB.PCI0.XHCI.PR2, 0xFFFFFFF7, \_SB.PCI0.XHCI.PR2)
                }
            }
        }

        If (LEqual (Arg0, 0x04))
        {
            \NVSS (0x00)
            Store (0x00, \_SB.PCI0.LPC.EC.HSPA)
            Store (\_SB.PCI0.LPC.EC.AC._PSR (), \PWRS)
            If (\OSC4)
            {
                \PNTF (0x81)
            }

            \_SB.PCI0.LPC.EC.ATMC ()
            If (\SCRM)
            {
                Store (0x07, \_SB.PCI0.LPC.EC.HFSP)
            }

            If (LNot (\NBCF))
            {
                If (\VIGD)
                {
                    \_SB.PCI0.LPC.EC.BRNS ()
                }
                Else
                {
                    \VBRC (\BRLV)
                }
            }

            Store (0x00, \IOEN)
            Store (0x00, \IOST)
            If (LEqual (\ISWK, 0x02))
            {
                If (\_SB.PCI0.LPC.EC.HKEY.DHKC)
                {
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6080)
                }
            }

            If (\_SB.PCI0.XHCI.XRST)
            {
                If (LOr (LEqual (\XHCI, 0x02), LEqual (\XHCI, 0x03)))
                {
                    Store (0x00, Local0)
                    And (\_SB.PCI0.XHCI.PR3, 0xFFFFFFC0, Local0)
                    Or (Local0, \_SB.PCI0.XHCI.PR3M, \_SB.PCI0.XHCI.PR3)
                    And (\_SB.PCI0.XHCI.PR3, 0xFFFFFFF7, \_SB.PCI0.XHCI.PR3)
                    Store (0x00, Local0)
                    And (\_SB.PCI0.XHCI.PR2, 0xFFFF8000, Local0)
                    Or (Local0, \_SB.PCI0.XHCI.PR2M, \_SB.PCI0.XHCI.PR2)
                    And (\_SB.PCI0.XHCI.PR2, 0xFFFFFFF7, \_SB.PCI0.XHCI.PR2)
                }
            }
        }

        \_SB.PCI0.LPC.EC.BATW (Arg0)
        \_SB.PCI0.LPC.EC.HKEY.WGWK (Arg0)
        Notify (\_TZ.THM0, 0x80) // Thermal Status Change
        \VSLD (\_SB.LID._LID ())
        If (\VIGD)
        {
            \_SB.PCI0.VID.GLIS (\_SB.LID._LID ())
        }
        Else
        {
            If (\WVIS)
            {
                \_SB.PCI0.VID.GLIS (\_SB.LID._LID ())
            }
        }

        If (LLess (Arg0, 0x04))
        {
            If (LOr (And (\RRBF, 0x02), And (\_SB.PCI0.LPC.EC.HWAC, 0x02)))
            {
                ShiftLeft (Arg0, 0x08, Local0)
                Store (Or (0x2013, Local0), Local0)
                \_SB.PCI0.LPC.EC.HKEY.MHKQ (Local0)
            }
        }

        If (LEqual (Arg0, 0x04))
        {
            Store (0x00, Local0)
            Store (\CSUM (0x00), Local1)
            If (LNotEqual (Local1, \CHKC))
            {
                Store (0x01, Local0)
                Store (Local1, \CHKC)
            }

            Store (\CSUM (0x01), Local1)
            If (LNotEqual (Local1, \CHKE))
            {
                Store (0x01, Local0)
                Store (Local1, \CHKE)
            }

            If (Local0)
            {
                Notify (\_SB, 0x00) // Bus Check
            }
        }

        Store (Zero, \RRBF)
        Return (WAKI) /* \WAKI */
    }

    Scope (\_SI)
    {
        Method (_SST, 1, NotSerialized)  // _SST: System Status
        {
            If (LEqual (Arg0, 0x00))
            {
                \_SB.PCI0.LPC.EC.LED (0x00, 0x00)
                \_SB.PCI0.LPC.EC.LED (0x0A, 0x00)
                \_SB.PCI0.LPC.EC.LED (0x07, 0x00)
            }

            If (LEqual (Arg0, 0x01))
            {
                If (LOr (\SPS, \WNTF))
                {
                    \_SB.PCI0.LPC.EC.BEEP (0x05)
                }

                \_SB.PCI0.LPC.EC.LED (0x00, 0x80)
                \_SB.PCI0.LPC.EC.LED (0x0A, 0x80)
                \_SB.PCI0.LPC.EC.LED (0x07, 0x00)
            }

            If (LEqual (Arg0, 0x02))
            {
                \_SB.PCI0.LPC.EC.LED (0x00, 0xC0)
                \_SB.PCI0.LPC.EC.LED (0x0A, 0xC0)
                \_SB.PCI0.LPC.EC.LED (0x07, 0xC0)
            }

            If (LEqual (Arg0, 0x03))
            {
                If (LGreater (\SPS, 0x03))
                {
                    \_SB.PCI0.LPC.EC.BEEP (0x07)
                }
                Else
                {
                    If (LEqual (\SPS, 0x03))
                    {
                        \_SB.PCI0.LPC.EC.BEEP (0x03)
                    }
                    Else
                    {
                        \_SB.PCI0.LPC.EC.BEEP (0x04)
                    }
                }

                If (LEqual (\SPS, 0x03)) {}
                Else
                {
                    \_SB.PCI0.LPC.EC.LED (0x00, 0x80)
                    \_SB.PCI0.LPC.EC.LED (0x0A, 0x80)
                }

                \_SB.PCI0.LPC.EC.LED (0x07, 0xC0)
                \_SB.PCI0.LPC.EC.LED (0x00, 0xC0)
                \_SB.PCI0.LPC.EC.LED (0x0A, 0xC0)
            }

            If (LEqual (Arg0, 0x04))
            {
                \_SB.PCI0.LPC.EC.BEEP (0x03)
                \_SB.PCI0.LPC.EC.LED (0x07, 0xC0)
                \_SB.PCI0.LPC.EC.LED (0x00, 0xC0)
                \_SB.PCI0.LPC.EC.LED (0x0A, 0xC0)
            }
        }
    }

    Scope (\_GPE)
    {
        Method (_L0D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Store (\_SB.PCI0.LPC.EC.HWAC, Local0)
            Store (Local0, \RRBF)
            Sleep (0x0A)
            If (And (Local0, 0x02)) {}
            If (And (Local0, 0x04))
            {
                Notify (\_SB.LID, 0x02) // Device Wake
            }

            If (And (Local0, 0x08))
            {
                Notify (\_SB.SLPB, 0x02) // Device Wake
            }

            If (And (Local0, 0x10))
            {
                Notify (\_SB.SLPB, 0x02) // Device Wake
            }

            If (And (Local0, 0x40)) {}
            If (And (Local0, 0x80))
            {
                Notify (\_SB.SLPB, 0x02) // Device Wake
            }
        }

        Method (_L69, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (\_SB.PCI0.EXP1.PSPX)
            {
                Store (0x01, \_SB.PCI0.EXP1.PSPX)
                Store (0x01, \_SB.PCI0.EXP1.PMSX)
                Notify (\_SB.PCI0.EXP1, 0x02) // Device Wake
            }

            If (\_SB.PCI0.EXP2.PSPX)
            {
                Store (0x01, \_SB.PCI0.EXP2.PSPX)
                Store (0x01, \_SB.PCI0.EXP2.PMSX)
                Notify (\_SB.PCI0.EXP2, 0x02) // Device Wake
            }

            If (\_SB.PCI0.EXP3.PSPX)
            {
                Store (0x01, \_SB.PCI0.EXP3.PSPX)
                Store (0x01, \_SB.PCI0.EXP3.PMSX)
                Notify (\_SB.PCI0.EXP3, 0x02) // Device Wake
            }
        }

        Method (_L61, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
        }

        Method (_L62, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Store (0x00, \_SB.PCI0.LPC.SWGE)
            If (CondRefOf (\_SB.PCCD.PENB))
            {
                If (LEqual (\_SB.PCCD.PENB, 0x01))
                {
                    Notify (\_SB.PCCD, 0x80) // Status Change
                }
            }
        }

        Method (_L66, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (\_SB.PCI0.VID.GSSE)
            {
                \_SB.PCI0.VID.GSCI ()
            }
            Else
            {
                Store (0x01, \_SB.PCI0.LPC.SCIS)
            }
        }

        Name (GPFG, 0x00)
        Method (_L0B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            If (LAnd (GPFG, \_SB.PCI0.LPC.NFCI))
            {
                Store (0x00, GPFG) /* \_GPE.GPFG */
                Notify (\_SB.PCI0.SMBU.NFC, 0xC0) // Hardware-Specific
            }
        }
    }

    Scope (\_SB.PCI0.LPC.EC.HKEY)
    {
        Method (MHQT, 1, NotSerialized)
        {
            If (LAnd (\WNTF, \TATC))
            {
                If (LEqual (Arg0, 0x00))
                {
                    Store (\TATC, Local0)
                    Return (Local0)
                }
                Else
                {
                    If (LEqual (Arg0, 0x01))
                    {
                        Store (\TDFA, Local0)
                        Add (Local0, ShiftLeft (\TDTA, 0x04), Local0)
                        Add (Local0, ShiftLeft (\TDFD, 0x08), Local0)
                        Add (Local0, ShiftLeft (\TDTD, 0x0C), Local0)
                        Add (Local0, ShiftLeft (\TNFT, 0x10), Local0)
                        Add (Local0, ShiftLeft (\TNTT, 0x14), Local0)
                        Return (Local0)
                    }
                    Else
                    {
                        If (LEqual (Arg0, 0x02))
                        {
                            Store (\TCFA, Local0)
                            Add (Local0, ShiftLeft (\TCTA, 0x04), Local0)
                            Add (Local0, ShiftLeft (\TCFD, 0x08), Local0)
                            Add (Local0, ShiftLeft (\TCTD, 0x0C), Local0)
                            Return (Local0)
                        }
                        Else
                        {
                            If (LEqual (Arg0, 0x03)) {}
                            Else
                            {
                                If (LEqual (Arg0, 0x04))
                                {
                                    Store (\TATW, Local0)
                                    Return (Local0)
                                }
                                Else
                                {
                                    Noop
                                }
                            }
                        }
                    }
                }
            }

            Return (0x00)
        }

        Method (MHAT, 1, NotSerialized)
        {
            If (LAnd (\WNTF, \TATC))
            {
                Store (And (Arg0, 0xFF), Local0)
                If (LNot (ATMV (Local0)))
                {
                    Return (0x00)
                }

                Store (And (ShiftRight (Arg0, 0x08), 0xFF), Local0)
                If (LNot (ATMV (Local0)))
                {
                    Return (0x00)
                }

                Store (And (Arg0, 0x0F), \TCFA)
                Store (And (ShiftRight (Arg0, 0x04), 0x0F), \TCTA)
                Store (And (ShiftRight (Arg0, 0x08), 0x0F), \TCFD)
                Store (And (ShiftRight (Arg0, 0x0C), 0x0F), \TCTD)
                ATMC ()
                If (And (\_PR.CFGD, 0x0100))
                {
                    Store (\FTPS, Local1)
                    If (And (Arg0, 0x00010000))
                    {
                        If (\_PR.CLVL)
                        {
                            Store (\CTPR, \FTPS)
                            Increment (\FTPS)
                        }
                        Else
                        {
                            Store (0x01, \FTPS)
                        }
                    }
                    Else
                    {
                        If (\_PR.CLVL)
                        {
                            Store (\CTPR, \FTPS)
                        }
                        Else
                        {
                            Store (0x00, \FTPS)
                        }
                    }

                    If (XOr (\FTPS, Local1))
                    {
                        If (LOr (\OSPX, \CPPX))
                        {
                            \PNTF (0x80)
                        }
                    }
                }

                Store (\SCRM, Local2)
                If (And (Arg0, 0x00040000))
                {
                    Store (0x01, \SCRM)
                    Store (0x07, \_SB.PCI0.LPC.EC.HFSP)
                }
                Else
                {
                    Store (0x00, \SCRM)
                    Store (0x80, \_SB.PCI0.LPC.EC.HFSP)
                }

                Store (\ETAU, Local3)
                If (And (Arg0, 0x00020000))
                {
                    Store (0x01, \ETAU)
                }
                Else
                {
                    Store (0x00, \ETAU)
                }

                Return (0x01)
            }

            Return (0x00)
        }

        Method (MHGT, 1, NotSerialized)
        {
            If (LAnd (\WNTF, \TATC))
            {
                Store (0x01000000, Local0)
                If (And (\_PR.CFGD, 0x0100))
                {
                    Or (Local0, 0x08000000, Local0)
                }

                If (\SCRM)
                {
                    Or (Local0, 0x10000000, Local0)
                }

                If (\ETAU)
                {
                    Or (Local0, 0x04000000, Local0)
                }

                If (LLess (\CTPR, \FTPS))
                {
                    Or (Local0, 0x02000000, Local0)
                }

                Add (Local0, ShiftLeft (\TSFT, 0x10), Local0)
                Add (Local0, ShiftLeft (\TSTT, 0x14), Local0)
                Store (And (Arg0, 0xFF), Local1)
                If (LNot (ATMV (Local1)))
                {
                    Or (Local0, 0xFFFF, Local0)
                    Return (Local0)
                }

                Store (And (Arg0, 0x0F), Local1)
                If (LEqual (Local1, 0x00))
                {
                    Add (Local0, \TIF0, Local0)
                }
                Else
                {
                    If (LEqual (Local1, 0x01))
                    {
                        Add (Local0, \TIF1, Local0)
                    }
                    Else
                    {
                        If (LEqual (Local1, 0x02))
                        {
                            Add (Local0, \TIF2, Local0)
                        }
                        Else
                        {
                            Add (Local0, 0xFF, Local0)
                        }
                    }
                }

                Store (And (ShiftRight (Arg0, 0x04), 0x0F), Local1)
                If (LEqual (Local1, 0x00))
                {
                    Add (Local0, ShiftLeft (\TIT0, 0x08), Local0)
                }
                Else
                {
                    If (LEqual (Local1, 0x01))
                    {
                        Add (Local0, ShiftLeft (\TIT1, 0x08), Local0)
                    }
                    Else
                    {
                        If (LEqual (Local1, 0x02))
                        {
                            Add (Local0, ShiftLeft (\TIT2, 0x08), Local0)
                        }
                        Else
                        {
                            Add (Local0, ShiftLeft (0xFF, 0x08), Local0)
                        }
                    }
                }

                Return (Local0)
            }

            Return (0x00)
        }

        Method (ATMV, 1, NotSerialized)
        {
            Store (And (Arg0, 0x0F), Local1)
            Store (\TNFT, Local0)
            If (LGreaterEqual (Local1, Local0))
            {
                Return (0x00)
            }

            Store (And (ShiftRight (Arg0, 0x04), 0x0F), Local2)
            Store (\TNTT, Local0)
            If (LGreaterEqual (Local2, Local0))
            {
                Return (0x00)
            }

            If (\TATL)
            {
                If (XOr (Local1, Local2))
                {
                    Return (0x00)
                }
            }

            Return (0x01)
        }

        Method (MHCT, 1, NotSerialized)
        {
            Store (0x00, Local0)
            If (\SPEN)
            {
                Store (\LWST, Local0)
                Increment (Local0)
                ShiftLeft (Local0, 0x08, Local0)
            }

            Store (0x08, Local1)
            ShiftLeft (Local1, 0x08, Local1)
            If (LEqual (Arg0, 0xFFFFFFFF))
            {
                Or (Local1, \TPCR, Local1)
                If (\SPEN)
                {
                    Or (Local0, \PPCR, Local0)
                    If (LNot (LAnd (\_PR.CFGD, 0x02000000)))
                    {
                        Or (Local1, 0x80, Local1)
                    }

                    If (LNot (LAnd (\_PR.CFGD, 0x08000000)))
                    {
                        Or (Local1, 0x40, Local1)
                    }
                }
                Else
                {
                    Or (Local1, 0xC0, Local1)
                }
            }
            Else
            {
                If (LAnd (LOr (\OSPX, \CPPX), \SPEN))
                {
                    And (Arg0, 0x00FF0000, Local2)
                    ShiftRight (Local2, 0x10, Local2)
                    Or (Local0, Local2, Local0)
                    If (XOr (Local2, \PPCR))
                    {
                        Store (Local2, \PPCA)
                        \PNTF (0x80)
                    }
                }

                If (\WVIS)
                {
                    And (Arg0, 0x1F, Local2)
                    Or (Local1, Local2, Local1)
                    If (XOr (Local2, \TPCR))
                    {
                        Store (Local2, \TPCA)
                        \PNTF (0x82)
                    }
                }
            }

            ShiftLeft (Local0, 0x10, Local0)
            Or (Local0, Local1, Local0)
            Return (Local0)
        }
    }

    Scope (\_SB.PCI0.LPC.EC)
    {
        Method (ATMC, 0, NotSerialized)
        {
            If (LAnd (\WNTF, \TATC))
            {
                If (HPAC)
                {
                    Store (\TCFA, Local0)
                    Store (\TCTA, Local1)
                    Store (Or (ShiftLeft (Local1, 0x04), Local0), Local2)
                    XOr (Local2, ATMX, Local3)
                    Store (Local2, ATMX) /* \_SB_.PCI0.LPC_.EC__.ATMX */
                    If (LEqual (\TCTA, 0x00))
                    {
                        Store (\TCR0, \TCRT)
                        Store (\TPS0, \TPSV)
                    }
                    Else
                    {
                        If (LEqual (\TCTA, 0x01))
                        {
                            Store (\TCR1, \TCRT)
                            Store (\TPS1, \TPSV)
                        }
                        Else
                        {
                        }
                    }
                }
                Else
                {
                    Store (\TCFD, Local0)
                    Store (\TCTD, Local1)
                    Store (Or (ShiftLeft (Local1, 0x04), Local0), Local2)
                    XOr (Local2, ATMX, Local3)
                    Store (Local2, ATMX) /* \_SB_.PCI0.LPC_.EC__.ATMX */
                    If (LEqual (\TCTD, 0x00))
                    {
                        Store (\TCR0, \TCRT)
                        Store (\TPS0, \TPSV)
                    }
                    Else
                    {
                        If (LEqual (\TCTD, 0x01))
                        {
                            Store (\TCR1, \TCRT)
                            Store (\TPS1, \TPSV)
                        }
                        Else
                        {
                        }
                    }
                }

                If (Local3)
                {
                    If (\_SB.PCI0.LPC.EC.HKEY.DHKC)
                    {
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6030)
                    }
                }

                Notify (\_TZ.THM0, 0x81) // Thermal Trip Point Change
            }
        }
    }

    Scope (\_TZ)
    {
        ThermalZone (THM0)
        {
            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (\TCRT)
            }

            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                If (\H8DR)
                {
                    Store (\_SB.PCI0.LPC.EC.TMP0, Local0)
                    Store (\_SB.PCI0.LPC.EC.TSL2, Local1)
                    Store (\_SB.PCI0.LPC.EC.TSL3, Local2)
                }
                Else
                {
                    Store (\RBEC (0x78), Local0)
                    Store (And (\RBEC (0x8A), 0x7F), Local1)
                    Store (And (\RBEC (0x8B), 0x7F), Local2)
                }

                If (LEqual (Local0, 0x80))
                {
                    Store (0x30, Local0)
                }

                If (Local2)
                {
                    \TSDL ()
                    Return (\TCRT)
                }

                If (LNot (\_SB.PCI0.LPC.EC.HKEY.DHKC))
                {
                    If (Local1)
                    {
                        \TSDL ()
                        Return (\TCRT)
                    }
                }

                Return (C2K (Local0))
            }
        }

        Method (C2K, 1, NotSerialized)
        {
            Add (Multiply (Arg0, 0x0A), 0x0AAC, Local0)
            If (LLessEqual (Local0, 0x0AAC))
            {
                Store (0x0BB8, Local0)
            }

            If (LGreater (Local0, 0x0FAC))
            {
                Store (0x0BB8, Local0)
            }

            Return (Local0)
        }
    }

    Scope (\_SB.PCI0.LPC.EC)
    {
        Method (_Q40, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (\_TZ.THM0, 0x80) // Thermal Status Change
            If (\H8DR)
            {
                Store (\_SB.PCI0.LPC.EC.TSL2, Local1)
            }
            Else
            {
                Store (And (\RBEC (0x8A), 0x7F), Local1)
            }

            If (\_SB.PCI0.LPC.EC.HKEY.DHKC)
            {
                If (Local1)
                {
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6022)
                }
            }

            If (VIGD)
            {
                Noop
            }
            Else
            {
                \VTHR ()
            }

            If (And (\_PR.CFGD, 0x01))
            {
                If (LOr (\OSPX, \CPPX))
                {
                    \PNTF (0x80)
                }
                Else
                {
                    Store (And (\_SB.PCI0.LPC.EC.TSL0, 0x77), Local2)
                    If (Local2)
                    {
                        \STEP (0x09)
                    }
                    Else
                    {
                        \STEP (0x0A)
                    }
                }
            }
        }
    }

    Name (GPIC, 0x00)
    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        Store (Arg0, \GPIC)
    }

    OperationRegion (SMI0, SystemIO, 0xB2, 0x01)
    Field (SMI0, ByteAcc, NoLock, Preserve)
    {
        APMC,   8
    }

    Field (MNVS, AnyAcc, NoLock, Preserve)
    {
        Offset (0xFC0), 
        CMD,    8, 
        ERR,    32, 
        PAR0,   32, 
        PAR1,   32, 
        PAR2,   32, 
        PAR3,   32
    }

    Mutex (MSMI, 0x07)
    Method (SMI, 5, NotSerialized)
    {
        Acquire (MSMI, 0xFFFF)
        Store (Arg0, CMD) /* \CMD_ */
        Store (0x01, ERR) /* \ERR_ */
        Store (Arg1, PAR0) /* \PAR0 */
        Store (Arg2, PAR1) /* \PAR1 */
        Store (Arg3, PAR2) /* \PAR2 */
        Store (Arg4, PAR3) /* \PAR3 */
        Store (0xF5, APMC) /* \APMC */
        While (LEqual (ERR, 0x01))
        {
            Sleep (0x01)
            Store (0xF5, APMC) /* \APMC */
        }

        Store (PAR0, Local0)
        Release (MSMI)
        Return (Local0)
    }

    Method (RPCI, 1, NotSerialized)
    {
        Return (SMI (0x00, 0x00, Arg0, 0x00, 0x00))
    }

    Method (WPCI, 2, NotSerialized)
    {
        SMI (0x00, 0x01, Arg0, Arg1, 0x00)
    }

    Method (MPCI, 3, NotSerialized)
    {
        SMI (0x00, 0x02, Arg0, Arg1, Arg2)
    }

    Method (RBEC, 1, NotSerialized)
    {
        Return (SMI (0x00, 0x03, Arg0, 0x00, 0x00))
    }

    Method (WBEC, 2, NotSerialized)
    {
        SMI (0x00, 0x04, Arg0, Arg1, 0x00)
    }

    Method (MBEC, 3, NotSerialized)
    {
        SMI (0x00, 0x05, Arg0, Arg1, Arg2)
    }

    Method (RISA, 1, NotSerialized)
    {
        Return (SMI (0x00, 0x06, Arg0, 0x00, 0x00))
    }

    Method (WISA, 2, NotSerialized)
    {
        SMI (0x00, 0x07, Arg0, Arg1, 0x00)
    }

    Method (MISA, 3, NotSerialized)
    {
        SMI (0x00, 0x08, Arg0, Arg1, Arg2)
    }

    Method (VEXP, 0, NotSerialized)
    {
        SMI (0x01, 0x00, 0x00, 0x00, 0x00)
    }

    Method (VUPS, 1, NotSerialized)
    {
        SMI (0x01, 0x01, Arg0, 0x00, 0x00)
    }

    Method (VSDS, 2, NotSerialized)
    {
        SMI (0x01, 0x02, Arg0, Arg1, 0x00)
    }

    Method (VDDC, 0, NotSerialized)
    {
        SMI (0x01, 0x03, 0x00, 0x00, 0x00)
    }

    Method (VVPD, 1, NotSerialized)
    {
        SMI (0x01, 0x04, Arg0, 0x00, 0x00)
    }

    Method (VNRS, 1, NotSerialized)
    {
        SMI (0x01, 0x05, Arg0, 0x00, 0x00)
    }

    Method (GLPW, 0, NotSerialized)
    {
        Return (SMI (0x01, 0x06, 0x00, 0x00, 0x00))
    }

    Method (VSLD, 1, NotSerialized)
    {
        SMI (0x01, 0x07, Arg0, 0x00, 0x00)
    }

    Method (VEVT, 1, NotSerialized)
    {
        Return (SMI (0x01, 0x08, Arg0, 0x00, 0x00))
    }

    Method (VTHR, 0, NotSerialized)
    {
        Return (SMI (0x01, 0x09, 0x00, 0x00, 0x00))
    }

    Method (VBRC, 1, NotSerialized)
    {
        SMI (0x01, 0x0A, Arg0, 0x00, 0x00)
    }

    Method (VBRG, 0, NotSerialized)
    {
        Return (SMI (0x01, 0x0E, 0x00, 0x00, 0x00))
    }

    Method (VCMS, 2, NotSerialized)
    {
        Return (SMI (0x01, 0x0B, Arg0, Arg1, 0x00))
    }

    Method (VBTD, 0, NotSerialized)
    {
        Return (SMI (0x01, 0x0F, 0x00, 0x00, 0x00))
    }

    Method (VHYB, 2, NotSerialized)
    {
        Return (SMI (0x01, 0x10, Arg0, Arg1, 0x00))
    }

    Method (VDYN, 2, NotSerialized)
    {
        Return (SMI (0x01, 0x11, Arg0, Arg1, 0x00))
    }

    Method (UCMS, 1, NotSerialized)
    {
        Return (SMI (0x02, Arg0, 0x00, 0x00, 0x00))
    }

    Method (BHDP, 2, NotSerialized)
    {
        Return (SMI (0x03, 0x00, Arg0, Arg1, 0x00))
    }

    Method (STEP, 1, NotSerialized)
    {
        SMI (0x04, Arg0, 0x00, 0x00, 0x00)
    }

    Method (TRAP, 0, NotSerialized)
    {
        SMI (0x05, 0x00, 0x00, 0x00, 0x00)
    }

    Method (CBRI, 0, NotSerialized)
    {
        SMI (0x05, 0x01, 0x00, 0x00, 0x00)
    }

    Method (BCHK, 0, NotSerialized)
    {
        Return (SMI (0x05, 0x04, 0x00, 0x00, 0x00))
    }

    Method (BYRS, 0, NotSerialized)
    {
        SMI (0x05, 0x05, 0x00, 0x00, 0x00)
    }

    Method (LCHK, 1, NotSerialized)
    {
        Return (SMI (0x05, 0x06, Arg0, 0x00, 0x00))
    }

    Method (BLTH, 1, NotSerialized)
    {
        Return (SMI (0x06, Arg0, 0x00, 0x00, 0x00))
    }

    Method (PRSM, 2, NotSerialized)
    {
        Return (SMI (0x07, 0x00, Arg0, Arg1, 0x00))
    }

    Method (IFRS, 2, NotSerialized)
    {
        Return (SMI (0x07, 0x01, Arg0, Arg1, 0x00))
    }

    Method (ISOC, 1, NotSerialized)
    {
        Return (SMI (0x07, 0x03, Arg0, 0x00, 0x00))
    }

    Method (EZRC, 1, NotSerialized)
    {
        Return (SMI (0x07, 0x04, Arg0, 0x00, 0x00))
    }

    Method (WGSV, 1, NotSerialized)
    {
        Return (SMI (0x09, Arg0, 0x00, 0x00, 0x00))
    }

    Method (SWTT, 1, NotSerialized)
    {
        If (SMI (0x0A, 0x02, Arg0, 0x00, 0x00))
        {
            If (\_SB.PCI0.LPC.EC.HKEY.DHKC)
            {
                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6030)
            }
        }
    }

    Method (TSDL, 0, NotSerialized)
    {
        Return (SMI (0x0A, 0x03, 0x00, 0x00, 0x00))
    }

    Method (TPHY, 1, NotSerialized)
    {
        SMI (0x0C, Arg0, 0x00, 0x00, 0x00)
    }

    Method (CSUM, 1, NotSerialized)
    {
        Return (SMI (0x0E, Arg0, 0x00, 0x00, 0x00))
    }

    Method (NVSS, 1, NotSerialized)
    {
        Return (SMI (0x0F, Arg0, 0x00, 0x00, 0x00))
    }

    Method (WMIS, 2, NotSerialized)
    {
        Return (SMI (0x10, Arg0, Arg1, 0x00, 0x00))
    }

    Method (AWON, 1, NotSerialized)
    {
        Return (SMI (0x12, Arg0, 0x00, 0x00, 0x00))
    }

    Method (PMON, 2, NotSerialized)
    {
        Store (SizeOf (Arg0), Local0)
        Name (TSTR, Buffer (Local0) {})
        Store (Arg0, TSTR) /* \PMON.TSTR */
        Store (TSTR, \DBGS)
        SMI (0x11, Arg1, 0x00, 0x00, 0x00)
    }

    Method (UAWS, 1, NotSerialized)
    {
        Return (SMI (0x13, Arg0, 0x00, 0x00, 0x00))
    }

    Method (BFWC, 1, NotSerialized)
    {
        Return (SMI (0x14, 0x00, Arg0, 0x00, 0x00))
    }

    Method (BFWP, 0, NotSerialized)
    {
        Return (SMI (0x14, 0x01, 0x00, 0x00, 0x00))
    }

    Method (BFWL, 0, NotSerialized)
    {
        SMI (0x14, 0x02, 0x00, 0x00, 0x00)
    }

    Method (BFWG, 1, NotSerialized)
    {
        SMI (0x14, 0x03, Arg0, 0x00, 0x00)
    }

    Method (BDMC, 1, NotSerialized)
    {
        SMI (0x14, 0x04, Arg0, 0x00, 0x00)
    }

    Method (PSIF, 2, NotSerialized)
    {
        Return (SMI (0x14, 0x05, Arg0, Arg1, 0x00))
    }

    Method (FNSC, 2, NotSerialized)
    {
        Return (SMI (0x14, 0x06, Arg0, Arg1, 0x00))
    }

    Method (AUDC, 2, NotSerialized)
    {
        Return (SMI (0x14, 0x07, Arg0, Arg1, 0x00))
    }

    Method (SYBC, 2, NotSerialized)
    {
        Return (SMI (0x14, 0x08, Arg0, Arg1, 0x00))
    }

    Method (KBLS, 2, NotSerialized)
    {
        Return (SMI (0x14, 0x09, Arg0, Arg1, 0x00))
    }

    Method (UBIS, 1, NotSerialized)
    {
        Return (SMI (0x15, 0x00, Arg0, 0x00, 0x00))
    }

    Method (DIEH, 1, NotSerialized)
    {
        Return (SMI (0x16, 0x00, Arg0, 0x00, 0x00))
    }

    Method (OUTP, 2, NotSerialized)
    {
        SMI (0x17, Arg0, Arg1, 0x00, 0x00)
    }

    Method (DPIO, 2, NotSerialized)
    {
        If (LNot (Arg0))
        {
            Return (0x00)
        }

        If (LGreater (Arg0, 0xF0))
        {
            Return (0x00)
        }

        If (LGreater (Arg0, 0xB4))
        {
            If (Arg1)
            {
                Return (0x02)
            }
            Else
            {
                Return (0x01)
            }
        }

        If (LGreater (Arg0, 0x78))
        {
            Return (0x03)
        }

        Return (0x04)
    }

    Method (DUDM, 2, NotSerialized)
    {
        If (LNot (Arg1))
        {
            Return (0xFF)
        }

        If (LGreater (Arg0, 0x5A))
        {
            Return (0x00)
        }

        If (LGreater (Arg0, 0x3C))
        {
            Return (0x01)
        }

        If (LGreater (Arg0, 0x2D))
        {
            Return (0x02)
        }

        If (LGreater (Arg0, 0x1E))
        {
            Return (0x03)
        }

        If (LGreater (Arg0, 0x14))
        {
            Return (0x04)
        }

        Return (0x05)
    }

    Method (DMDM, 2, NotSerialized)
    {
        If (Arg1)
        {
            Return (0x00)
        }

        If (LNot (Arg0))
        {
            Return (0x00)
        }

        If (LGreater (Arg0, 0x96))
        {
            Return (0x01)
        }

        If (LGreater (Arg0, 0x78))
        {
            Return (0x02)
        }

        Return (0x03)
    }

    Method (UUDM, 2, NotSerialized)
    {
        If (LNot (And (Arg0, 0x04)))
        {
            Return (0x00)
        }

        If (And (Arg1, 0x20))
        {
            Return (0x14)
        }

        If (And (Arg1, 0x10))
        {
            Return (0x1E)
        }

        If (And (Arg1, 0x08))
        {
            Return (0x2D)
        }

        If (And (Arg1, 0x04))
        {
            Return (0x3C)
        }

        If (And (Arg1, 0x02))
        {
            Return (0x5A)
        }

        If (And (Arg1, 0x01))
        {
            Return (0x78)
        }

        Return (0x00)
    }

    Method (UMDM, 4, NotSerialized)
    {
        If (LNot (And (Arg0, 0x02)))
        {
            Return (0x00)
        }

        If (And (Arg1, 0x04))
        {
            Return (Arg3)
        }

        If (And (Arg1, 0x02))
        {
            If (LLessEqual (Arg3, 0x78))
            {
                Return (0xB4)
            }
            Else
            {
                Return (Arg3)
            }
        }

        If (And (Arg2, 0x04))
        {
            If (LLessEqual (Arg3, 0xB4))
            {
                Return (0xF0)
            }
            Else
            {
                Return (Arg3)
            }
        }

        Return (0x00)
    }

    Method (UPIO, 4, NotSerialized)
    {
        If (LNot (And (Arg0, 0x02)))
        {
            If (LEqual (Arg2, 0x02))
            {
                Return (0xF0)
            }
            Else
            {
                Return (0x0384)
            }
        }

        If (And (Arg1, 0x02))
        {
            Return (Arg3)
        }

        If (And (Arg1, 0x01))
        {
            If (LLessEqual (Arg3, 0x78))
            {
                Return (0xB4)
            }
            Else
            {
                Return (Arg3)
            }
        }

        If (LEqual (Arg2, 0x02))
        {
            Return (0xF0)
        }
        Else
        {
            Return (0x0384)
        }
    }

    Method (FDMA, 2, NotSerialized)
    {
        If (LNotEqual (Arg1, 0xFF))
        {
            Return (Or (Arg1, 0x40))
        }

        If (LGreaterEqual (Arg0, 0x03))
        {
            Return (Or (Subtract (Arg0, 0x02), 0x20))
        }

        If (Arg0)
        {
            Return (0x12)
        }

        Return (0x00)
    }

    Method (FPIO, 1, NotSerialized)
    {
        If (LGreaterEqual (Arg0, 0x03))
        {
            Return (Or (Arg0, 0x08))
        }

        If (LEqual (Arg0, 0x01))
        {
            Return (0x01)
        }

        Return (0x00)
    }

    Method (SCMP, 2, NotSerialized)
    {
        Store (SizeOf (Arg0), Local0)
        If (LNotEqual (Local0, SizeOf (Arg1)))
        {
            Return (One)
        }

        Increment (Local0)
        Name (STR1, Buffer (Local0) {})
        Name (STR2, Buffer (Local0) {})
        Store (Arg0, STR1) /* \SCMP.STR1 */
        Store (Arg1, STR2) /* \SCMP.STR2 */
        Store (Zero, Local1)
        While (LLess (Local1, Local0))
        {
            Store (DerefOf (Index (STR1, Local1)), Local2)
            Store (DerefOf (Index (STR2, Local1)), Local3)
            If (LNotEqual (Local2, Local3))
            {
                Return (One)
            }

            Increment (Local1)
        }

        Return (Zero)
    }

    Name (SPS, 0x00)
    Name (OSIF, 0x00)
    Name (WNTF, 0x00)
    Name (WXPF, 0x00)
    Name (WVIS, 0x00)
    Name (WIN7, 0x00)
    Name (WIN8, 0x00)
    Name (WSPV, 0x00)
    Name (LNUX, 0x00)
    Name (H8DR, 0x00)
    Name (MEMX, 0x00)
    Name (ACST, 0x00)
    Name (FMBL, 0x01)
    Name (FDTP, 0x02)
    Name (FUPS, 0x03)
    Name (FNID, 0x00)
    Name (RRBF, 0x00)
    Name (NBCF, 0x00)
    Scope (\_SB.PCI0)
    {
        Device (PDRC)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, 0x01)  // _UID: Unique ID
            Name (BUF0, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00010000,         // Address Length
                    _Y27)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00010000,         // Address Length
                    _Y28)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y27._BAS, SNR0)  // _BAS: Base Address
                Store (\SRMB, SNR0) /* \_SB_.PCI0.PDRC._CRS.SNR0 */
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y28._BAS, XWT0)  // _BAS: Base Address
                Store (\XWMB, XWT0) /* \_SB_.PCI0.PDRC._CRS.XWT0 */
                Return (BUF0) /* \_SB_.PCI0.PDRC.BUF0 */
            }
        }
    }
}

