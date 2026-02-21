FROM node:20-alpine

# Create the folder inside the container
WORKDIR /app

# install libraries
COPY package*.json ./
RUN npm install

#Copy the main code file
COPY server.js ./

# Declare an environmental var for port
ENV PORT=3000

# Open the Port in the container
EXPOSE 3000

# Execute this command at the start up of the container
CMD ["node" , "server.js"]

