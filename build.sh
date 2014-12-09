#!/usr/bin/sh

echo "===== make ====="
make
echo "===== install modules ====="
sudo make modules_install
echo "===== make bzImage ====="
make bzImage
