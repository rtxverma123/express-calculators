FROM node:14
WORKDIR /app
COPY package*.json ./
RUN npm install
RUN npm install express
RUN npm install body-parser
COPY . .
EXPOSE 3000
ENTRYPOINT ["node"]
CMD ["calculator.js"]

