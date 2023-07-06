FROM node:19.8.1

ENV MONGO_DB_USERNAME=admin 
ENV MONGO_DB_PWD=password

RUN mkdir -p /home/app

WORKDIR /home/app

COPY ./app /home/app


# set default dir so that next commands executes in /home/app dir


# will execute npm install in /home/app because of WORKDIR
RUN npm install

# no need for /home/app/server.js because of WORKDIR
EXPOSE 3000  
CMD ["node", "/home/app/server.js"]
 