# base image
FROM node

# set working directory
RUN mkdir /app
WORKDIR /app

# add `/usr/src/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install and cache app dependencies
COPY app/package.json /app/package.json
RUN npm install --silent

# start app
CMD ["npm", "start"]
