# Stage 1: Build the application
FROM node:16-alpine as build

WORKDIR /app/client

COPY ./package*.json ./
RUN npm install
COPY ./ .

RUN npm run build

# Stage 2: Create the production image
FROM node:16-alpine

WORKDIR /app/client

RUN npm install -g serve

# Copy the build artifacts from the previous stage
COPY --from=build /app/client/build ./build
COPY --from=build /app/client/package.json /app/client/package-lock.json ./

EXPOSE 3000

CMD ["serve", "-s", "build"]