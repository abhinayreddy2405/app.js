# Step 1: Use a Node.js base image
FROM node:16

# Step 2: Set the working directory inside the container
WORKDIR /usr/src/app

# Step 3: Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Step 4: Copy the application code into the container
COPY . .

# Step 5: Expose the port the app will run on
EXPOSE 3000

# Step 6: Command to run the application
CMD ["npm", "start"]

