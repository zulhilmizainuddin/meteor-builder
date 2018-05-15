FROM node:carbon-slim

RUN apt-get update && \
    apt-get install -y git

RUN yarn global add typescript

USER node

ENV HOME=/home/node
ENV APP_HOME=$HOME/app

RUN cd $HOME && \
    curl https://install.meteor.com/ | sh

ENV PATH=$HOME/.meteor:$PATH

RUN mkdir $APP_HOME && \
    chown node:node $APP_HOME
    
WORKDIR $APP_HOME
