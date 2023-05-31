# Use the official Node.js 14.x image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port that your Node.js server listens on
EXPOSE 3000

# Specify the command to start your Node.js server
CMD [ "npm", "start" ]