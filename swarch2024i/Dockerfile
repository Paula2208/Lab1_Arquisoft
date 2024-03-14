FROM node:carbon-slim

# Create app directory
WORKDIR /swarch2024i

# Install app dependencies
COPY package.json /swarch2024i/
RUN npm install

# Bundle app source
COPY . /swarch2024i/
RUN npm run prepublish

CMD [ "npm", "run", "runServer" ]
