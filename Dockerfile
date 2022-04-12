FROM node:12-alpine

ENV GIT_DISCOVERY_ACROSS_FILESYSTEM=1
RUN apk update
RUN apk add git
RUN apk add make
RUN apk add python3

WORKDIR /workspace/Slides-Android
ADD package.json /workspace/Slides-Android
# ADD package-lock.json /workspace
RUN npm install