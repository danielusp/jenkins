#!/bin/bash

mkdir -m777 jenkins_home
if [ $? -ne 0 ] ; then
    sudo chmod -R 777 jenkins_home
fi

docker build -t jenkins:dev .