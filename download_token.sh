#!/bin/bash

echo -e "\e[1;31m [INFO] Downloading TV3 \e[0m"
TV3="https://demo.samsam123.tk/mediaprima_dailymotion/TV3.php?"$AUTH
wget -O TV3.m3u8 $TV3

echo -e "\e[1;31m [INFO] Downloading DidikTVKPM \e[0m"
DidikTVKPM="https://demo.samsam123.tk/mediaprima_dailymotion/didikTVKPM.php?"$AUTH
wget -O DidikTVKPM.m3u8 $DidikTVKPM

echo -e "\e[1;31m [INFO] Downloading 8TV \e[0m"
8TV="https://demo.samsam123.tk/mediaprima_dailymotion/8TV.php?"$AUTH
wget -O 8TV.m3u8 $8TV

echo -e "\e[1;31m [INFO] Downloading Drama Sangat \e[0m"
DramaSangat="https://demo.samsam123.tk/mediaprima_dailymotion/Drama_Sangat.php?"$AUTH
wget -O Drama_Sangat.m3u8 $DramaSangat

echo -e "\e[1;31m [INFO] Downloading TV9 \e[0m"
$TV9="https://demo.samsam123.tk/mediaprima_dailymotion/TV9.php?"$AUTH
wget -O TV9.m3u8 $TV9

echo -e "\e[1;31m [INFO] Generating Date & Time file in UTC+08 \e[0m"
echo "`env TZ=UTC-08 date`" > "Date & Time UTC +08.txt"

echo -e "\e[1;31m [INFO] Done \e[0m"
