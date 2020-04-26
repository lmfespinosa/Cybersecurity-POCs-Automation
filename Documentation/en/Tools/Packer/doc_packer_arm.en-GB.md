# Packer ARM Builder Tool

## Requisites

To use packer ARM, you must have a Linux operating system in any of its flavors and have the following packages installed:

* git
* unzip
* qemu-user-static
* e2fsprogs
* dosfstools
* bsdtar
* Go

To install them, run the following commands:

- sudo apt-get install git
- sudo apt-get install unzip
- sudo apt-get install qemu-user-static
- sudo apt-get install e2fsprogs
- sudo apt-get install dosfstools
- sudo apt-get install bsdtar

Install GoLang

[Steps for install GoLang](Documentation/en/Tools/GoLang/installation/linux_installation.en-GB.md)

## Packer ARM Install

git clone https://github.com/mkaczanowski/packer-builder-arm
cd packer-builder-arm
go mod download
go build


sudo mv packer-builder-arm /usr/local/bin/
sudo mv packer-builder-arm $HOME/.packer.d/plugins


* [Execute Packer in Linux](Documentation/en/Tools/Packer/installation/linux_execution.en-GB.md)
