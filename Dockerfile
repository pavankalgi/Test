FROM node:12
WORKDIR /app
COPY app.js /app
RUN npm install
EXPOSE 80

CMD [ "node", "app.js" ]

