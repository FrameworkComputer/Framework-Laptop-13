# Webcam

## License

Framework Laptop 13 © 2022 by Framework Computer Inc is licensed under CC BY 4.0.
To view a copy of this license, visit http://creativecommons.org/licenses/by/4.0/

## Pinout

This is the ZIF connector that is on the Webcam Module itself.  The connector is
Kyocera 046809612110846+.  The ALS is CM32183A3OP.  The Mics are SPK0641HT4H.

| Pin | Signal  | Type         | Voltage | Notes                               |
|-----|---------|--------------|---------|-------------------------------------|
| 1   | GND     |              |         |                                     |
| 2   | USB_DP  | Input/Output | 3v3     | USB 2.0                             |
| 3   | USB_DM  | Input/Output | 3v3     | USB 2.0                             |
| 4   | 3V3     |              |         |                                     |
| 5   | CAM_SW  | Output       | 3v3     | State of camera privacy switch      |
| 6   | MIC_CLK | Input        | 1v8     | Microphone PDM clock                |
| 7   | MIC_DAT | Output       | 1v8     | Microphone PDM data (2 channel L/R) |
| 8   | MIC_SW  | Output       | 3v3     | State of microphone privacy switch  |
| 9   | INT_ALS | Output       | 3v3     | Interrupt from ALS                  |
| 10  | SCL_ALS | Input        | 3v3     |                                     |
| 11  | SDA_ALS | Input/Output | 3v3     |                                     |
| 12  | GND     |              |         |                                     |
