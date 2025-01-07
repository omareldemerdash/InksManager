# Use the official Node.js image as the base image
FROM node:14 as app

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["node", "backend.js"]


# mysql image
FROM mysql:5.7 as db

# Set environment variables
ENV MYSQL_ROOT_PASSWORD=your_root_password
ENV MYSQL_DATABASE=inks_db

COPY ./db_files/inks_db.sql /docker-entrypoint-initdb.d/

