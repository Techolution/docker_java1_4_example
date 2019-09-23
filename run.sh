#!/bin/sh

docker rm java1.4
docker run -it -v /Users/dineshreddychalla/scripts/java1_4example:/data --name=java1_4 dinesh21o/java:1.4 /bin/bash
