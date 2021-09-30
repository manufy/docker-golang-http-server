package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {
	gin.ForceConsoleColor()
	router := gin.Default()
	router.StaticFS("/", http.Dir("dist"))
	router.Run(":5000")
}
