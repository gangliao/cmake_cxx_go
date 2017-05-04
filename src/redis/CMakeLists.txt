ExternalGoProject_Add(go_redis github.com/hoisie/redis)

add_go_executable(redis_lister    # executable name
                  go_redis)       # everything else is a dependency
