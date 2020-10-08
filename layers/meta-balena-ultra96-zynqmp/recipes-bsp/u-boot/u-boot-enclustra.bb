require recipes-bsp/u-boot/u-boot.inc

DEPENDS += " bison-native flex"

UBOOT_VERSION = "v2019.01"
# not sure if this is correct, but we're setting it because it throws an error otherwise
UBOOT_KCONFIG_SUPPORT = "1"

UBRANCH = "master"

# Change U-Boot source to use Enclustra's
SRC_URI = "git://github.com/enclustra-bsp/xilinx-uboot.git;protocol=https"
SRCREV = "19f66deb684506c1589ef5a28008d514a5b47415"
TUNE_ARCH = "arm"

FILESEXTRAPATHS_prepend := "${THISDIR}/u-boot:"
FILESEXTRAPATHS_prepend := "${THISDIR}/u-boot-enclustra:"

LICENSE = "GPLv2+"
LIC_FILES_CHKSUM = "file://README;beginline=1;endline=4;md5=744e7e3bb0c94b4b9f6b3db3bf893897"

S = "${WORKDIR}/git"
