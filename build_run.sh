#!/bin/bash
docker container stop workflow
docker rm workflow
docker image build -t workflow .
docker container run --env-file env.txt -it -d --name workflow workflow
docker container exec -it workflow /bin/bash