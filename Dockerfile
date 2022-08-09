# get bare minimum linux image
FROM node:alpine 

# Define working directory
WORKDIR /usr/src/app

# Copy other project files to our container
COPY . .

# Copy package.json file to our app dir in container
# COPY package*.json ./app

# Install our dependencies
RUN npm install

# Run a startup command when our container starts
CMD ["npm", "start"]
