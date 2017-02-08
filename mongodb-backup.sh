#!/bin/bash
# author Rizki Mufrizal

HOST="127.0.0.1"
PORT="27017"
REMOTE_DB="2016"
LOCAL_DB="backup2016"
USER=""
PASS=""

while true
    do
        TANGGALINSERT=$(date +"%F %T")
        TANGGALFOLDER=$(date +"%F-%T")
        BULAN=$(date +"%m-%Y")
        TANGGAL=$(date +"%d-%m-%Y")

        mongodump --db=$REMOTE_DB --username=$USER --password=$PASS --host=$HOST --port=$PORT --out=/var/backups/mongobackups/"$BULAN"/"$TANGGAL"/"$TANGGALFOLDER"

        echo "INSERT INTO tb_log_clone (id, tanggal) values ('$(uuidgen)', '$TANGGALINSERT');" | mysql -u root -proot log_clone;
        echo "done"
        sleep 3600
done
