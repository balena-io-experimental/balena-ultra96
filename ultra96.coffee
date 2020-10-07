deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
  version: 1
  slug: 'ultra96-zynqmp'
  state: 'experimental'
  aliases: [ 'ultra96' ]
  name: 'BalenaOS on avnet ultra96'
  arch: 'armv7hf'
  yocto:
    machine: 'ultra96-zynqmp'
    arch: 'armv7hf'
    name: 'zynq ultrascale+ on ultra96'
    image: 'resin-image'
    fstype: 'resinos-img'
    version: 'yocto-thud'
    deployArtifact: 'balena-image-ultra96.img'

  configuration:
    config:
      partition:
        primary: 1
      path: '/config.json'