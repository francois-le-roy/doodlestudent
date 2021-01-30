FROM node:10-alpine as build-step
WORKDIR app/
COPY package.json /app
RUN npm install
COPY . /app
RUN npm run build --prod 
RUN ls /app/dist/tlcfront
FROM bunkerity/bunkerized-nginx as prod
COPY --from=build-step /app/dist/tlcfront /www
