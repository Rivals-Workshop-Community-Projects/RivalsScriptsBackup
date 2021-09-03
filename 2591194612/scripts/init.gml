//

tick = 0;
doInit = true;

//start time from real time
currSec = current_second;//0;
currMin = current_minute;//0;
currHou = current_hour;//0;
currDay = current_day;//1;
currWeD = current_weekday;//1;
currMon = current_month;//1;
currYea = current_year;//1;

monthLengths = [31,28,31,30,31,30,31,31,30,31,30,31];
weekDays = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];

useRealTime = !is_aether_stage();
timeSpd = 25;//50;//100;

currHouAmPm = 0;
//songs = ["1am", "6am", "2pm", "8pm"];
//songs24 = [1, 6, 14, 20];
//songs = ["2am", "6am", "1pm", "8pm"];
//songs24 = [2, 6, 13, 20];
songs = ["6am", "1pm", "8pm"];
songs24 = [6, 13, 20];
songStart = noone;
doFadeSong = false;

texHeight = 0;

orgViewX = view_get_xview();
orgViewY = view_get_yview();
backgroundIndex = 2;


centerX = 625;
centerY = 525;
centerDist = 400;

sun = noone;
moon = noone;
moonStartX = centerX;
moonStartY = centerY - centerDist;
sunStartX = centerX;
sunStartY = centerY + centerDist;

shadows = noone;
glow = noone;
stars = noone;
isDay = false;

blink = true;
houseOverlay = noone;
boat = noone;

//fishes = ds_list_create();
//fishRotSpd = 2;
//fishSwimSpd = 0.1;