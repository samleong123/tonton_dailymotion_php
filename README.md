# Media Prima DailyMotion PHP
Retrieve Media Prima HLS manifest from Dailymotion.

## Info

1. ~~Media Prima locked this video as private , so the metadata trick won't work.~~

**(UPDATE : Dailymotion changed the method to get the manifest URL for private video , last time it was under directly the embed video page , but now they will request with the metadata url containing referer & embed hostname , the requested data is same as the normal metadata response)**

3. Georestrict rule apply to these videos , you can only use a Malaysia IP to get the HLS manifest.
4. Github Actions will download all channels's latest token everyday from my server in Malaysia and export to [here](https://raw.githubusercontent.com/samleong123/tonton_dailymotion_php/main/tv3_didiktvkpm_8tv_tv9_EPG.m3u8)
5. **WARNING** : Dailymotion started to implement client's IP verification , TV3 is affected , so you might unable to watch TV3. <br> The only solution is watch it via [https://xtra.com.my/live-tv](https://xtra.com.my/live-tv) or use unifiTV

## Resolution 
### Last Updated : 15/4/2022

| Channels       | Resolution | Frame Rate | Bandwidth  | Platforms   |
|----------------|------------|------------|------------|-------------|
| TV3            | 1920*1080  | 25         | 2 - 5 Mbps | Dailymotion |
| DidikTV KPM    | 1920*1080  | 25         | 2 - 5 Mbps | Dailymotion |
| 8TV / 八度空间 | 1920*1080  | 25         | 2 - 5 Mbps | Dailymotion |
| TV9            | 1920*1080  | 25         | 2 - 5 Mbps | Dailymotion |
| Drama Sangat   | 1920*1080  | 25         | 2 - 5 Mbps | Dailymotion |

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


## Common Issue :
1. 403 Error :
- Please ensure you are using **Malaysia's ISP network** and **not other country's ISP network**. <br> Media Prima **geo-restricted these livestream to Malaysia only**. <br> **Use VPN if you need to watch outside of Malaysia**.
- **Clear cache** of your IPTV apps and **reload / update** the playlist. <br> This playlist will be **updated each 1 hour** via Github Actions. <br> Always **make sure to get the latest version** of the playlist in order to **get the validated token from Dailymotion server**.
- Use **tested IPTV players** (e.g: **Tivimate** & **OTT Navigator** & **Kodi**)

2. Other Issue :
- **Create a issue** and **NOT message me through my social media** about your problem

## Credit :
Special thanks to [@jvloo](https://github.com/jvloo) for fixing the PHP script!
EPG source from : [weareblahs](https://github.com/weareblahs/epg)

## Screenshot :
![image](https://user-images.githubusercontent.com/58818070/163546968-dcb6c5b8-1823-4388-90ab-55ef9c9dec34.png)

