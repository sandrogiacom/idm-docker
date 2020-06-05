# idm-docker

## Alguns comandos uteis:

Build da Imagem:

`docker build -t idm/idm-docker .`

Run:

`docker run --name idm-docker -p 8081:8080 idm/idm-docker:latest`

Listando a imagem:

`docker images | grep idm-docker`

Acesso:

http://localhost:8081/hello

jlink --compress=2 --add-modules java.base --output /jlinked
