## DockerMultiStage-Centrone-Sgro

Para correr la imagen se debe:

# 1. clonar el repositorio

    $ git clone https://github.com/TadeoLu/DockerMultiStage-Centrone-Sgro.git
  
# 2. generar la imagen docker  

    $ docker build -t spring-boot .

# 3. correr la imagen docker

    $ docker run -p 8080:8080 spring-boot
