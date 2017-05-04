ExternalGoProject_Add(snappy github.com/golang/snappy)
ExternalGoProject_Add(assert github.com/stretchr/testify/assert)

add_go_library(recordio    # executable name
               snappy      # everything else is a dependency
		       assert)
