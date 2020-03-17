#!/bin/bash
# save as time-signal.sh
# gives a time signal every hour when connected to cron
time=$(date +%I)
count=0
while test $count -lt $time; do
  echo -e "\a"
  sleep 1 # sleep for one second
  count=$[$count+1]
done

sleep 3 # 3 second pause
minutes_past_hour=$(date +%M)
if [ $minutes_past_hour -ge 15 -a $minutes_past_hour -lt 30 ]; then
	echo -e "\a"
elif [ $minutes_past_hour -ge 30 -a $minutes_past_hour -lt 45 ]; then
	echo -e "\a"
	echo -e "\a"
elif [ $minutes_past_hour -ge 45 -a $minutes_past_hour -lt 60 ]; then
	echo -e "\a"
	echo -e "\a"
	echo -e "\a"
fi
