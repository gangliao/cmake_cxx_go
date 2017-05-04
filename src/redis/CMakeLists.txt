ExternalGoProject_Add(go_redis github.com/hoisie/redis)
ExternalGoProject_Add(go_spew github.com/davecgh/go-spew)

add_go_executable(redis_lister    # executable name
  go_redis
  go_spew)       # everything else is a dependency
