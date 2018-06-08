# Input/Output

1. Write an assembly language program that determines where the I/O memory begins on your Raspberry Pi. Raspbian includes a function, `bcm_host_get_peripheral_address for this purpose. It is located in the `/opt/vc/lib/libbcm_host.so` library. Your will need to link your program with this library.

