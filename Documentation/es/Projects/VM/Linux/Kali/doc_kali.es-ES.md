# Kali

## Introducción

Kali Linux es una distribución basada en Debian GNU/Linux diseñada principalmente para la auditoría y seguridad informática en general.

## Página oficial

La página oficial es:

https://www.kali.org/

## Herramientas

* [Packer](../../../Documentation/es/Tools/Packer/doc_packer.es-ES.md)
* Virtualbox

## Script

La ruta del script del repositorio es:

Virtual Images\Linux\Kali

## Pasos de ejecución

Antes de la ejecución del scrit, deberemos de sustituir dentro del propio script los siguientes parámetros:

* Vagrantfile
    - virtualbox.vm.hostname = "virtualbox-ubuntu1804"
    - ip: "172.16.3.2"

* kali-linux-20xx.xx.json
    - "version": ""
    - "ssh_username": "vagrant"
    - "ssh_password": "vagrant"

* scripts/tools_kali.sh
    - poner la secuencia de aplicaciones a instalar.

* http/preseed-kali.sh
    - poner los usuarios usuarios deseados por defecto "vagrant".


Una vez actualizado el script, efectuamos los siguientes pasos:

1. Validamos el estado del script con Packer

```
packer validate kali-linux-20xx.xx.json
```

2. Iniciamos la creación de la imagen mediante el comando:
```
packer build kali-linux-20xx.xx.json
```

Podemos ver como se ejecuta en Virtualbox todo el proceso del script hasta finalizarlo:


Cuando el proceso finaliza, la máquina se destruye.


El resultado de la imagen la tenemos en la carpeta "output-virtualbox-iso".




