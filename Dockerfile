FROM node:12
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY ./keys ./keys
COPY ./sftp-gcs.js ./sftp-gcs.js

CMD ["node", "sftp-gcs.js"]