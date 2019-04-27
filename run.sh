mongod --bind_ip_all --fork --logpath /var/log/mongodb/mongod.log
tail -F /var/log/mongodb/mongod.log
