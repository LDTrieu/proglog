package main

import (
	"log"
	"proglog/internal/server"
)

func main() {
	log.Println("AA")
	srv := server.NewHTTPServer(":8080")
	log.Println(srv.ListenAndServe())

}
