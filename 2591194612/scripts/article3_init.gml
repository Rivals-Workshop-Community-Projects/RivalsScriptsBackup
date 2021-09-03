//

sprite_index = asset_get("empty_sprite");
spr = asset_get("empty_sprite");
frame = 0;
color = c_white;
alpha = 0;
inBackground = false;
doAnim = false;
animTimer = 0;
animSpd = 1;
rot = 0;
scale = 2;
extraScale = 0;
moveTimer = 0;
startXconst = 0;
startX = 0;
startYconst = 0;
startY = 0;
endX = 0;
endY = 0;
isFish = false;
didInit = false;
waveTimer = 0;
waveDir = 0;
waveSpdX = 0.125;
waveSpdY = 0.075;
waveRotSpd = 0.25;
repeatTimer = 0;
repeatDelayCurr = 0;
animDurCurr = 0;
bias = 0;
seed = id + current_second;

isWave = false;
waveSpd = 1;
moveDir = 1;

orgX = x;
orgY = y;
orgViewX = view_get_xview();
orgViewY = view_get_yview();