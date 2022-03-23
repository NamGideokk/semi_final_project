#!/bin/sh
cd ~/pickmeup
PID=$(ps -ef|grep pickmeup.jar|grep -v grep|awk '{print $2}')
if [ -z "$PID" ]; then
  echo "no process exist"
else
  echo "process id (${PID}) killed"
  kill -9 ${PID}
fi
echo "Program Start"
nohup java -jar pickmeup.jar 1> /dev/null 2>&1 &
