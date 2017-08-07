FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
      curl

RUN curl -fsSL get.docker.com -o get-docker.sh && \
    sh get-docker.sh

RUN apt-get install -y \
      emacs-nox \
      influxdb-client \
      kafkacat \
      jq \
      postgresql-client \
      sudo \
      tcl8.6 \  
      tmux \
      vim
      
RUN apt-get clean
RUN useradd --create-home --shell /bin/bash --groups docker,sudo sporran
COPY etc/ /etc/
COPY home/ /home/sporran/
RUN chown -R sporran:sporran /home/sporran
USER sporran
WORKDIR /home/sporran
