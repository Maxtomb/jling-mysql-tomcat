#!/bin/bash

if [ -n "$MYSQL_PASSWORD" ] ; then
TEMP_FILE='/tmp/init.sql'
cat >> $TEMP_FILE << EOSQL
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '$MYSQL_PASSWORD';
FLUSH PRIVILEGES;
EOSQL
set -- "$@" --init-file=$TEMP_FILE 
fi
exec "$@"

