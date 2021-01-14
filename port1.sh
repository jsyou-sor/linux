sudo cp arch/arm64/boot/Image.gz ./mount/
sudo cp arch/arm64/boot/dts/amlogic/meson64_odroidc4.dtb ./mount/amlogic
sudo sync
sudo umount ./mount
