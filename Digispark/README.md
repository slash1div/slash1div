# Digispark USB Code
## Requirements:
[Digispark USBs ($20 for 5)](https://www.amazon.com/AiTrip-Digispark-Kickstarter-Attiny85-Development/dp/B0836WXQQR)

[A computer](https://i.ebayimg.com/images/g/kpIAAOSwhrRfxT2F/s-l300.jpg)

[Arduino IDE](https://www.arduino.cc/en/software)

## Setup:
File>Prefrences then add https://raw.githubusercontent.com/digistump/arduino-boards-index/master/package_digistump_index.json to Additional Boards Manager URLs

Tools >Board "somethinghere">Boards Manager

Type: Contributed

Install Digistump AVR Boards then close out of that window

Tools >Board "somethinghere">Digistump AVR Boards>Digispark (Default - 16.5mhz)

## Uploading Code:
Paste in something like the RickRoll from the repo into the Arduino code editor.

Hit the upload (->) button on the top.

When it says to plug in the USB, plug it in.

As soon as it is done, unplug the USB otherwise the code will execute.

Enjoy.
