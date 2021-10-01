# docker-golang-http-server

golang http server

This project servers as scaffold to buid a dockerimage running any frontend project (vue, angular, react, svelte ...) and serve it into a running docker container.

# Objectives

This is a golang server for use in frontend projects. I will serve the dist directory using gin gonic library for goland in a docker container, ready to be deployed to a production environment.
## Golang project initializacion (only needed on blank project, not required if downloaded from repo)

First, download libraries, and assure that no go.mod and go.sum files exist at root level.

    go mod init mfy/server -> init golang server project
    go get -u github.com/gin-gonic/gin -> get gin libraries used to serve http

# Server.go explanation

1. First, declare package:

    package main

2. Second, add to server.go source code.

    import (
	"net/http"
	"github.com/gin-gonic/gin"
)

3. static files are served as defined in server.go 

    func main() {
        gin.ForceConsoleColor()
        router := gin.Default()
        router.StaticFS("/", http.Dir("dist"))
        router.Run(":5000")
    }

## Running app at local environment

    Execute run_local_server.sh
    access http://localhost:5000
    Static files from dist directory are served
## Build a docker image containing the app at /dist

    build_docker_server.sh
    access http://localhost:5000
## Execute docker image containing the app exposing at port 5000

    run_docker_server.sh 
    access http://localhost:5000
