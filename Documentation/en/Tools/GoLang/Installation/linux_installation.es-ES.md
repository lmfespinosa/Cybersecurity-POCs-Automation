# Instalación de GoLang en Linux

## Pasos de instalación de GoLang

1. Descargamos el tarball de la página oficial:
    ```
    wget https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz
    ```
2. Descomprimimos el tarball:
    ```
    tar xvf go1.14.2.linux-amd64.tar.gz
    ```
3. Cambiamos los permisos:
    ```
    sudo chown -R root:root ./go
    ```
4. Movemos la carpeta:
    ```
    sudo mv go /usr/local
    ```
4. Eliminamos el fichero descargado:
    ```
    rm go1.14.2.linux-amd64.tar.gz
    ```

5. Añadimos GoLang al Path:
    ```
    sudo -i
    printf '#!/bin/bash \nexport GOPATH=$HOME/work \nexport PATH=$PATH:/usr/local/go/bin:$GOPATH/bin \n' > /etc/profile.d/go.sh
    ```
5. Nos deslogueamos:
    ```
    source /etc/profile.d/go.sh
    ```

5. Verificamos que GoLang está correctamente instalado:
    ```
    go version
    ```

# Download Go from google
wget https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz
 
# Unpack go
tar xvf go1.14.2.linux-amd64.tar.gz
 
# Change the owner
sudo chown -R root:root ./go
 
# move it
sudo mv go /usr/local
 
# Cleanup your workspace and delete the archive
rm go1.14.2.linux-amd64.tar.gz
 
# Add it to the PATH
sudo -i
printf '#!/bin/bash \nexport GOPATH=$HOME/work \nexport PATH=$PATH:/usr/local/go/bin:$GOPATH/bin \n' > /etc/profile.d/go.sh
 
# Logout by pressing STRG+D
source /etc/profile.d/go.sh
 
# Check if Go works
go version