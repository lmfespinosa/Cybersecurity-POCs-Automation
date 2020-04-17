# Kali

## Introduction

Kali Linux is a Debian GNU/Linux based distribution designed primarily for general IT security and auditing.

## official Web Page

The official web page is:

https://www.kali.org/

## Tools

* [Packer](../../../../../../Documentation/en/Tools/Packer/doc_packer.en-GB.md)
* Virtualbox


## Script

You can find the script at:

Virtual Images\Linux\Kali

## Execution Steps

Before the scrit execution, ypu have to replace the next parameters into the script:

* Vagrantfile
    - virtualbox.vm.hostname = "virtualbox-ubuntu1804"
    - ip: "172.16.3.2"

* kali-linux-20xx.xx.json
    - "version": ""
    - "ssh_username": "vagrant"
    - "ssh_password": "vagrant"

* scripts/tools_kali.sh
    - secuence of command application for install.

* http/preseed-kali.sh
    - user "vagrant".


Once the script has been updated, we carry out the following steps:

1. Check the script status with Packer:

```
packer validate ubuntu_jitsi.json
```

2. Start the image building with the command:
```
packer build ubuntu_jitsi.json
```
We can see all the progress in VirtualBox:

When the process is finished, the machine it will be destroy.

The result is in the folder "output-virtualbox-iso".