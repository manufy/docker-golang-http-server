# docker-golang-http-server

golang http server

# Objectives

This is a golang server for use in frontend projects. I will serve the dist directory using gin gonic library for goland in a docker container, ready to be deployed to a production environment.
## Install

go mod init mfy/server
go get -u github.com/gin-gonic/gin
import "github.com/gin-gonic/gin"
import "net/http"

## Scripts

build_docker.sh -> build container serving app at internal port 5000
serve.sh -> run server at port 5000
