DEPENDS = "bootbin"

IMAGES_FSTYPES_ultra96-zynqmp = "resinos-img"
RESIN_BOOT_PARTITION_FILES = "boot.bin: \
                              uEnv.txt: \
                              uImage: \
                              "
RESIN_BOOT_PARTITION_FILES_remove = "resin-logo.png:/splash/resin-logo.png \
                                     os-release:/os-release \
                                     system-connections/resin-sample.ignore:/system-connections/resin-sample.ignore \
                                     system-connections/README.ignore:/system-connections/README.ignore \
                                     "