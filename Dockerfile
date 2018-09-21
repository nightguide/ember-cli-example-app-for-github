FROM node:8
COPY . .
USER root
EXPOSE 4200
CMD [ "./node_modules/ember-cli/bin/ember", "serve" ]
