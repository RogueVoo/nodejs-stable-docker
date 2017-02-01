FROM debian:wheezy

RUN apt-get update -y && apt-get install --no-install-recommends -y -q curl xz-utils python build-essential git ca-certificates
RUN mkdir /nodejs && curl https://nodejs.org/dist/v6.4.0/node-v6.4.0-linux-x64.tar.xz | tar xvJf - -C /nodejs --strip-components=1

ENV PATH $PATH:/nodejs/bin 
