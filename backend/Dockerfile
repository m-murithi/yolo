FROM node:13-alpine

ENV PORT=5000
WORKDIR /backend

COPY . /backend/
RUN npm install
EXPOSE ${PORT}
CMD ["npm", "start"]
