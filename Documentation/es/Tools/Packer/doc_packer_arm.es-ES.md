# Herramienta Packer ARM Builder

## Requisitos

Para poder usar packer ARM, es necesario tener sistema operativo Linux en cualquiera de sus sabores y tener instalado los siguientes paquetes:

* git
* unzip
* qemu-user-static
* e2fsprogs
* dosfstools
* bsdtar
* Go

Para instalarlos, ejecutar los siguientes comandos:

- sudo apt-get install git
- sudo apt-get install unzip
- sudo apt-get install qemu-user-static
- sudo apt-get install e2fsprogs
- sudo apt-get install dosfstools
- sudo apt-get install bsdtar

Instalar GoLang

[Pasos para instalar GoLang](Documentation/es/Tools/GoLang/installation/linux_installation.es-ES.md)

## Instalar Packer ARM

git clone https://github.com/mkaczanowski/packer-builder-arm
cd packer-builder-arm
go mod download
go build


sudo mv packer-builder-arm /usr/local/bin/
sudo mv packer-builder-arm $HOME/.packer.d/plugins


* [Ejecución en Linux](Documentation/es/Tools/Packer/installation/linux_execution.es-ES.md)
