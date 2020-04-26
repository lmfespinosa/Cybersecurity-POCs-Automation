# Kali

## Introducción

Kali Linux es una distribución basada en Debian GNU/Linux diseñada principalmente para la auditoría y seguridad informática en general.

## Página oficial

La página oficial es:

https://www.kali.org/

## Herramientas

* [Packer](https://github.com/lmfespinosa/Cybersecurity-POCs-Automation/blob/master/Documentation/es/Tools/Packer/doc_packer.es-ES.md)
* [Packer ARM](https://github.com/lmfespinosa/Cybersecurity-POCs-Automation/blob/master/Documentation/es/Tools/Packer/doc_packer_arm.es-ES.md)
* [GoLang](https://github.com/lmfespinosa/Cybersecurity-POCs-Automation/blob/master/Documentation/es/Tools/GoLang/doc_golang.es-ES.md)

## Script

La ruta del script del repositorio es:

Virtual Images\Linux\Kali

## Pasos de ejecución

Antes de la ejecución del scrit, deberemos de sustituir dentro del propio script los siguientes parámetros:

* kali-linux-20xx.xx.json
    - datos que necesites


Una vez actualizado el script, efectuamos los siguientes pasos:

1. Validamos el estado del script con Packer

```
packer validate kali-linux-20xx.xx.json
```

2. Iniciamos la creación de la imagen mediante el comando:
```
packer build kali-linux-20xx.xx.json
```

Cuando el proceso finaliza, la máquina se destruye.


El resultado de la imagen la tenemos en la carpeta.