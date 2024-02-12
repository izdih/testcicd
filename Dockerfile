
# Use the official Node.js image as the base image
FROM --platform=linux/amd64  node:latest

# Set the working directory in the container
WORKDIR /my-workspace

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy package.json and package-lock.json to the working directory
COPY . .

EXPOSE 3000

# Define the command to run the app
CMD [ "node", "app.js"]