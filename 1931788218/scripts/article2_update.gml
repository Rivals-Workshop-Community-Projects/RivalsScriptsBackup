//article2_update

x = player_id.x + 15 * spr_dir;
y = player_id.y;

if (player_id.attack != AT_FSPECIAL || (player_id.state != PS_ATTACK_GROUND && player_id.state != PS_ATTACK_AIR) || player_id.window == 3)
{
	timetype = -1;
	   sprite_index = sprite_get("runningWaveEnd");
	if (player_id.fxG)
	    sprite_index = sprite_get("runningWaveEndG");
}

if (time > 12)
{
	time = 12;
	timetype = 0;
	sprite_index = sprite_get("runningWave");
	if (player_id.fxG)
	    sprite_index = sprite_get("runningWaveG");
	
}


time += timetype;

if (time <= 0)
{
	instance_destroy();
}
image_index += img_vsp;

player_id.move_cooldown[AT_FSPECIAL] = 30;


//CODED BY HOWEAL TANKAA
//TAKE INSPIRATION FREELY