# MT7601U Linux Driver Fix

Fix for **MediaTek MT7601U USB WiFi adapters** that fail to initialize on newer Linux kernels.

**USB ID:** `148f:7601`

> **Tested kernel:** `7.0.0-30-generic`

---

## 🔧 Problem

The adapter is detected correctly by USB and the `mt7601u` driver loads the firmware, but the device fails during initialization with repeated USB vendor request timeouts:

```text
mt7601u 1-6:1.0: ASIC revision: 76010001 MAC revision: 76010500
mt7601u 1-6:1.0: Firmware Version: 0.1.00 Build: 7640
mt7601u 1-6:1.0: Vendor request req:02 off:0a44 failed:-110
...
mt7601u 1-6:1.0: probe with driver mt7601u failed with error -110
```

Error `-110` corresponds to a timeout (`ETIMEDOUT`) during communication with the device.

---

## Compatibility

| Component | Tested |
|---|---|
| Chipset | MediaTek MT7601U |
| USB ID | `148f:7601` |
| Linux Kernel | `7.0.0-30-generic` |
| Driver | `mt7601u` |

---

## Requirements

```bash
sudo apt install linux-headers-$(uname -r) build-essential
```

---

## Installation

```bash
git clone https://github.com/jko-7/mt7601u-linux-fix.git
cd mt7601u-linux-fix
make
sudo make load
sudo make install
```

---

## Hardware tested

MediaTek MT7601U

**USB ID:** `148f:7601`

---

## Kernel tested

`7.0.0-30-generic`

---

Other MT7601U devices and kernel versions have not been fully tested.
