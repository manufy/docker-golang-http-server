# docker-golang-http-server

golang http server

# Objectives

This is a golang server for use in frontend projects. I will serve the dist directory using gin gonic library for goland in a docker container, ready to be deployed to a production environment.
## Project initializacion (not required if downloaded from repo)

First, download libraries.

    go mod init mfy/server -> install golang libs
    go get -u github.com/gin-gonic/gin

Second, add to source code.

    import "github.com/gin-gonic/gin"
    import "net/http"

## Run app at http://localhost:5000/server

    Execute serve.sh

## Build mfy/golang-server

    Execute build_docker.sh
## Scripts

build_docker.sh -> build container serving app at internal port 5000
serve.sh -> run server at port 5000
