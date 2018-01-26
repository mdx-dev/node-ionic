FROM node:9.4-stretch

LABEL maintainer=services-engineering@vitals.com

RUN apt-get update && apt-get -y install netcat && apt-get clean
COPY wait-for-it.sh /bin/
RUN npm install --global --quiet ionic cordova@^6
