#!/bin/bash

docker build -t harman4u/rapidfort-project .
docker run -d -p 5000:5000 harman4u/rapidfort-project
