docker container stop workflow
docker rm workflow
docker image build -t workflow .
docker container run --env-file runner.txt -it -d --name workflow workflow
docker container exec -it workflow /bin/bash