# Proyecto "Hola Mundo" en Flask

Este es un proyecto simple en **Python** usando **Flask** que muestra un mensaje de "Hola Mundo" en el navegador. El proyecto está dockerizado, por lo que puedes ejecutarlo fácilmente en cualquier sistema que tenga **Docker** instalado.

## Requisitos

- Docker instalado en tu sistema. [Instrucciones de instalación de Docker](https://docs.docker.com/get-docker/)

# h1 Configuración y Ejecución 8-)

# h2 1 Clonar el repositorio de github 

git clone https://github.com/Alexander2198/pythonHola
cd pythonHola

# h2 2 Construir la imagen de Docker 
docker build -t flask-app .

# h2 3 Ejecutar el contenedor 
docker run -p 5000:5000 flask-app

y listo podremos ingresar al hola mundo :D

[id]: https://octodex.github.com/images/dojocat.jpg  "The Dojocat"