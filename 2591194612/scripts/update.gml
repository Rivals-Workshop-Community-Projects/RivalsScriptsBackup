//

if(doInit && tick == 1)
{
    doInit = false;
    
    texHeight = 3072;
    //TODO: make this automatic
    //print(sprite_get_height(sprite_get("bg2"))); //why 128 and not 3072?
    //-> bcz this is the "x" net_disc_spr 
    //print(sprite_get_height(sprite_get("sun")));
    //-> why only access to article sprites here?
    
    
    moon = instance_create(0,0,"obj_stage_article", 1);
    moon.sprite_index = sprite_get("moon");
    moon.depth = 34;
    moon.rotSpd = timeSpd * 0.0025;
    moon.centerX = centerX;
    moon.centerY = centerY;
    
    sun = instance_create(0,0,"obj_stage_article", 1);
    sun.sprite_index = sprite_get("sun");
    sun.depth = 34;
    sun.rotSpd = timeSpd * 0.0025;
    sun.centerX = centerX;
    sun.centerY = centerY;
    sun.playMusic = true;
    
    shadows = instance_create(0,0,"obj_stage_article", 2);
    
    glow = instance_create(220,178,"obj_stage_article", 3);
    glow.spr = sprite_get("lampGlow");
    glow.color = c_white;
    glow.alpha = 0.5;
    glow.depth = -11;//above ground darkness layer
    
    stars = instance_create(0,-64,"obj_stage_article", 3);
    stars.spr = sprite_get("stars");
    stars.color = c_white;
    stars.alpha = 0.5;
    stars.depth = 29;
    stars.inBackground = true;
    
    houseOverlay = instance_create(220,178,"obj_stage_article", 3);
    houseOverlay.spr = sprite_get("ground2");
    houseOverlay.color = c_white;
    houseOverlay.alpha = 1;
    houseOverlay.depth = -10;
    houseOverlay.doAnim = true;
    houseOverlay.animSpd = 0.0666;/**/
    //-> problem is when jumping off the house still behind this...
    
    var bridge = instance_create(220,178,"obj_stage_article", 3);
    bridge.spr = sprite_get("bridge");
    bridge.alpha = 1;
    bridge.depth = -10;
    
    boat = instance_create(220,178,"obj_stage_article", 3);
    boat.spr = sprite_get("boat");
    boat.alpha = 1;
    boat.depth = -10;
    boat.doAnim = true;
    boat.animSpd = 0.0666;
        
    var fishX = [1100,1000,200];
    var fishY = [600,450,500];
    for(var i = 0; i < 3; i++)
    {
        var fish = instance_create(fishX[i],fishY[i],"obj_stage_article", 3);
        fish.spr = sprite_get("fish");//TODO: version "fish2" needs either sprite flip on rot, or 8 directional frames
        fish.color = c_white;
        fish.alpha = 1;
        fish.depth = 32;
        fish.inBackground = false;
        fish.doAnim = true;
        fish.animSpd = 0.25;
        fish.extraScale = 0; //TODO: random size
        fish.isFish = true;
    }
    //TODO: spawn random ammount on screen... mainly in foreground!
    
    for(var i = 0; i < 24; i++)
    {
        var wave = instance_create(-500,-500,"obj_stage_article", 3);
        wave.spr = sprite_get("wave");
        wave.color = c_white;
        wave.alpha = 0.75;
        wave.depth = 31;
        wave.inBackground = false;
        wave.doAnim = true;
        wave.animSpd = 0.125;
        wave.isWave = true;
    }
    
    set_bg_data(2, BG_LAYER_X, random_func(current_second, 700, true));
}
tick++;


if(useRealTime)
{
    if(tick % 30 == 0)
        blink = !blink;
}
else
{ 
    if(tick % 15 == 0)
        blink = !blink;
}

//set bg darkness fader offset based on time
var off = 0;//0 is midnight 1 is midday, 2 is midnight
off = (currHou/12)+(currMin/60)/12+((currSec/60)/12)/60;
isDay = off >= 0.5 && off <= 1.5;
isAm = currHou < 13 && currHou > 0;

currHouAmPm = currHou%12;
if(currHouAmPm == 0)
    currHouAmPm = 12;

offNorm = off - 0.5;
if(offNorm < 0) offNorm += 1;
if(offNorm >= 1) offNorm -= 1;
offNorm = offNorm - 0.5;//-0.5 is sun left, 0 top, 0.5 right (same for moon)


var texOff = texHeight*(off+1);
set_bg_data(6, BG_LAYER_Y, texOff);//bg6
set_bg_data(9, BG_LAYER_Y, texOff);//fg2

if(moon != noone)
{
    var offRot = (pi / 180) * off*180;
    var newXY = RotatePoint(moonStartX, moonStartY, centerX, centerY, offRot);
    moon.orgX = floor(newXY[0]);
    moon.orgY = floor(newXY[1]);
    newXY = RotatePoint(sunStartX, sunStartY, centerX, centerY, offRot);
    sun.orgX = floor(newXY[0]);
    sun.orgY = floor(newXY[1]);
}

if(shadows != noone)
    shadows.off = off;
    
if(glow != noone)
{
    if(isDay)
        glow.alpha = 0;
    else
    {
        glow.alpha = clamp(1 + -abs(offNorm) * 2, 0, 0.5);
        glow.alpha += sin(tick * 0.05) * 0.1;
    }
}
if(stars != noone)
{
    if(isDay)
        stars.alpha = 0;
    else
    {
        stars.alpha = .8 + -abs(offNorm)*2;
        stars.alpha += cos(tick * 0.05) * 0.1;
        //TODO: instead an array of individual star articles? so glow different offsets
    }
}
if(boat != noone)
{
    boat.y += cos(tick * 0.025) * 0.1;
    boat.x += sin(tick * 0.015) * 0.075;
}


var songDes = string(currHouAmPm) + (isAm ? "am" : "pm");
var songClose = noone;
var closestDist = 24;
var closestDistSigned = 24;
var songAvailable = false;
for (var i = 0, iLen = array_length_1d(songs); i < iLen; i++) 
{
    var dist = abs(currHou- songs24[i]);
    if (dist <= closestDist) 
    {
        songClose = songs[i];
        closestDist = dist;
        closestDistSigned = currHou - songs24[i];
    }
   if (songs[i] == songDes) 
   {
       songAvailable = true;
       break;
   }
}
//start with the closest song available
if(tick < 127)
{
    songStart = songClose;
    music_play_file(songClose);
}

if(songClose != songStart)
    doFadeSong = true;
    
//skip songs in aether mode (where fast time)
if(useRealTime || songAvailable)
    music_play_file(songDes);
    
//fade in/out based on minutes from next closest? actually only need fade out? bcz of music_play_file?
var vol = 1;
if(useRealTime)
{
    if(currMin == 59 && currSec > 57)// && closestDist == 0)//fade out
        vol = 0;
}
else
{
    if(doFadeSong && closestDistSigned == -1)// && currMin > 30)//fade out
        vol = 0;
}
music_fade(clamp(vol,0.001,1), 0.005);


if(useRealTime)
{
    currSec = current_second;
    currMin = current_minute;
    currHou = current_hour;
    currDay = current_day;
    currWeD = current_weekday;
    currMon = current_month;
    currYea = current_year;
}
else
{
    //progress time faster than real time
    currSec += timeSpd;
    if(currSec >= 60)
    {
        currSec = 0;
        currMin++;
    }
    if(currMin >= 60)
    {
        currMin = 0;
        currHou++;
    }
    if(currHou >= 24)
    {
        currHou = 0;
        currDay++;
        currWeD++;
        if(currWeD >= 7)
            currWeD = 0;
    }
    if(currDay >= monthLengths[currMon-1]+1)
    {
        currDay = 1;
        currMon++;
    }
    if(currMon >= 12+1)
    {
        currMon = 1;
        currYea++;
    }
}

#define RotatePoint(xx, yy, xc, yc, radians)
{
    var cosTheta = cos(radians);
    var sinTheta = sin(radians);

    return [(cosTheta * (xx - xc) - sinTheta * (yy - yc) + xc), 
            (sinTheta * (xx - xc) + cosTheta * (yy - yc) + yc)];
}

#define remap(value, low1, high1, low2, high2)
return low2 + (value - low1) * (high2 - low2) / (high1 - low1);