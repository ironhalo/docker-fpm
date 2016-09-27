# dockerhub.artifactory.davita.com/docker-fpm

Originally taken from tenzer/fpm with an attempt to make the image smaller.

Image with [FPM](https://github.com/jordansissel/fpm) pre-installed with support for all input and output options, except the Solaris and Mac OS X outputs due to missing support in Debian for their formats.

This image goes nicely with [Berth](https://github.com/FalconSocial/berth) as a quick, easy and reproduceable solution for creating and converting packages between all sorts of different formats.

The following input types are supported:

- Ruby gems
- Python packages
- PHP Pear packages
- Plain directories
- tar.gz archives
- RPM packages
- DEB packages
- Node.js NPM packages

The following output types are suppoted:

- DEB packages
- RPM packages
- Plain directories
- tar.gz archives

Please see either `fpm --help` or the [FPM wiki](https://github.com/jordansissel/fpm/wiki#usage) for more information about how to use FPM.
