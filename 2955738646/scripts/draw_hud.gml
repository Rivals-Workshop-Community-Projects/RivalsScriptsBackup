if (state == PS_SPAWN){
	ChaosEmerald = 0;
	EmeraldAmount = 0;
	EmeraldSense = 0;
	EmeraldChance = 0;
	transparency = 1;
}

if (timestop == true){
	if (timestop_BG.state_timer < 60){
		draw_sprite_ext(sprite_get("bar_time"), 0, temp_x+1, temp_y-2 - (timestop_BG.state_timer / 3), 1, 0.1 + (timestop_BG.state_timer / 80), 0, c_white, 1);
	}
	if (timestop_BG.state_timer > 59){
		draw_sprite_ext(sprite_get("bar_time"), 0, temp_x+1, temp_y-26, 1, 1, 0, c_white, 1);
	}
	if (timestop_BG.state_timer > 60){
		draw_sprite_ext(sprite_get("bar_time_left"), timestop_time, temp_x+1, temp_y-26, 1, 1, 0, c_white, 1);
	}
}

if (transparency > 0){ transparency -= 0.005; }

//draw_sprite_ext(sprite_get("emrl_meter"), 0, temp_x+24, temp_y-38, 2, 2, 0, c_white, 0.3);
if (EmeraldAmount == 0){
draw_sprite_ext(sprite_get("emrl_meter_black"), 0, temp_x+15, temp_y-22, 2, 2, 0, c_black, transparency);
}
if (EmeraldAmount <= 1){
draw_sprite_ext(sprite_get("emrl_meter_black"), 0, temp_x+40, temp_y-32, 2, 2, 0, c_black, transparency);
}
if (EmeraldAmount <= 2){
draw_sprite_ext(sprite_get("emrl_meter_black"), 0, temp_x+65, temp_y-22, 2, 2, 0, c_black, transparency);
}
if (EmeraldAmount <= 3){
draw_sprite_ext(sprite_get("emrl_meter_black"), 0, temp_x+90, temp_y-32, 2, 2, 0, c_black, transparency);
}
if (EmeraldAmount <= 4){
draw_sprite_ext(sprite_get("emrl_meter_black"), 0, temp_x+115, temp_y-22, 2, 2, 0, c_black, transparency);
}
if (EmeraldAmount <= 5){
draw_sprite_ext(sprite_get("emrl_meter_black"), 0, temp_x+140, temp_y-32, 2, 2, 0, c_black, transparency);
}
if (EmeraldAmount <= 6){
draw_sprite_ext(sprite_get("emrl_meter_black"), 0, temp_x+165, temp_y-22, 2, 2, 0, c_black, transparency);
}

/*
if (EmeraldAmount >= 1){
draw_sprite_ext(sprite_get("emrl_meter_emeralds"), Emerald1, temp_x+15, temp_y-22, 2, 2, 0, c_white, transparency);
}
if (EmeraldAmount >= 2){
draw_sprite_ext(sprite_get("emrl_meter_emeralds"), Emerald2, temp_x+40, temp_y-32, 2, 2, 0, c_white, transparency);
}
if (EmeraldAmount >= 3){
draw_sprite_ext(sprite_get("emrl_meter_emeralds"), Emerald3, temp_x+65, temp_y-22, 2, 2, 0, c_white, transparency);
}
if (EmeraldAmount >= 4){
draw_sprite_ext(sprite_get("emrl_meter_emeralds"), Emerald4, temp_x+90, temp_y-32, 2, 2, 0, c_white, transparency);
}
if (EmeraldAmount >= 5){
draw_sprite_ext(sprite_get("emrl_meter_emeralds"), Emerald5, temp_x+115, temp_y-22, 2, 2, 0, c_white, transparency);
}
if (EmeraldAmount >= 6){
draw_sprite_ext(sprite_get("emrl_meter_emeralds"), Emerald6, temp_x+140, temp_y-32, 2, 2, 0, c_white, transparency);
}
if (EmeraldAmount == 7){
draw_sprite_ext(sprite_get("emrl_meter_emeralds"), Emerald7, temp_x+165, temp_y-22, 2, 2, 0, c_white, transparency);
}
*/

var volume = get_local_setting(3);
var DoomsdayZoneStart = sound_get("DoomsdayZone_Start");
var DoomsdayZoneLoop = sound_get("DoomsdayZone_Loop");
if (attack == AT_TAUNT_2 && window == 1 && window_timer == 2
	&& (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) ){
	sound_play(DoomsdayZoneStart, false, noone, volume + 1);
}

if (move_cooldown[AT_TAUNT_2] == 2985){
	sound_play(DoomsdayZoneLoop, true, noone, volume + 1);
}
if (SuperMecha == false && white_flash_timer > 0){ sound_stop(DoomsdayZoneLoop); }