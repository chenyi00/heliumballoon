#!/usr/bin/env bash
/usr/bin/python3 /home/pi/fin_code/bmp280.py  & /usr/bin/python3 /home/pi/fin_code/get_accl.py &  /usr/bin/python3 /home/pi/fin_code/DHT22.py &
start_time=$(date +%s)
while true; do
   raspistill -ifx none -n -w 3280 -h 2464 -q 100 -o "/home/pi/fin_code/img/$(date +%s)_picam.jpg"
   sleep 6
done
