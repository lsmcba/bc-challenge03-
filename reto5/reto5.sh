#!/bin/bash

docker build -t node.js .
docker run -it --rm --name bootcamp_nodejs -p 4000:4001 node.js