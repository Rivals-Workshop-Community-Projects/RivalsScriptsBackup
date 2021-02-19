// init = 0;
lava_splosh = noone;
sprite_index = sprite_get("dspecial_turret");

can_be_grounded = true;
ignores_walls = true;
free = false;

dir = 0;

shoot_timer = 60;
lifetime = 520;

// experiment
// turret_angle = 0;

// sound_play(asset_get("sfx_boss_fireball"));

while (checkLeftFree() && !checkRightFree()){
	x += 4;
}

while (!checkLeftFree() && checkRightFree()){
	x -= 4;
}

#define checkLeftFree
if (!position_meeting(x-32, y+4, asset_get("par_block"))
&& !position_meeting(x-32, y+4, asset_get("par_jumpthrough"))){
	return true;
}
#define checkRightFree
if (!position_meeting(x+32, y+4, asset_get("par_block"))
&& !position_meeting(x+32, y+4, asset_get("par_jumpthrough"))){
	return true;
}