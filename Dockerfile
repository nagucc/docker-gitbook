FROM node
RUN npm install -g gitbook-cli
RUN npm -g install web-server-cli
RUN gitbook build
EXPOSE 4000
CMD web-server -p 4000