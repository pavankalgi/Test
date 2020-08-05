FROM node:12

COPY app.js /
RUN npm install
EXPOSE 3000

CMD [ "node", "app.js" ]

