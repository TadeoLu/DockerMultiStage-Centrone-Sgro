## DockerMultiStage-Centrone-Sgro

Para correr la imagen se debe:

# 1. clonar el repositorio

    $ git clone https://github.com/TadeoLu/DockerMultiStage-Centrone-Sgro.git
  
# 2. generar las imagenes

    $ docker build -t spring-boot .
    $ docker build -t pesado -f dockerfileViejo .

# 3. correr las imagenes 

    $ docker run -p 8080:8080 spring-boot
    $ docker run -p 8080:8080 pesado

# 4. comparar el peso de las imagenes

    $ docker images
