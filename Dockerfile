FROM node
WORKDIR /gitbook
RUN npm install -g gitbook-cli
RUN npm -g install web-server-cli
RUN gitbook build
EXPOSE 4000
CMD web-server -r /gitbook/_book -p 4000