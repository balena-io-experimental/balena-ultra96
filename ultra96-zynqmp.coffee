deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
	version: 1
	slug: 'ultra96-zynqmp'
	aliases: [ 'ultra96' ]
	name: 'Xilinx Ultra96 V2'
	arch: 'aarch64'
	state: 'experimental'

	instructions: commonImg.instructions
	gettingStartedLink:
		windows: 'http://docs.balena.io/ultra96-v2-zynqmp/nodejs/getting-started/#adding-your-first-device'
		osx: 'http://docs.balena.io/ultra96-v2-zynqmp/nodejs/getting-started/#adding-your-first-device'
		linux: 'http://docs.balena.io/ultra96-v2-zynqmp/nodejs/getting-started/#adding-your-first-device'
	supportsBlink: true

	yocto:
		machine: 'ultra96-zynqmp'
		image: 'balena-image'
		fstype: 'balenaos-img'
		version: 'yocto-thud'
		deployArtifact: 'balena-image-ultra96-zynqmp.balenaos-img'
		compressed: true

	options: [ networkOptions.group ]

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
