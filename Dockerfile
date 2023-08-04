
# Use the official Node.js image as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /app
# Copy the application files into the working directory
COPY . /app

# Install the application dependencies and nodemon globally
# Fixed typo in the package manager command from "npm install" to "npm install -g nodemon"
RUN npm install -g nodemon

# Install the application dependencies
# Fixed typo in the package manager command from "npm install" to "npm install"
RUN npm install

# Define the entry point for the container
CMD ["nodemon", "start"]
