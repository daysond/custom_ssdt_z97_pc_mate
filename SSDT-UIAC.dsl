// SSDT-UIAC-ALL.dsl
//
// This SSDT can be used as a template to build your own
// customization for USBInjectAll.kext.
//
// This SSDT contains all ports, so using it is the same as without
// a custom SSDT.  Delete ports that are not connected or ports you
// do not need.
//
// Change the UsbConnector or portType as needed to match your
// actual USB configuration.
//
// Note:
// portType=0 seems to indicate normal external USB2 port (as seen in MacBookPro8,1)
// portType=2 seems to indicate "internal device" (as seen in MacBookPro8,1)
// portType=4 is used by MacBookPro8,3 (reason/purpose unknown)
//

DefinitionBlock ("", "SSDT", 2, "hack", "_UIAC", 0)
{
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
                    "HP11", Package()   //Rear Top Right
                    {
                        //"UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                    "HP12", Package()   //Rear Top Left
                    {
                        //"UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
                    "HP13", Package()   //Rear Bottom Left
                    {
                        //"UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 3, 0, 0, 0 },
                    },
                    "HP14", Package()   //Rear Bottom Right
                    {
                        //"UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 4, 0, 0, 0 },
                    },
                    "HP15", Package()   //Rear Middle Left
                    {
                        //"UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 5, 0, 0, 0 },
                    },
                    "HP16", Package()   //Rear Middle Right
                    {
                        //"UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 6, 0, 0, 0 },
                    },
                },
            },
            "HUB2", Package()
            {
                "port-count", Buffer() { 6, 0, 0, 0 },
                "ports", Package()
                {
                    "HP22", Package()   //Front Right
                    {
                        //"UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
                    "HP26", Package()   //Front Left
                    {
                        //"UsbConnector", 0,
                        "portType", 0,
                        "port", Buffer() { 6, 0, 0, 0 },
                    },
                },
            },
            "8086_8cb1", Package()
            {
                "port-count", Buffer() { 21, 0, 0, 0 },
                "ports", Package()
                {
                    "SS01", Package()   //Rear Middle Right
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 16, 0, 0, 0 },
                    },
                    "SS02", Package()   //Rear Middle Left
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 17, 0, 0, 0 },
                    },
                    "SS06", Package()   //Front Right
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 21, 0, 0, 0 },
                    },
                },
            },
        })
    }
}
//EOF