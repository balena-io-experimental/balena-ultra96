IMAGE_FSTYPES_append_ultra96-zynqmp = " resinos-img"

# Customize resinos-img
RESIN_IMAGE_BOOTLOADER_ultra96-zynqmp = "u-boot-xlnx"
RESIN_BOOT_PARTITION_FILES_ultra96-zynqmp = " \
    ${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin:/${KERNEL_IMAGETYPE} \
    ${KERNEL_IMAGETYPE}-ultra96-zynqmp-rev1.0.dtb:/ \
    BOOT-ultra96-zynqmp.bin:/boot.bin \
    uEnv.txt:/ \
"