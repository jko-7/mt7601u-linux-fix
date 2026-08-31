# MT7601U Linux Driver

Driver para adaptadores WiFi USB con chipset **MediaTek MT7601U** (ID USB: `148f:7601`).

## 📋 Requisitos

- Probado en 7.0.0-30-generic
- Headers del kernel: `linux-headers-$(uname -r)`
- Compilador GCC y herramientas de build

## 🚀 Instalación rápida

```bash
git clone https://github.com/jko-7/mt7601u-linux-fix.git
cd mt7601u-linux-fix
make
sudo make load
sudo make install
