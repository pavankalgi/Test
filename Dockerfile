FROM node:12
WORKDIR /app
COPY app.js /app
RUN npm install
EXPOSE 8080:8080

CMD [ "node", "app.js" ]

