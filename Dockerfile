# get bare minimum linux image
FROM node:10.14.0 

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
