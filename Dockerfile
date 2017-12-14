# create node image from dockerhub 
FROM node:9.2.1

# create directory on image where code will be located
RUN mkdir -p /usr/src/app

# set directory to be location where commands will be run from
WORKDIR /usr/src/app

# copy package.json file to the work directory
COPY package.json /usr/src/app

# install npm dependencies
RUN npm install

# copy all app codes to work directory
COPY . /usr/src/app

# expose port 3000 for express app
EXPOSE 3000

# start app
CMD ["npm", "start"]