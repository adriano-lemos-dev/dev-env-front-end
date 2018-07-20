FROM node:latest

RUN npm config set strict-ssl false && npm install -g @angular/cli

RUN mkdir /front-end && chmod 777 /front-end

WORKDIR /front-end
CMD [ "/bin/bash" ]