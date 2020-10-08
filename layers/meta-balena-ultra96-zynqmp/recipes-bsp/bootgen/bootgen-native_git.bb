# Recipe to build bootgen from Xilinx source files.

LICENSE = "Apachev2"
LIC_FILES_CHKSUM = "file://LICENSE;md5=c979df673927004a489691fc457facff"

SRC_URI = "git://github.com/Xilinx/bootgen;protocol=https"

IMAGE_INSTALL_append  = " libssl-dev"

PV = "1.0+git${SRCPV}"
SRCREV = "d18107e10a753dca76555eef265ad9d631e66db6"

PROVIDES = "bootgen-native"

S = "${WORKDIR}/git"

inherit native

do_configure () {
	:
}

do_compile () {
    bbnote 'Compiling bootgen...'
	oe_runmake
}

do_install () {
    # create bindir
	install -d ${D}${bindir}
    install ${S}/bootgen ${D}${BINDIR}
    bbnote 'Bootgen location is:  $(which bootgen)'
}

