ExternalGoProject_Add(go_redis github.com/hoisie/redis)
ExternalGoProject_Add(go_spew  github.com/davecgh/go-spew/spew)

add_go_executable(redis_lister    # executable name
    go_spew
    go_redis)       # everything else is a dependency
