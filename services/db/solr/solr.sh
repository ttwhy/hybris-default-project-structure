#!/bin/bash

baseDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
containerName="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd "../../.." && basename `pwd` )"-solr

#solr version
version=5.3

docker run --name $containerName \
-d -p 8983:8983 \
-t solr:$version
