#!/bin/bash
(cd ~/nodejs/temp/jenkins/ && make run)

sleep 5
google-chrome http://localhost:8080