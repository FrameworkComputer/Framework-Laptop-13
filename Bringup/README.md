# FAQ

### How do I get started?

There's [a guide](https://community.frame.work/t/getting-started-guide-with-a-bare-motherboard/20115) on the Framework forums 
that you should follow!

### What kind of chargers should I use for powering the Mainboard?

Technically, for charging the battery, the Mainboard can use USB-C chargers from 15W to 100W USB. However, if you want to run 
the Mainboard battery-less, it's been said you should use a PSU of 60W and above.

[Quote from this forum thread:](https://community.frame.work/t/usb-c-charging/447/63)

> @Shawn_Lewis I would not recommend a power supply below 60W if not running with a battery, remember PL2 can allow the cpu to go well above 28W for seconds at a time. Plus there are plenty of things outside the CPU package consuming power, such as the NVME drive, which some models can burst to several W.
> If you have 4 power hungry usb-c devices plugged in, they can consume a max of 37.5W as well.
> Plus there is some regulator loss.
> So depending on what you are doing, and what is plugged in I would recommend 60W to 100W.

If you're looking to use your Mainboard with a battery, be aware that, if your charger switches to 15V, [you might have 
battery charging issues.](https://community.frame.work/t/usb-pd-15v-mode-issue/10618/14)

Also, if your Mainboard runs too old of a BIOS revision, you might need a BIOS update to make it work with 60W chargers, [as 
described here.](https://community.frame.work/t/getting-started-guide-with-a-bare-motherboard/20115)

### How to get an external monitor output on the motherboard?

Use a USB-C to DP adapter (adapting DisplayPort further to VGA/HDMI if necessary), or one of the expansion cards with a 
display output. Both of these options are essentially the same, since video output expansion cards are USB-C to DP adapters 
with extra circuitry to convert the USB-C DP to HDMI in case of the HDMI card.

### Is BIOS available through the USB-C display?

[There are reports](https://community.frame.work/t/can-you-remove-the-top-screen/4372/4) that the BIOS settings menu is available
through an external display!

### What's the key to get into BIOS?

F2. You don't have to hold Fn, even with Fn lock enabled. You need to tap it rapidly.

### Is USB3/DisplayPort/Thunderbolt/charging available on all USB-C ports?

Yes!

### Can I drive the Framework display without using the Mainboard, i.e. through DisplayPort/HDMI/etc?

Yes, there's an eDP-DisplayPort adapter that's known to work! [Learn more 
here.](https://community.frame.work/t/hdmi-controller-board-for-display-panel/17513/15)

### Can I get GPIOs from the Mainboard?

There's a few ways to go about that.

- First, there are a few outputs on the Mainboard that you can already make use of. For instance, [on the input cover 
connector,](https://github.com/FrameworkComputer/Mainboard/blob/main/Electrical/Pinouts.md) there's keyboard backlight and 
caps lock outputs available, as well as fingerprint sensor R/G/W signals. All of these are PWM-able outputs that you can 
switch from existing software, i.e. Linux userspace. Using the fingerprint sensor signals for instance, you could drive an 
LED strip with addition of some hardware.
- Through EC firmware hacking, you could repurpose the aforementioned signals, as 
well as keyboard rows/columns and other pins as GPIOs. There's also a tamper switch on the Mainboard that could be repurposed 
as a general-purpose switch, also through firmware hacking. At the moment, there's no known project out there that does this.
- Using one of the I2C ports available, you can attach an I2C GPIO expander chip/breakout and get GPIOs through that - 
issuing I2C commands directly from userspace, or perhaps using the Linux kernel's overlay and driver for the expander you're 
using.

### Other Mainboard-related project questions?

You have two channels for these. For a start, you can ask your questions in the [Framework community 
forums.](https://community.frame.work/c/developer-program/85) You can also use the [Framework Discord 
server](https://discord.com/invite/Framework) and ask your questions the `#projects` channel - we'll be glad to help!
