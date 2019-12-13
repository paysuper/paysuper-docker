#!/usr/bin/env bash

echo 'Creating service user and databases'

mongo  admin \
        --host localhost \
        --port ${PAYSUPER_MONGO_PORT} \
        -u ${MONGO_ROOT_USERNAME} \
        -p ${MONGO_ROOT_PASSWORD} \
        --authenticationDatabase admin \
        --eval "db.createUser({user: '${PAYSUPER_SVC_MONGO_USER}', pwd: '${PAYSUPER_SVC_MONGO_PASS}', roles:[{ role: 'userAdminAnyDatabase', db: 'admin'}]});"
