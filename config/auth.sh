#!/usr/bin/env bash

if [ ! -f /data/db/.mongodb_password_set ]; then
    mongo admin --eval "db.createUser({user: '$MONGO_ADMIN_USER', pwd: '$MONGO_ADMIN_PASS', roles:[{role:'root',db:'admin'}]});"
    touch /data/db/.mongodb_password_set
fi