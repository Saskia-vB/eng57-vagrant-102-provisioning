#!/bin/bash

sudo apt-get update -y

sudo apt-get install nginx -y

apt-get install nodejs npm -y

npm install -g pm2

sudo nvm use 6

service nginx start

curl -sL https://deb.nodesource.com/setup_6.x | sudo bash -
sudo apt-get install -y nodejs

sudo npm install pm2 -g

cd /app
sudo npm install
sudo npm start

# export DB_HOST = "mongodb://192.168.10.150:27017/posts"

# echo $DB_HOST >> /home/vagrant/.bashrc
