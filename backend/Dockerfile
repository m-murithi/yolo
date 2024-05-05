FROM node:16-alpine

ENV PORT=5000
WORKDIR /app/backend

COPY ./ .
RUN npm install
EXPOSE ${PORT}
CMD ["npm", "start"]
