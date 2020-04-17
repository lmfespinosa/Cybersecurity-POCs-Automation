# Ejemplo

Ficheros importantes:
- ubuntu.json

Este fichero es el que configura packer.

```js
{
  // Es posible definir variables en packer. No son tan utilizadas
  "variables": {
    "version": ""
  },
  "provisioners": [
    // Hay varios tipos de provisionadores comunes.
    {
      // Este script prepararía ansible para ejecutar con ansuble-local
      "type": "shell",
      "execute_command": "echo 'vagrant' | {{.Vars}} sudo -S -E bash '{{.Path}}'",
      "script": "scripts/ansible.sh"
    },
    {
      // Losa scripts de shell son los más usados probablemente
      "type": "shell",
      "execute_command": "echo 'vagrant' | {{.Vars}} sudo -S -E bash '{{.Path}}'",
      "script": "scripts/setup.sh"
    },
    {
      // Ansible es muy usado con packer, o bien mediante ansible local o bien usando ansible desde el ordenador donde se ejecuta packer
      "type": "ansible-local",
      "playbook_file": "../shared/main.yml",
      "galaxy_file": "../shared/requirements.yml"
    }
  ],
  "builders": [
    {
      "type": "virtualbox-iso",
      "boot_command": [
        // Esta lista de comandos basicamente navega por los menus de Ubuntu
        // Cada distribucion es distinta en este aspecto y suele cambiar de version en version.
        // Basicamente lo que queremos es configurar lo mínimo y navegar hasta activar el preseed o equivalente
        "<esc><wait>",
        "<esc><wait>",
        "<enter><wait>",
        "/install/vmlinuz<wait>",
        " auto<wait>",
        " console-setup/ask_detect=false<wait>",
        " console-setup/layoutcode=us<wait>",
        " console-setup/modelcode=pc105<wait>",
        " debconf/frontend=noninteractive<wait>",
        " debian-installer=en_US<wait>",
        " fb=false<wait>",
        " initrd=/install/initrd.gz<wait>",
        " kbd-chooser/method=us<wait>",
        " keyboard-configuration/layout=USA<wait>",
        " keyboard-configuration/variant=USA<wait>",
        " locale=en_US<wait>",
        " netcfg/get_domain=vm<wait>",
        " netcfg/get_hostname=vagrant<wait>",
        " grub-installer/bootdev=/dev/sda<wait>",
        " noapic<wait>",
        " preseed/url=http://{{ .HTTPIP }}:{{ .HTTPPort }}/preseed.cfg<wait>",
        " -- <wait>",
        "<enter><wait>"
      ],
      "boot_wait": "10s",
      "disk_size": 81920,
      "guest_os_type": "Ubuntu_64",
      "headless": true,
      "http_directory": "http",
      // Es posible especificar URLs locales. Esto es muy útil en CI/CD
      // para acelerar la construcción de imágenes. También en local al desarrollar
      "iso_urls": [
        "iso/ubuntu-18.04.4-server-amd64.iso",
        "http://cdimage.ubuntu.com/ubuntu/releases/bionic/release/ubuntu-18.04.4-server-amd64.iso"
      ],
      "iso_checksum_type": "sha256",
      // Es muy importante cuando usamos una imagen local poner un check del hash de la imagen
      // los errores son bastante frequentes y las imagenes estan muy comprimidas
      "iso_checksum": "73b8d860e421000a6e35fdefbb0ec859b9385b0974cf8089f5d70a87de72f6b9",
      // Esto configura como nos conectaremos por ssh para ese tipo de provisionador.
      // Esto NO configura este usuario y contraseña!
      "ssh_username": "vagrant",
      "ssh_password": "vagrant",
      "ssh_port": 22,
      "ssh_wait_timeout": "10000s",
      "shutdown_command": "echo 'vagrant'|sudo -S shutdown -P now",
      "guest_additions_path": "VBoxGuestAdditions_{{.Version}}.iso",
      "virtualbox_version_file": ".vbox_version",
      "vm_name": "packer-ubuntu-18.04-amd64",
      "vboxmanage": [
        ["modifyvm", "{{.Name}}", "--memory", "1024"],
        ["modifyvm", "{{.Name}}", "--cpus", "1"]
      ]
    }
  ],
  "post-processors": [
    [
      // De los post-procesadores más comunes, vagrant es uno de los principales
      {
        "output": "builds/{{.Provider}}-ubuntu1804.box",
        "type": "vagrant"
      }
    ]
  ]
}
```