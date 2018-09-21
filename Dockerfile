FROM node:8
COPY . .
USER root
<<<<<<< HEAD
=======
RUN npm install -g bower \
    npm install -g phantomjs --unsafe-perm \
    npm install -g ember-cli \
    npm install \
    yarn install \
    bower install
>>>>>>> e25b16dac27a28781222b88a6a1a8c82193a6f51
EXPOSE 4200
CMD [ "./node_modules/ember-cli/bin/ember", "serve" ]
