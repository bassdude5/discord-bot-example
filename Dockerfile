FROM node:12

# Create the app directory
WORKDIR /user/src/app

# Install app dependencies
# Wildcard is used to get both package.json and package-lock.json
COPY package*.json ./

RUN npm install
# If you are building for prod use:
# RUN npm ci --only=production

# Bundle the app source
COPY . .

# Expose a port if neccesary
# EXPOSE 8080

cmd ["node", "bot.js"]
