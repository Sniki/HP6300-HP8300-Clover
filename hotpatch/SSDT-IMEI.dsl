// Add IMEI Device

#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "HP", "_IMEI", 0)
{
#endif
    Device(_SB.PCI0.IMEI) { Name(_ADR, 0x00160000) }
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF
