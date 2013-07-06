#!/bin/bash
host="ya.ru"

while true; do
result=$(ping -c 3 $host | tail -2 | head -1 | awk '{print $4}')
if [ $result -eq 0 ]; then
echo "Нету интернету"
break
fi
sleep 180
done

exit 0
