# Ejecución en Windows

## Pasos de ejecución de Packer

1. Descargar la versión de terraform para Windows de la página oficial (https://www.packer.io/downloads.html).
2. Para cada proyecto, copiar en la ruta raiz de cada script el ejecutable.
3. Abrimos la consola de Windows.
4. Ejecutamos el Comando de validacion del script:
    ```
    packer.exe validate nombe_script.json 
    ```
5. Ejecutamos el comando de aprovisionamiento:
    ```
    packer.exe build nombe_script.json 
    ```
