#!/bin/bash

containerName=projectName

#mysql version
version=5.6
baseDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker run -p 3306:3306 --name $containerName \
-v $baseDir/config:/etc/mysql/conf.d \
-v $baseDir/data:/var/lib/mysql \
-e MYSQL_ROOT_PASSWORD=hybris \
-d mysql:$version || docker start $containerName
