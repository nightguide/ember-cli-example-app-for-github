FROM node:8
COPY . .
USER root
RUN npm install -g bower \
    npm install -g phantomjs --unsafe-perm \
    npm install -g ember-cli 
EXPOSE 4200
CMD [ "ember", "serve" ]
