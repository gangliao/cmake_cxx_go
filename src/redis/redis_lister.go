package main

import (
	"fmt"

	"github.com/davecgh/go-spew/spew"
	"github.com/hoisie/redis"
)

import "log"

func main() {
	var client redis.Client
	keys, err := client.Keys("*")
	if err != nil {
		log.Fatal("Could not retrieve keys")
	}
	fmt.Printf("There are %d keys\n", len(keys))
	for _, k := range keys {
		fmt.Printf("key: %s\n", k)
	}
	spew.Dump(keys)
}
