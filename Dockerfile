FROM debian

RUN apt update
RUN apt install curl -y
RUN mkdir /home/actions-runner && cd /home/actions-runner
RUN curl -o /home/actions-runner/actions-runner-linux-arm-2.301.1.tar.gz -L https://github.com/actions/runner/releases/download/v2.301.1/actions-runner-linux-arm-2.301.1.tar.gz
RUN tar xzf /home/actions-runner/actions-runner-linux-arm-2.301.1.tar.gz -C /home/actions-runner/
RUN /home/actions-runner/bin/installdependencies.sh