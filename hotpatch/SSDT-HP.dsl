// Custom SSDT to merge all addon SSDTs into a master SSDT for HP Compaq Elite 8300 MT/SFF/USDT & HP 6300 Pro MT/SFF

DefinitionBlock("", "SSDT", 2, "HP", "_HP", 0)
{
    #define NO_DEFINITIONBLOCK
    #include "SSDT-XOSI.dsl"
    #include "SSDT-XSEL.dsl"
    #include "SSDT-ESEL.dsl"
    #include "SSDT-USB.dsl"
    #include "SSDT-IMEI.dsl"
    #include "SSDT-LPC.dsl"
    #include "SSDT-SMBUS.dsl"
    #include "SSDT-EC.dsl"
    #include "SSDT-ALC221.dsl"

}
//EOF
