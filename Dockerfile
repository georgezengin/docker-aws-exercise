FROM node:16.20.0

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
#COPY package*.json ./

# Copy the rest of the application code
COPY . .
# Install app dependencies
RUN npm cache clean --force
RUN npm i #nstall

# Expose the port on which the Node.js app will run (replace 3000 with your app's port if needed)
EXPOSE 8080

# Run the Node.js app specified in the package.json file
CMD ["npm", "start"]
