# docker-golang-http-server

golang http server

This project serves as scaffold to buid a dockerimage running any frontend project (vue, angular, react, svelte ...) and serve it into a running docker container.

Use cases:

        - You have a web app in a modern framework (react, vue svelte, angular) bulding a dist directotry and you want a minimal container with an http server to expose it.

# Prerequisites

    Docker and go installed 
# Objectives

This is a golang server for use in frontend projects. I will serve the dist directory using gin gonic library for goland in a docker container, ready to be deployed to a production environment.
## Golang http server project build and local run 

1. clone project and execute 

        ./build_all.sh

2. Execute server with 

        ./server
## Server.go explanation

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

## Build a docker image containing the app at /dist

 1. Execute this script and access http://localhost:5000

        ./build_docker_server.sh


## Execute docker image containing the app at /dist and exposing at port 5000

1. Execute this script and access http://localhost:5000

        ./run_docker_server.sh 

Manuel Fernández Yáñez 2021


