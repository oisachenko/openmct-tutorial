#!/bin/sh
if [ -f .env ]
then
  export $(cat .env | xargs)
fi
CONTAINER="gb-db"
while ! docker exec $CONTAINER mysql --user=${DB_USERNAME} --password=${DB_PASSWORD} -e "SELECT 1" >/dev/null 2>&1; do
    sleep 1
done
