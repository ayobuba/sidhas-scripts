#!/bin/bash
for db in edxapp cs_comment_service_development; do
    echo "Dumping Mongo db ${db}..."
    mongodump -u admin -p'MEvWs2YZOyFyfCofsRj6DM6IjFwGQxFqxm4' -h localhost --authenticationDatabase admin -d ${db} --out mongo-dump
done