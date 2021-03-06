
```
Autor       : Francisco Vargas Ruiz
Estado      : PENDIENTE DE PROBAR!
Curso       :
Area        : Sistemas operativos, instalaciones
Descripción : Instalación desatendida con Windows 10
Requisitos  : Windows 10, ImgBurn
Tiempo      :
```

# Instalación desatendida de Windows 10

**Enlaces de interés:**
* https://www.windowscentral.com/how-create-unattended-media-do-automated-installation-windows-10

**Entrega:**
* Informe detallado con capturas de pantalla, de la creación de una ISO de instalación desatendida de Windows 10.
* Demostrar al profesor en el aula el correcto funcionamiento de la imagen ISO en una máquina virtual.

# 1. Preparativos

## 1.1 Software

* Tenemos que tener la ISO de Windows 10 en nuestra máquina real.
* Descargar [Windows ADK installer for Windows 10](https://go.microsoft.com/fwlink/?linkid=873065).
* Instalar Windows ADK marcando la opción "Check the Deployment Tools package". Esta opción contiene "Windows System Image Manager".

## 1.2 Proyecto

* Importing Windows 10 image files to your PC
* Setting up an answer file environment

# 2. How to create a Windows 10 answer file

* Pass 1 windowsPE
    * Creating and modifying partitions
    * Defining the product key
* Pass 4 specialize
* Pass 7 oobeSystem

* How to save a Windows 10 answer file project
    * Removing unmodified components
    * Validating answer files
    * Saving the answer file `autounattend.xml`.

# 3 Adding the answer file to a USB installation media

* Use ImgBurn to add `autounattend.xml` file into Windows 10 ISO.
* Guardar la nueva ISO como `windows10-alumnoXX.iso`
* Comprobar el resultado en una nueva máquina virtual.
