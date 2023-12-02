#!/usr/bin/env bash

REPOSITORY=/home/ubuntu
cd $REPOSITORY

APP_NAME=LIBRARY_SYSTEM
JAR_NAME=$(ls $REPOSITORY | grep 'SNAPSHOT.war' | tail -n 1)
JAR_PATH=$REPOSITORY/$JAR_NAME

CURRENT_PID=$(pgrep -f $APP_NAME)

if [ -z $CURRENT_PID ]
then
  echo "> 종료할 애플리케이션이 없습니다."
else
  echo "> kill -9 $CURRENT_PID"
  kill -15 $CURRENT_PID
  sleep 5
fi

echo "> Deploy - $JAR_PATH "
nohup java -jar $JAR_PATH &

# 로그 파일 생성 및 로그 기록
LOG_FILE="test.log"
echo "스크립트가 실행되었습니다." >> $LOG_FILE
echo "JAR_PATH: $JAR_PATH" >> $LOG_FILE

