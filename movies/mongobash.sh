#!/bin/bash
echo "MongoDB 4.4 Community Edition Install Script | 4.4 | Ubuntu 18.04"
echo "Import the public key used by the package management system"
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add
-
echo "Create a list file for MongoDB"
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu
bionic/mongodb-org/4.4 multiverse" | sudo tee
/etc/apt/sources.list.d/mongodb-org-4.4.list
echo "Reload local package database"
sudo apt-get update
echo "Install the MongoDB packages"
sudo apt-get install -y mongodb-org
echo "Start MongoDB"
sudo systemctl start mongod
echo "Verify that MongoDB has started successfully"
sudo systemctl status mongod
exit
EOF
echo "Completed - MongoDB 4.4 Community Edition Install Script | 4.4 | Ubuntu
18.04"
