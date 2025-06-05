#! /bin/bash

#echo "Hello, World!"

if [ "$#" -ne 2 ]; then
        echo "Error: Two parameters are required"
        echo "Using: $0 <path to directory> <URL>"
        exit 1
fi

LOCAL_DIR=$1
REMOTE_REPO_URL=$2

cd "$LOCAL_DIR" || { echo "Error: Directory could not be found $LOCAL_DIR"; exit 1; }

if [ ! -d ".git" ]; then
	git init
	git remote add origin "$REMOTE_REPO"
fi

git add .
git commit -m "Initial commit"
git branch -M main
git push -u origin main

