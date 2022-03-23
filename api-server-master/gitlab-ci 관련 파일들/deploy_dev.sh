#!/bin/sh
cd ~/pickmeup
PID=$(ps -ef|grep pickmeup_dev.jar|grep -v grep|awk '{print $2}')
if [ -z "$PID" ]; then
  echo "no process exist"
else
  echo "process id (${PID}) killed"
  kill -9 ${PID}
fi
echo "Program Start"
nohup java -jar pickmeup_dev.jar 1> /dev/null 2>&1 &
