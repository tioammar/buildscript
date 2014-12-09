#!/usr/bin/sh


kernel_name="linux-tioammar"

echo "===== delete duplicate files from /boot/ ====="
sudo rm /boot/vmlinuz-${kernel_name}
sudo rm /boot/initramfs-${kernel_name}.img
sudo rm /boot/System.map-${kernel_name}
sudo rm /boot/System.map
echo "===== copy boot files ====="
sudo cp -v arch/x86/boot/bzImage /boot/vmlinuz-${kernel_name}
echo "===== create initramfs ======"
sudo mkinitcpio -k 3.14.25-linux-tioammar -c /etc/mkinitcpio.conf -g /boot/initramfs-${kernel_name}.img
echo "===== copy System.map ======"
sudo cp System.map /boot/System.map-${kernel_name}
sudo ln -sf /boot/System.map-${kernel_name} /boot/System.map