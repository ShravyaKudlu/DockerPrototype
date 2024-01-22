#Since we are running node we'll need an image the consists of node installed
FROM node:alpine

#to mention where in the docker container you need to start app instead of root directory so it's cleaner
WORKDIR /usr/app

# Install some dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

#Default command
CMD ["npm","start"]