FROM node:9.2

LABEL maintainer=services-engineering@vitals.com

RUN apt-get update && apt-get -y install netcat && apt-get clean
RUN npm install --global --quiet ionic cordova
RUN echo "//registry.npmjs.org/:_authToken=\${NPM_TOKEN}" > ~/.npmrc
