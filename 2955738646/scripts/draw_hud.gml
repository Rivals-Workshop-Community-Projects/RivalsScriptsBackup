if (state == PS_SPAWN){
	emerald_hud = 1;
	ChaosEmerald = 0;
	EmeraldAmount = 0;
	EmeraldSense = 0;
	EmeraldChance = 0;
	transparency = 1;
	timestop = false;
	SuperMecha = false;
}

if (timestop == true){
	if (instance_exists(timestop_BG)){
	if (timestop_BG.state_timer < 60){
		draw_sprite_ext(sprite_get("bar_time"), 0, temp_x+1, temp_y-2 - (timestop_BG.state_timer / 3), 1, 0.1 + (timestop_BG.state_timer / 80), 0, booster_color, 1);
	}
	if (timestop_BG.state_timer > 59){
		//The background bar
		draw_sprite_ext(sprite_get("bar_time"), 0, temp_x+1, temp_y-26, 1, 1, 0, booster_color, 1);
	}
	if (timestop_BG.state_timer > 60){
		//draw_sprite_ext(sprite_get("bar_time_left"), 16, temp_x+1, temp_y-26, 2, 2, 0, c_white, 1);
	}
	if (timestop_time > 1 && timestop_time < 8){
		//The right starting animation
		draw_sprite_ext(sprite_get("bar_time_right"), 0 + timestop_time, temp_x+192, temp_y-26, 2, 2, 0, c_gray, 1);
	}
	if (timestop_time >= 8){
		//The right start done
		draw_sprite_ext(sprite_get("bar_time_right"), 7, temp_x+192, temp_y-26, 2, 2, 0, c_gray, 1);
	}
	if (timestop_time >= 9 && timestop_time < 185){
		//The middle part
		//draw_sprite_ext(sprite_get("bar_time_bit"), 1, temp_x+14, temp_y-26, (timestop_time - 24) * -1, 2, 0, c_white, 0.7);
		draw_sprite_ext(sprite_get("bar_time_bit"), 1, temp_x+192, temp_y-26, 4 + (timestop_time * -1) / 2, 2, 0, c_gray, 1);
	}
	if (timestop_time >= 8 && timestop_time < 185){
		//The middle part moving across
		//draw_sprite_ext(sprite_get("bar_time_bit"), 1, temp_x+192, temp_y-26, (timestop_time * -1) / 2, 2, 0, c_white, 1);
	}
	if (timestop_time >= 185){
		//The middle part done
		draw_sprite_ext(sprite_get("bar_time_bit"), 1, temp_x+16, temp_y-26, 90, 2, 0, c_gray, 1);
		
		//The left end
		draw_sprite_ext(sprite_get("bar_time_left"), 0 + timestop_time, temp_x+1, temp_y-26, 2, 2, 0, c_gray, 1);
		}
	if (timestop_time >= 185){
		//The middle part done
		draw_sprite_ext(sprite_get("bar_time_bit"), 1, temp_x+16, temp_y-26, 90, 2, 0, c_gray, 1);
		
		//The left end
		draw_sprite_ext(sprite_get("bar_time_left"), 0 + timestop_time, temp_x+1, temp_y-26, 2, 2, 0, c_gray, 1);
		}
	}
}

if (transparency > 0){ transparency -= 0.005; }

//draw_sprite_ext(sprite_get("emrl_meter"), 0, temp_x+24, temp_y-38, 2, 2, 0, c_white, 0.3);
if (emerald_hud == true){
if (EmeraldAmount == 0){
draw_sprite_ext(sprite_get("emrl_meter_black"), 0, temp_x+15, temp_y-22, 2, 2, 0, c_black, 0.9 + transparency);
}
if (EmeraldAmount <= 1){
draw_sprite_ext(sprite_get("emrl_meter_black"), 0, temp_x+40, temp_y-32, 2, 2, 0, c_black, 0.9 + transparency);
}
if (EmeraldAmount <= 2){
draw_sprite_ext(sprite_get("emrl_meter_black"), 0, temp_x+65, temp_y-22, 2, 2, 0, c_black, 0.9 + transparency);
}
if (EmeraldAmount <= 3){
draw_sprite_ext(sprite_get("emrl_meter_black"), 0, temp_x+90, temp_y-32, 2, 2, 0, c_black, 0.9 + transparency);
}
if (EmeraldAmount <= 4){
draw_sprite_ext(sprite_get("emrl_meter_black"), 0, temp_x+115, temp_y-22, 2, 2, 0, c_black, 0.5 + transparency);
}
if (EmeraldAmount <= 5){
draw_sprite_ext(sprite_get("emrl_meter_black"), 0, temp_x+140, temp_y-32, 2, 2, 0, c_black, 0.5 + transparency);
}
if (EmeraldAmount <= 6){
draw_sprite_ext(sprite_get("emrl_meter_black"), 0, temp_x+165, temp_y-22, 2, 2, 0, c_black, 0.5 + transparency);
}
if (EmeraldAmount <= 7){
//draw_sprite_ext(sprite_get("emrl_meter_black"), 0, temp_x+190, temp_y-32, 2, 2, 0, c_black, 0.5 + transparency);
}

if (SuperMecha == false){
	if (EmeraldAmount >= 1){
	draw_sprite_ext(sprite_get("emrl_meter_emeralds"), Emerald1, temp_x+15, temp_y-22, 2, 2, 0, c_white, 1);
	}
	if (EmeraldAmount >= 2){
	draw_sprite_ext(sprite_get("emrl_meter_emeralds"), Emerald2, temp_x+40, temp_y-32, 2, 2, 0, c_white, 1);
	}
	if (EmeraldAmount >= 3){
	draw_sprite_ext(sprite_get("emrl_meter_emeralds"), Emerald3, temp_x+65, temp_y-22, 2, 2, 0, c_white, 1);
	}
	if (EmeraldAmount >= 4){
	draw_sprite_ext(sprite_get("emrl_meter_emeralds"), Emerald4, temp_x+90, temp_y-32, 2, 2, 0, c_white, 1);
	}
	if (EmeraldAmount >= 5){
	draw_sprite_ext(sprite_get("emrl_meter_black"), Emerald5, temp_x+115, temp_y-22, 2, 2, 0, c_black, 0.6);
	}
	if (EmeraldAmount >= 6){
	draw_sprite_ext(sprite_get("emrl_meter_black"), Emerald6, temp_x+140, temp_y-32, 2, 2, 0, c_black, 0.6);
	}
	if (EmeraldAmount == 7){
	draw_sprite_ext(sprite_get("emrl_meter_black"), Emerald7, temp_x+165, temp_y-22, 2, 2, 0, c_black, 0.6);
	}
} else {
	if (EmeraldAmount >= 1){
	draw_sprite_ext(sprite_get("emrl_meter_black"), Emerald1, temp_x+15, temp_y-22, 2, 2, 0, c_white, 1);
	}
	if (EmeraldAmount >= 2){
	draw_sprite_ext(sprite_get("emrl_meter_black"), Emerald2, temp_x+40, temp_y-32, 2, 2, 0, c_white, 1);
	}
	if (EmeraldAmount >= 3){
	draw_sprite_ext(sprite_get("emrl_meter_black"), Emerald3, temp_x+65, temp_y-22, 2, 2, 0, c_white, 1);
	}
	if (EmeraldAmount >= 4){
	draw_sprite_ext(sprite_get("emrl_meter_black"), Emerald4, temp_x+90, temp_y-32, 2, 2, 0, c_white, 1);
	}
	if (EmeraldAmount >= 5){
	draw_sprite_ext(sprite_get("emrl_meter_black"), Emerald5, temp_x+115, temp_y-22, 2, 2, 0, c_black, 0.6);
	}
	if (EmeraldAmount >= 6){
	draw_sprite_ext(sprite_get("emrl_meter_black"), Emerald6, temp_x+140, temp_y-32, 2, 2, 0, c_black, 0.6);
	}
	if (EmeraldAmount == 7){
	draw_sprite_ext(sprite_get("emrl_meter_black"), Emerald7, temp_x+165, temp_y-22, 2, 2, 0, c_black, 0.6);
	
	}
}

var blink_cooldown = move_cooldown[AT_NTHROW];
if (EmeraldAmount == 4){
if (move_cooldown[AT_NTHROW] <= 0){ move_cooldown[AT_NTHROW] = 40; }
}

if (SuperMecha == false){
if (EmeraldAmount > 0){
draw_sprite_ext(sprite_get("emrl_blink"), 0, temp_x+29, temp_y-10, (blink_cooldown / 8) + 1, (blink_cooldown / 8) + 1, 0, c_white, 0 + (blink_cooldown / 30));
}
if (EmeraldAmount > 1){
draw_sprite_ext(sprite_get("emrl_blink"), 0, temp_x+54, temp_y-20, (blink_cooldown / 8) + 1, (blink_cooldown / 8) + 1, 0, c_white, 0 + (blink_cooldown / 30));
}
if (EmeraldAmount > 2){
draw_sprite_ext(sprite_get("emrl_blink"), 0, temp_x+79, temp_y-10, (blink_cooldown / 8) + 1, (blink_cooldown / 8) + 1, 0, c_white, 0 + (blink_cooldown / 30));
}
if (EmeraldAmount > 3){
draw_sprite_ext(sprite_get("emrl_blink"), 0, temp_x+104, temp_y-20, (blink_cooldown / 8) + 1, (blink_cooldown / 8) + 1, 0, c_white, 0 + (blink_cooldown / 30));
	}
}

}

//Sound control for turning Super
var volume = get_local_setting(3);
var DoomsdayZoneStart = sound_get("DoomsdayZone_Start");
var DoomsdayZoneLoop = sound_get("DoomsdayZone_Loop");
var EA_DoomsdayZoneStart = sound_get("EA_DoomsdayZone_Start");
var EA_DoomsdayZoneLoop = sound_get("EA_DoomsdayZone_Loop");

if (get_player_color(player) != 8) {
if (attack == AT_TAUNT_2 && window == 1 && window_timer == 1
	&& (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) ){
	sound_play(DoomsdayZoneStart, false, noone, volume + 1);
}

if (move_cooldown[AT_TAUNT_2] == 2985){
	sound_play(DoomsdayZoneLoop, true, noone, volume + 1);
}

if (SuperMecha == false && white_flash_timer > 0 && move_cooldown[AT_TAUNT_2] > 1){ sound_stop(DoomsdayZoneLoop); }

}

if (get_player_color(player) == 8) {
if (attack == AT_TAUNT_2 && window == 1 && window_timer == 1
	&& (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) ){
	sound_play(EA_DoomsdayZoneStart, false, noone, volume + 1);
}

if (move_cooldown[AT_TAUNT_2] == 2985){
	sound_play(EA_DoomsdayZoneLoop, true, noone, volume + 1);
}

if (SuperMecha == false && white_flash_timer > 0 && move_cooldown[AT_TAUNT_2] > 1){ sound_stop(EA_DoomsdayZoneLoop); }

}