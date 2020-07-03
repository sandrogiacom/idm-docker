# idm-docker

## Alguns comandos uteis:

Build da Imagem:

`build -t totvsidentity/idm-14-jre .`

Run:

`docker run --name idm-docker -p 8081:8080 totvsidentity/idm-14-jre:latest`

Listando a imagem:

`docker images | grep idm-docker`

Acesso:

http://localhost:8081/hello

