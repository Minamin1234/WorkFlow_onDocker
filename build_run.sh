#!/bin/bash
docker container stop workflow
docker rm workflow
docker image build -t workflow .
docker container run -it -d --name workflow workflow
docker container exec -it workflow /bin/bash