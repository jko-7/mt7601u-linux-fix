MT7601U Linux Driver Fix

Linux driver/fix for MediaTek MT7601U USB WiFi adapters.

USB ID: 148f:7601
Tested kernel: 7.0.0-30-generic

Compatibility
Component	Tested
Chipset	MediaTek MT7601U
USB ID	148f:7601
Linux Kernel	7.0.0-30-generic

This project has been tested with the hardware and kernel listed above. Other MT7601U devices and kernel versions may require additional testing.

Requirements

Install the required kernel headers and build tools:

sudo apt install linux-headers-$(uname -r) build-essential

Installation

Clone the repository:

git clone https://github.com/jko-7/mt7601u-linux-fix.git
cd mt7601u-linux-fix


Build and install:

make
sudo make load
sudo make install

What does this fix?

This project provides a fix for MT7601U USB WiFi adapters experiencing compatibility or initialization problems with newer Linux kernels.

Hardware

Currently tested with:

MediaTek MT7601U
USB ID: 148f:7601

Kernel

Tested successfully on:

7.0.0-30-generic


Other kernel versions have not been fully tested.

License

See the repository files for license information.
