FROM node:13-alpine

ENV PORT=3000
WORKDIR /client

COPY . /client/
RUN npm install
EXPOSE ${PORT}
CMD ["npm", "start"]
