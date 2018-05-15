#!/bin/bash
imageName=nodejsapp
containerName=nodecontainer

docker build -t $imageName .

echo Delete old container...
docker rm -f $containerName

echo Run new container...
docker run -d -p 80:8080 --name $containerName $imageName
