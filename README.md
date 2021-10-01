# docker-golang-http-server

golang http server

This project serves as scaffold to buid a dockerimage running any frontend project (vue, angular, react, svelte ...) and serve it into a running docker container.

# Prerequisites

    Docker and go installed 
# Objectives

This is a golang server for use in frontend projects. I will serve the dist directory using gin gonic library for goland in a docker container, ready to be deployed to a production environment.
## Golang project initializacion 

1. Execute 

    init_go_server.sh


This script will serve thedownload libraries, and assure that no go.mod and go.sum files exist at root level.

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

 1. Execute this script and access http://localhost:5000
 
        run_local_server.sh


Static files from dist directory are served
## Build a docker image containing the app at /dist

 1. Execute this script and access http://localhost:5000

    build_docker_server.sh


## Execute docker image containing the app exposing at port 5000

1. Execute this script and access http://localhost:5000

    run_docker_server.sh 


