// CodecCommander configuration for ALC221 to fix various issue
// Configured from Codec_Dump, to be used on HP Compaq Elite 8300 / HP Compaq 6300 Pro
// Credits "Sniki"

#ifndef NO_DEFINITIONBLOCK
DefinitionBlock ("", "SSDT", 1, "HP", "_ALC221", 0)
{
#endif
    External(_SB.PCI0.HDEF, DeviceObj)
    Name(_SB.PCI0.HDEF.RMCF, Package()
    {
        "CodecCommander", Package()
        {
            "Custom Commands", Package()
            {
                Package(){}, // signifies Array instead of Dictionary
                Package()
                {
                    // 0x1A SET_PIN_WIDGET_CONTROL 0x24
                    "Command", Buffer() { 0x01, 0xA7, 0x07, 0x24 },
                    "On Init", ">y",
                    "On Sleep", ">n",
                    "On Wake", ">y",
                },
                Package()
                {
                    // Node 0x1B - Pin Control (In Enable)
                    "Command", Buffer() { 0x01, 0xb7, 0x07, 0x20 },
                    "On Init", ">n",
                    "On Sleep", ">n",
                    "On Wake", ">y",
                },
                Package()
                {
                    // 0x21 SET_UNSOLICITED_ENABLE 0x83
                    "Command", Buffer() { 0x02, 0x17, 0x08, 0x83 },
                    "On Init", ">y",
                    "On Sleep", ">n",
                    "On Wake", ">y",
                }
            },
            "Perform Reset", ">n",
            //"Perform Reset on External Wake", ">n", // enable if using AppleALC
            "Send Delay", 10,
            "Sleep Nodes", ">n",
        },
    })
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF
