#!/bin/bash
echo '
# remove container if running
$ docker rm -f test_test_1
'
docker rm -f test_test_1
echo '
# build image
$ docker build --no-cache -t test .
'
docker build --no-cache -t test .
echo '
# build container
$ docker-compose up -d
'
docker-compose up -d
echo '
# list local files
$ ls -al html
'
ls -al html
echo '
# list container files
$ docker exec -i -t test_test_1 ls -alR /var/www/html
'
docker exec -i -t test_test_1 ls -alR /var/www/html
