#!/bin/bash

var='tp7-mysql'
docker=$(docker ps | awk '{print $13}')
if [ $docker = $var ]; then
        docker stop $var
fi
