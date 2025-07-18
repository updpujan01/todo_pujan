#!/bin/bash

echo "Building Backend Docker Image"
docker build -f $FLASK_FILE -t $FLASK_REPO .
echo "Building Database Docker Image"
docker build -f $DB_FILE -t $DB_REPO .

echo "Pushing Backend Docker Image"
docker push $FLASK_REPO
echo "Pushing Database Docker Image"
docker push $DB_REPO

