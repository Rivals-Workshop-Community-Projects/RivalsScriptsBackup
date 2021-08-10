//


sprite_index = asset_get("empty_sprite");

doConfetti = false;
confetti = hit_fx_create(sprite_get("confetti"), 28);//5


doClockSeconds = false;
doClockMinutes = false;
doClockHours = false;

//timer = current_time * 0.01; //0;

orgX = x;
orgY = y;

orgViewX = view_get_xview();
orgViewY = view_get_yview();

alpha = 1;
scale = 2;

sprInd = 0;
animSpd = 0;
isNote = false;
isSteam = false;

inBackground = true;
backgroundIndex = 1; //default is last bg
lifeTimeStart = -1;
lifeTime = -1;
doKill = false;
animTime = 0;
moveDirX = 0;
moveDirY = 0;

flipX = 1;

rot = 0;
