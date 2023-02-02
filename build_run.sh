#!/bin/bash
docker container stop $1
docker rm $1
docker image build -t $1 .
docker container run --env-file runner.txt -it -d --name $1 $1