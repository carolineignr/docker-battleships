FROM node:18

# Set container root directory
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

# Copy what's in my current directory (first dot) to container root directory (second dot)
# Container root directory === WORKDIR
COPY . .

EXPOSE 3000

CMD ["node", "server.js"]