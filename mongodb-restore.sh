#!/bin/bash
# author Rizki Mufrizal

HOST="192.168.100.113"
PORT="27017"
REMOTE_DB="$2"
USER=""
PASS=""
PATH_BACKUP="$1"

mongorestore $PATH_BACKUP --host=$HOST --port=$PORT --db=$REMOTE_DB --username=$USER --password=$PASS
echo "Done";
