#!/usr/bin/env bash

echo "Starting gunicorn..."
cd ./respbackend
exec gunicorn respbackend.wsgi:application \
    --bind 0.0.0.0:8090 \
    --workers 2
