#!/bin/bash
# author Rizki Mufrizal

HOST="192.168.100.113"
PORT="27017"
REMOTE_DB="myremote"
USER=""
PASS=""
PATH_BACKUP="/var/backups/mongobackups/02-2017/08-02-2017/2017-02-08-11:41:25/th-prod-2016/"

mongorestore $PATH_BACKUP --host=$HOST --port=$PORT --db=$REMOTE_DB --username=$USER --password=$PASS
echo "Done";