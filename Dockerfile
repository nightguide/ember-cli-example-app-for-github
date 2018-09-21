FROM node:8
WORKDIR myapp
COPY . /myapp
USER root
EXPOSE 4200
CMD [ "./node_modules/ember-cli/bin/ember", "serve" ]
