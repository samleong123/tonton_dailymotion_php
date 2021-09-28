# Media Prima DailyMotion PHP
Retrieve Media Prima HLS manifest from Dailymotion.

## Info
1. Media Prima locked this video as private , so the metadata trick won't work.
2. Georestrict rule apply to these videos , you can only use a Malaysia IP to get the HLS manifest.

## How to use
1. Ensure PHP is installed on your web server , PHP 7.0 and above are recommended.
2. Copy the PHP file to ur web server and simply run it.
3. Create a valid M3U playlist and put this under the manifest URL
For example :
```
#EXTM3U
#EXTVLCOPT:http-user-agent=Mozilla/5.0 Windows NT 10.0; Win64; x64 AppleWebKit/537.36 KHTML, like Gecko Chrome/93.0.4577.82 Safari/537.36
#EXTVLCOPT:http-referer=https://www.dailymotion.com
#EXTINF:-1 group-title="Media Prima" ch-number="108" tvg-id="108" tvg-chno="108" tvg-logo="https://upload.wikimedia.org/wikipedia/en/thumb/f/fc/8TV_Chinese.png/220px-8TV_Chinese.png",8TV
https://xxxxx.com/8TV.php|Referer=https://www.dailymotion.com|User-Agent=Mozilla/5.0 Windows NT 10.0; Win64; x64 AppleWebKit/537.36 KHTML, like Gecko Chrome/93.0.4577.82 Safari/537.36
```

## Issue :
You may create a issue if you experienced any problem. Im not very familiar with PHP but i will try to solve the problem.

## Credit :
Special thanks to [@jvloo](https://github.com/jvloo) for fixing the PHP script!
