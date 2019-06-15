// USB Port Injector for HP Elite 8300 MT/SFF/USDT & HP 6300 PRO/SFF

#ifndef NO_DEFINITIONBLOCK
DefinitionBlock ("", "SSDT", 2, "HP", "_USB", 0)
{
#endif
    Device(UIAC)
    {
        Name(_HID, "UIA00000")

        Name(RMCF, Package()
        {
            "HUB1", Package()
            {
                "port-count", Buffer() { 8, 0, 0, 0 },
                "ports", Package()
                {
                    "HP16", Package() // Bluetooth #1
                    {
                        //"UsbConnector", 0,
                        "portType", 2,
                        "port", Buffer() { 6, 0, 0, 0 },
                    },
                    "HP17", Package() // Bluetooth #2
                    {
                        //"UsbConnector", 0,
                        "portType", 2,
                        "port", Buffer() { 7, 0, 0, 0 },
                    },
                    "HP18", Package() // Bluetooth #3
                    {
                        //"UsbConnector", 0,
                        "portType", 2,
                        "port", Buffer() { 8, 0, 0, 0 },
                    },
                },
            },
            "HUB2", Package()
            {
                "port-count", Buffer() { 6, 0, 0, 0 },
                "ports", Package()
                {
                    "HP21", Package() // USB2 Port Front #1
                    {
                        //"UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                    "HP22", Package() // USB2 Port Front #2
                    {
                        //"UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
                    "HP23", Package() // USB2 Port Front #3
                    {
                        //"UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 3, 0, 0, 0 },
                    },
                    "HP24", Package() // USB2 Port Front #4
                    {
                        //"UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 4, 0, 0, 0 },
                    },
                    "HP25", Package() // USB2 Port Back #1
                    {
                        //"UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 5, 0, 0, 0 },
                    },
                    "HP26", Package() // USB2 Port Back #2
                    {
                        //"UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 6, 0, 0, 0 },
                    },
                },
            },
            "EH01", Package()
            {
                "port-count", Buffer() { 8, 0, 0, 0 },
                "ports", Package()
                {
                    "PR11", Package()
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                },
            },
            "EH02", Package()
            {
                "port-count", Buffer() { 6, 0, 0, 0 },
                "ports", Package()
                {
                    "PR21", Package()
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                },
            },
            "8086_1e31", Package()
            {
                "port-count", Buffer() { 8, 0, 0, 0 },
                "ports", Package()
                {
                    "HS01", Package() // USB3 Port #1 (USB2 Device)
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                    "HS02", Package() // USB3 Port #2 (USB2 Device)
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
                    "HS03", Package() // USB3 Port #3 (USB2 Device)
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 3, 0, 0, 0 },
                    },
                    "HS04", Package() // USB3 Port #4 (USB2 Device)
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 4, 0, 0, 0 },
                    },
                    "SS01", Package() // USB3 Port #1
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 5, 0, 0, 0 },
                    },
                    "SS02", Package() // USB3 Port #2
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 6, 0, 0, 0 },
                    },
                    "SS03", Package() // USB3 Port #3
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 7, 0, 0, 0 },
                    },
                    "SS04", Package() // USB3 Port #4
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 8, 0, 0, 0 },
                    },
                },
            },
        })
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF
