#!/bin/bash

###
# Инициализируем бд
###

docker compose exec -T shard1 mongosh <<EOF
use somedb
for(var i = 0; i < 1000; i++) db.helloDoc.insertOne({age:i, name:"ly"+i})
EOF

