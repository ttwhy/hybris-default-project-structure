#!/bin/bash

containerName=projectNameSolr

#solr version
version=5.3
baseDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker run --name $containerName \
-d -p 8983:8983 \
-t solr:$version
