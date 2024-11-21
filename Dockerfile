# Use the official Node.js LTS image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock) into the container
COPY /home/ubuntu/my-node-app/*.json ./

# Install the dependencies defined in package.json
RUN npm install

# Copy the entire application into the container
COPY /home/ubuntu/my-node-app/ ./

# Expose the port that your app runs on (make sure it's the right port)
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]

