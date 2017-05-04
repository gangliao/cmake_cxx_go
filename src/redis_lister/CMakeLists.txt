ExternalGoProject_Add(go_redis github.com/hoisie/redis)

ADD_GO_EXECUTABLE(redis_lister    # executable name
                  go_redis)       # everything else is a dependency
