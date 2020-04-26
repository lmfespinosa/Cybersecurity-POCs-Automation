# Kali

## Introduction

Kali Linux is a Debian GNU / Linux based distribution designed primarily for general computer security and auditing.

## Official website

The official page is:

https://www.kali.org/

## Tools

* [Packer](../../../../../Documentation/en/Tools/Packer/doc_packer.en-GB.md)
* [Packer ARM](../../../../../Documentation/en/Tools/Packer/doc_packer_arm.en-GB.md)
* [GoLang](../../../../../Documentation/en/Tools/GoLang/doc_golang.en-GB.md)

## Script

The repository script path is:

RaspberryPi\Kali

## Execution steps

Before executing the scrit, we must replace the following parameters within the script itself:

* kali-linux-20xx.xx.json
    - data you need

Once the script has been updated, we carry out the following steps:

1. We validate the state of the script with Packer

```
packer validate kali-linux-20xx.xx.json
```

2. We start creating the image using the command:
```
packer build kali-linux-20xx.xx.json
```

We can see how the entire script process runs until it is finished in Virtualbox:


The result of the image we have in the folder itself.
