# Specifies where the BIF partition attributes required for BOOT.BIN should be (in this repo),
# since we're using pregenerated FSBL and bitstream files from Petalinux, instead of generating
# them within Yocto.

PROVIDES += " virtual/bootbin bootbin"
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

BIF_PARTITION_IMAGE[fsbl] := "${THISDIR}/files/zynq_fsbl.elf"
BIF_PARTITION_IMAGE[bitstream] := "${THISDIR}/files/system_top.bit"
BIF_PARTITION_DEPENDS[fsbl] = ""
BIF_PARTITION_DEPENDS[bitstream] = ""

# some debugging tasks
python do_showbif() {
    fp = d.getVar("BIF_FILE_PATH", True)
    biffd = open(fp, 'r')
    bb.warn('BIF:\n' + biffd.read())
    biffd.close()
}

# do_showuboot() {
#     bbwarn "${BIF_PARTITION_IMAGE}"
# }

addtask do_showbif
