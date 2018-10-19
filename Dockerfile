FROM ubuntu:18.04
RUN apt-get update && apt-get install -y python
RUN apt-get install -y build-essential libxi-dev libglu1-mesa-dev libglew-dev pkg-config

RUN apt-get install -y dumb-init xvfb
RUN chmod 0777 /usr/bin/dumb-init
RUN apt-get install -y npm

RUN mkdir webgl-apps
RUN cd webgl-apps
RUN npm install gl
RUN mkdir apps
