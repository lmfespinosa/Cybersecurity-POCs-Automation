# Ejecución en Linux

## Pasos de instalación de Packer

1. Clonar el repositorio de packer:
    ```
    $ mkdir -p $(go env GOPATH)/src/github.com/hashicorp && cd $_
    $ git clone https://github.com/hashicorp/packer.git
    $ cd packer
    ```
2. Compilar packer y poner el fichero binario en la ruta ./bin/:
    ```
    $ make dev
    ```

## 2 forma de instalación de Packer

1. Descargar Packer de la página oficial:
    ```
    wget https://releases.hashicorp.com/packer/1.4.5/packer_1.4.5_linux_amd64.zip
    ```
2. Descomprimir el fichero:
    ```
    unzip packer_1.4.5_linux_amd64.zip 
    ```

3. Mover el fichero a /usr/local/bin:
    ```
    sudo mv packer /usr/local/bin/
    ```