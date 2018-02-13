########################################################################################
#                         Created by: Stainley Lebron                                  #
#                         Date: 02/13/2018                                             #
########################################################################################

# Create an image base on the official Node 9 image from Docker Hub
FROM node:9.5.0

# Create a directory where our app will be place
WORKDIR /usr/src/app

# Copy dependency definitions
COPY package.json /usr/src/app

# Install dependencies
RUN npm install

# Get all the code needed to run the app
COPY . /usr/src/app

# Expose the port the app runs in
EXPOSE 4200

# Serve the app
CMD ["npm", "start"]
