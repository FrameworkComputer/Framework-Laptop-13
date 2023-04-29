# Touchpad

## License

Framework Laptop 13 © 2022 by Framework Computer Inc is licensed under CC BY 4.0.
To view a copy of this license, visit http://creativecommons.org/licenses/by/4.0/

## Pinout

### Keyboard Connector

This is the ZIF connector for the keyboard, using a Kyocera 046809626210846+ part.

| Pin | Signal | Notes |
|-----|--------|-------|
| 1   | KSI0   |       |
| 2   | KSI1   |       |
| 3   | KSI2   |       |
| 4   | KSI3   |       |
| 5   | KSI4   |       |
| 6   | KSI5   |       |
| 7   | KSI6   |       |
| 8   | KSI7   |       |
| 9   | KSO0   |       |
| 10  | KSO1   |       |
| 11  | KSO2   |       |
| 12  | KSO3   |       |
| 13  | KSO4   |       |
| 14  | KSO5   |       |
| 15  | KSO6   |       |
| 16  | KSO7   |       |
| 17  | KSO8   |       |
| 18  | KSO9   |       |
| 19  | KSO10  |       |
| 20  | KSO11  |       |
| 21  | KSO12  |       |
| 22  | KSO13  |       |
| 23  | KSO14  |       |
| 24  | KSO15  |       |
| 25  | CAPS_P | 5V    |
| 26  | CAPS_N |       |

### Keyboard Backlight Connector

The ZIF connector for the keyboard backlight, using a ACES 51601-0040M-001 part.

| Pin | Signal | Notes |
|-----|--------|-------|
| 1   | KBL_N  |       |
| 2   | KBL_N  |       |
| 3   | KBL_P  | 5V    |
| 4   | KBL_P  | 5V    |

### Fingerprint Reader Connector

The ZIF connector for the Fingerprint Reader, using a Kyocera 046809610110846+ part.

| Pin | Signal     | Notes                       | Voltage |
|-----|------------|-----------------------------|---------|
| 1   | VBUS       | Power                       | 5V      |
| 2   | USB_DM     | USB Data                    |         |
| 3   | USB_DP     | USB Data                    |         |
| 4   | GND        | Power                       |         |
| 5   | EC_CONTROL | Output - mask switch events |         |
| 6   | SWITCH     | Open collector output       |         |
| 7   | LED_W      |                             |         |
| 8   | LED_G      |                             |         |
| 9   | LED_R      |                             |         |
| 10  | LED_COM    |                             | 5V      |

### Mainboard Connector

The ZIF connector for the FPC going to the Mainboard, using a ACES 51688-0510M-001 part.

| Pin | Signal     | Notes            | Voltage         |
|-----|------------|------------------|-----------------|
| 1   | GND        |                  |                 |
| 2   | KSI0       |                  |                 |
| 3   | KSI1       |                  |                 |
| 4   | KSI2       |                  |                 |
| 5   | KSI3       |                  |                 |
| 6   | KSI4       |                  |                 |
| 7   | KSI5       |                  |                 |
| 8   | KSI6       |                  |                 |
| 9   | KSI7       |                  |                 |
| 10  | KSO0       |                  |                 |
| 11  | KSO1       |                  |                 |
| 12  | KSO2       |                  |                 |
| 13  | KSO3       |                  |                 |
| 14  | KSO4       |                  |                 |
| 15  | KSO5       |                  |                 |
| 16  | KSO6       |                  |                 |
| 17  | KSO7       |                  |                 |
| 18  | KSO8       |                  |                 |
| 19  | KSO9       |                  |                 |
| 20  | KSO10      |                  |                 |
| 21  | KSO11      |                  |                 |
| 22  | KSO12      |                  |                 |
| 23  | KSO13      |                  |                 |
| 24  | KSO14      |                  |                 |
| 25  | KSO15      |                  |                 |
| 26  | GND        |                  |                 |
| 27  | CAPS_P     |                  | 5V Supply       |
| 28  | CAPS_N     |                  |                 |
| 29  | KBL_N      |                  |                 |
| 30  | KBL_P      |                  | 5V supply (PWM) |
| 31  | KBL_N      |                  |                 |
| 32  | KBL_P      |                  | 5V supply (PWM) |
| 33  | GND        |                  |                 |
| 34  | TP_SCL     |                  |                 |
| 35  | TP_INT     |                  |                 |
| 36  | TP_SDA     |                  |                 |
| 37  | GND        |                  |                 |
| 38  | BOARD_ID   |                  |                 |
| 39  | Reserved   | Not connected    |                 |
| 40  | 5VS        |                  | 5V              |
| 41  | 5VALW      | Always on supply | 5V              |
| 42  | USB_DM     |                  |                 |
| 43  | GND        |                  |                 |
| 44  | USP_DP     |                  |                 |
| 45  | EC_CONTROL |                  |                 |
| 46  | SWITCH     |                  |                 |
| 47  | LED_R      |                  |                 |
| 48  | LED_G      |                  |                 |
| 49  | LED_B      |                  |                 |
| 50  | LED_COM    |                  | 5V              |
| 51  | Reserved   | Not connected    |                 |
