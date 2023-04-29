## Fingerprint Reader

## License

Framework Laptop 13 © 2022 by Framework Computer Inc is licensed under CC BY 4.0.
To view a copy of this license, visit http://creativecommons.org/licenses/by/4.0/

## Pinout

The Fingerprint Reader resides on the Input Cover and connects though the Touchpad.
All of its signals are directly passed to the Input Cover Interface described in the
Mainboard documentation. The connector used is Kyocera 046809610110846+.

| Pin | Signal      | Notes                        |
|-----|-------------|------------------------------|
| 1   | VBUS        | 5V                           |
| 2   | USB_P       | USB data                     |
| 3   | USB_N       | USB data                     |
| 4   | GND         |                              |
| 5   | FPR_CTRL    | Output (mask switch events)  |
| 6   | SWITCH      | Open collector output        |
| 7   | FPR_LED_W   |                              |
| 8   | FPR_LED_G   |                              |
| 9   | FPR_LED_R   |                              |
| 10  | FPR_LED_COM | 5V                           |
