# Framework Laptop Mainboard Pinouts

This is a list of connectors on the Framework Laptop Mainboard and the pinouts for them.
Note that not all signals listed in each pinout are actually connected on any given
version of Mainboard.  These are the overarching definitions of the pinouts with some
considerations for future generations that may or may not utilize the additional signals.

## Webcam Interface

IPEX 20879-030E connector used to interface to the Webcam Module.  Note that the Webcam Module
itself currently only uses a 12 pin connector using pins 19 through 30.  The remaining signals
are not connected.

| Pin | Signal   | Type (on Mainboard) | Notes                         |
|-----|----------|---------------------|-------------------------------|
| 1   | GND      |                     |                               |
| 2   | CSI_0N   | Input               | MIPI Lane 0                   |
| 3   | CSI_0P   | Input               | MIPI Lane 0                   |
| 4   | GND      |                     |                               |
| 5   | CSI_1N   | Input               | MIPI Lane 1                   |
| 6   | CSI_1P   | Input               | MIPI Lane 1                   |
| 7   | GND      |                     |                               |
| 8   | CSI_CLKN | Input               | MIPI Clock                    |
| 9   | CSI_CLKP | Input               | MIPI Clock                    |
| 10  | GND      |                     |                               |
| 11  | SYNC_CAM | Input/Output        | Camera FSIN (Frame Sync)      |
| 12  | SCL_CAM  | Input               |                               |
| 13  | SDA_CAM  | Input/Output        |                               |
| 14  | TS_SYNC  | Output              | Touchscreen frame sync        |
| 15  | TS_RST   | Output              | Touchscreen reset             |
| 16  | TS_INT   | Input               | Touchscreen interrupt         |
| 17  | TS_SDA   | Input/Output        | Touchscreen data              |
| 18  | TS_SCL   | Output              | Touchscreen data              |
| 19  | GND      |                     |                               |
| 20  | USB_DP   | Input/Output        | Touchscreen or camera USB 2.0 |
| 21  | USB_DM   | Input/Output        | Touchscreen or camera USB 2.0 |
| 22  | 3V3      |                     |                               |
| 23  | CAM_SW   | Input               | 3v3                           |
| 24  | MIC_CLK  | Output              | 1v8                           |
| 25  | MIC_DAT  | Input               | 1v8                           |
| 26  | MIC_SW   | Input               | 3v3                           |
| 27  | INT_ALS  | Input               | 3v3                           |
| 28  | SCL_ALS  | Output              | 3v3                           |
| 29  | SDA_ALS  | Input/Output        | 3v3                           |
| 30  | GND      |                     |                               |

## Display Interface

IPEX 20879-040E connector used to interface to an eDP display.  Note that there are signals
defined for both USB 2.0 and I2C touchscreens.  There is a PWM interface to control backlight
brightness, but the display currently used on the Framework Laptop converts that to a DC LED
control.

| Pin | Signal      | Description            |
|-----|-------------|------------------------|
| 1   | BL_POWER    | 12-17V backlight power |
| 2   | BL_POWER    |                        |
| 3   | BL_POWER    |                        |
| 4   | NC          |                        |
| 5   | GND         |                        |
| 6   | AUXP        |                        |
| 7   | AUXN        |                        |
| 8   | GND         |                        |
| 9   | EDP_TXP_0   |                        |
| 10  | EDP_TXN_0   |                        |
| 11  | GND         |                        |
| 12  | EDP_TXP_1   |                        |
| 13  | EDP_TXN_1   |                        |
| 14  | GND         |                        |
| 15  | EDP_TXP_2   |                        |
| 16  | EDP_TXN_3   |                        |
| 17  | GND         |                        |
| 18  | EDP_TXP_3   |                        |
| 19  | EDP_TXN_4   |                        |
| 20  | GND         |                        |
| 21  | EDP_HPD     | hotplug                |
| 22  | BLK_PWM_LCD | Backlight PWM          |
| 23  | BLK_OFF_N   | Backlight Enable       |
| 24  | NC          |                        |
| 25  | NC          |                        |
| 26  | 3V_EDP      | 3VS                    |
| 27  | 3V_EDP      |                        |
| 28  | 3V_EDP      |                        |
| 29  | 3V_TS       | 3VS for touchscreen    |
| 30  | 3V_TS       |                        |
| 31  | USB_DP      | USB                    |
| 32  | USB_DN      |                        |
| 33  | TS_EN       |                        |
| 34  | TS_RST      |                        |
| 35  | TS_INT_N    |                        |
| 36  | TS_SDA      |                        |
| 37  | TS_SCL      |                        |
| 38  | NC          |                        |
| 39  | GND         |                        |
| 40  | GND         |                        |

## Audio Board Interface

Hefeng AFC42-S15FMA-R3 ZIF connector that goes to the board that has the 3.5mm audio jack
as well as the hall effect lid sensor.  Note that there are likely other 15 pin ZIF connectors
that will work with the FFC we use, but these would be untested.

| Pin | Signal    |
|-----|-----------|
| 1   | A_GND     |
| 2   | HPOUT_L   |
| 3   | HPOUT_R   |
| 4   | SLEEVE    |
| 5   | SLEEVE    |
| 6   | SLEEVE    |
| 7   | RING      |
| 8   | RING      |
| 9   | RING      |
| 10  | A_GND     |
| 11  | JACK_PLUG |
| 12  | 3V3_HALL  |
| 13  | LID_OPEN  |
| 14  | BOARD_ID  |
| 15  | GND       |

## Speaker Interface

Hefeng AWA02-S04FIA-HF connector for the Speakers.  Note that there are many other footprint
compatible 4-pin connectors that are likely compatible.

| Pin    | Signal         |
|--------|----------------|
| SPK_RP | Right channel+ |
| SPK_RN | Right channel- |
| SPK_LP | Left channel+  |
| SKR_LN | Right channel- |

## Battery Interface

ACES 50458-01001-001 connector for the Battery.

| Pin | Signal   | Notes  |
|-----|----------|--------|
| 1   | BAT+     | 24 AWG |
| 2   | BAT+     | 24 AWG |
| 3   | BAT+     | 24 AWG |
| 4   | CLK_SMB  | SMBus  |
| 5   | DAT_SMB  | SMBus  |
| 6   | BATT_PRS |        |
| 7   | SYS_PRES |        |
| 8   | GND      | 24 AWG |
| 9   | GND      | 24 AWG |
| 10  | GND      | 24 AWG |

## Input Cover Interface

Amphenol 10156000-051100LF connector for the Input Cover.  This includes signals
for the Touchpad, Keyboard, and Fingerprint Reader.
