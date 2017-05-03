# cmake_cxx_go

We add some custom CMake functions to support golang including `go get`, `go build`, `go install`.

## custom functions

1. `ExternalGoProject_Add`

```
ExternalGoProject_Add(go_redis github.com/hoisie/redis)
```

2. `ADD_GO_EXECUTABLE`

```
ADD_GO_EXECUTABLE(redis_lister    # executable name
                  redis_lister.go # `package main` source file
                  go_redis)       # everything else is a dependency
```

3. new `CMAKE_GO_FLAGS` CMake variable.

## cmake build and install

```
mkdir build && cmake ..
cmake ..
make && make install
```