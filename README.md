# Media Prima DailyMotion PHP
Retrieve Media Prima HLS manifest from Dailymotion.

## Info

1. ~~Media Prima locked this video as private , so the metadata trick won't work.~~

**(UPDATE : Dailymotion changed the method to get the manifest URL for private video , last time it was under directly the embed video page , but now they will request with the metadata url containing referer & embed hostname , the requested data is same as the normal metadata response)**

3. Georestrict rule apply to these videos , you can only use a Malaysia IP to get the HLS manifest.
4. Github Actions will download all channels's latest token everyday from my server in Malaysia and export to [here](https://raw.githubusercontent.com/samleong123/tonton_dailymotion_php/main/tv3_didiktvkpm_8tv_tv9_EPG.m3u8)

## How to use

### Build yourself :
1. Ensure PHP is installed on your web server , PHP 7.0 and above are recommended.
2. Copy the PHP file to ur web server and simply run it.
3. Create a valid M3U playlist and put this under the manifest URL
For example :
```
// FOR OTT Navigator & VLC ONLY : 

#EXTVLCOPT:http-user-agent=Mozilla/5.0 Windows NT 10.0; Win64; x64 AppleWebKit/537.36 KHTML, like Gecko Chrome/93.0.4577.82 Safari/537.36
#EXTVLCOPT:http-referer=https://www.dailymotion.com
#EXTINF:-1 group-title="Media Prima" ch-number="108" tvg-id="108" tvg-chno="108" tvg-logo="https://upload.wikimedia.org/wikipedia/en/thumb/f/fc/8TV_Chinese.png/220px-8TV_Chinese.png",8TV
https://xxxxx.com/8TV.php

// FOR USUAL IPTV PLAYERS (EXP : TIVIMATE / TVIRL) :
#EXTM3U
#EXTINF:-1 group-title="Media Prima" ch-number="108" tvg-id="108" tvg-chno="108" tvg-logo="https://upload.wikimedia.org/wikipedia/en/thumb/f/fc/8TV_Chinese.png/220px-8TV_Chinese.png",8TV
https://xxxxx.com/8TV.php|Referer=https://www.dailymotion.com|User-Agent=Mozilla/5.0 Windows NT 10.0; Win64; x64 AppleWebKit/537.36 KHTML, like Gecko Chrome/93.0.4577.82 Safari/537.36
```
4. An example of valid M3U playlist : [here](https://github.com/samleong123/tonton_dailymotion_php/blob/main/tv3_didiktvkpm_8tv_tv9_EPG.m3u8)

### Directly use prebuilt playlist: 
1. Insert the playlist URL [https://raw.githubusercontent.com/samleong123/tonton_dailymotion_php/main/tv3_didiktvkpm_8tv_tv9_EPG.m3u8](https://raw.githubusercontent.com/samleong123/tonton_dailymotion_php/main/tv3_didiktvkpm_8tv_tv9_EPG.m3u8) with any IPTV players you want (**except OTT Navigator**)
2. Use [https://github.com/samleong123/tonton_dailymotion_php/raw/main/tv3_didiktvkpm_8tv_tv9_EPG_ott.m3u8](https://github.com/samleong123/tonton_dailymotion_php/raw/main/tv3_didiktvkpm_8tv_tv9_EPG_ott.m3u8) for **OTT Navigator ONLY**.


## Issue :
You may create a issue if you experienced any problem. Im not very familiar with PHP but i will try to solve the problem.

## Credit :
Special thanks to [@jvloo](https://github.com/jvloo) for fixing the PHP script!
EPG source from : [weareblahs](https://github.com/weareblahs/epg)

## Screenshot :
![image](https://user-images.githubusercontent.com/58818070/135011735-495c02a3-1c97-400f-92e5-33d1862b4257.png)

