#!/bin/sh

echo "trying to restore the database (if it exists)..."
litestream restore -if-replica-exists -generation 4591c2cc6a46c0e1 /app/data/kuma.db

echo "starting replication and the application..."
litestream replicate
