obj-m := mt7601u.o

mt7601u-objs := src/usb.o src/init.o src/main.o src/mcu.o src/trace.o \
                src/dma.o src/core.o src/eeprom.o src/phy.o src/mac.o \
                src/util.o src/debugfs.o src/tx.o

KERNELDIR := /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

default:
	@echo "Compilando MT7601U para kernel $(shell uname -r)"
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules

clean:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) clean
	rm -rf *.ko *.o *.mod.c *.mod.o *.order *.symvers .tmp_versions

load:
	sudo insmod mt7601u.ko
	@echo "✅ Módulo cargado"
	lsmod | grep mt7601u

unload:
	sudo rmmod mt7601u
	@echo "✅ Módulo descargado"

install:
	sudo cp mt7601u.ko /lib/modules/$(shell uname -r)/kernel/drivers/net/wireless/
	sudo depmod -a
	@echo "✅ Módulo instalado"

status:
	@echo "=== Estado del módulo ==="
	lsmod | grep mt7601u || echo "❌ No cargado"
	@echo ""
	@echo "=== Últimos mensajes del kernel ==="
	sudo dmesg | grep -i mt7601 | tail -10
