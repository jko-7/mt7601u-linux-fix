MT7601U Linux Driver Fix

Driver/fix para adaptadores WiFi USB con chipset MediaTek MT7601U, probado con el ID USB 148f:7601.

Diseñado para solucionar problemas de compatibilidad del MT7601U con kernels Linux recientes.

📋 Requisitos
Linux kernel 7.0.0-30-generic — probado
Headers del kernel:
sudo apt install linux-headers-$(uname -r)

GCC y herramientas de compilación:
sudo apt install build-essential

🚀 Instalación rápida
git clone https://github.com/jko-7/mt7601u-linux-fix.git
cd mt7601u-linux-fix
make
sudo make load
sudo make install

🔌 Hardware probado
Chipset: MediaTek MT7601U
USB ID: 148f:7601
Kernel: 7.0.0-30-generic

Este proyecto ha sido probado con el hardware y kernel indicados anteriormente. Otros dispositivos MT7601U y versiones de kernel pueden requerir pruebas adicionales.
