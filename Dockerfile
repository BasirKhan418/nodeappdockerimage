FROM ubuntu
RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get upgrade -y
RUN apt-get install -y nodejs
WORKDIR /home/nodeapp
COPY . .
RUN npm install

ENTRYPOINT [ "node","index.js" ]
