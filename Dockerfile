FROM node:14

COPY package*.json ./

RUN npm i

COPY src ./src
COPY tsconfig.json ./tsconfig.json

RUN npm run build

# Change this to be whichever port the application is running on
EXPOSE 8080

CMD npm run start
