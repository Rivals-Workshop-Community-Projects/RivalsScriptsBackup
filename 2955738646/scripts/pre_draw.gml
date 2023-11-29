shader_start();

//draw_sprite_ext(sprite_get("taunt_aura"), get_gameplay_time()*.3, x - 118, y - 138, 2, 1.5, 0, c_white, .4);
//draw_sprite_ext(sprite_get("taunt_aura"), get_gameplay_time()*.2, x - 118, y - 162, 2, 1.8, 0, c_white, .3);
//draw_sprite_ext(sprite_get("taunt_aura"), get_gameplay_time()*.1, x - 118, y - 198, 2, 2.2, 0, c_white, .2);

//draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.4, x+2, y-35, 2, 2, hsp, c_white, 1);

if (instance_exists(teleportback) && teleportback >= 0 && teleportback.teleporting_amount < 4){
	draw_debug_text( teleportback.x-1, teleportback.y-110, string( teleportback.teleporting_amount ));
	//draw_text_color(teleportback.x, teleportback.y-50, string( teleportback.teleporting_amount ), 200, 200, 200, 200, 1);
}

if (state == PS_DASH_START){
	draw_sprite_ext(sprite_get("booster_startup"), state_timer / 6, x-9 * spr_dir, y-32, 2, 2, 270 * spr_dir, booster_color, 1);
}
if (state == PS_DASH){
	draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x, y-50, 2, 2, 270 * spr_dir, booster_color, 1);
}
if (state == PS_DASH_TURN){
	draw_sprite_ext(sprite_get("booster_startup"), state_timer / 6, x+8 * spr_dir, y-44, 2, 2, 270 * spr_dir, booster_color, 1);
}

if !(state == PS_IDLE_AIR && state_timer < 3){
	if (state_cat == SC_AIR_NEUTRAL){
	if (vsp < 1){
	if (hsp >= 8){
	draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x, y-50, 2, 2, 270, booster_color, 1);
		
	}else if(hsp <= -8){
	draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x, y-50, 2, 2, 90, booster_color, 1);
		
	}else if(hsp > 4 && hsp < 8){
	draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x, y-50, 2, 2, 315, booster_color, 1);
		
	}else if((hsp < -4 && hsp > -8)){
	draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x, y-50, 2, 2, 45, booster_color, 1);
		
	}else{
	draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x, y-50, 2, 2, 0, booster_color, 1);
			}
		}
	}
}

if (state == PS_ATTACK_AIR){
	if (attack == AT_NSPECIAL && (window == 6 || window == 7 || window == 10) && air_special == true){
	if (vsp < 0.1 || vsp > 0.1){
	if (hsp >= 0.1){
	draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x+7 * spr_dir, y-40, 2, 2, 270, booster_color, 1);
		
	}else if(hsp <= -1.0){
	draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x+7 * spr_dir, y-40, 2, 2, 90, booster_color, 1);
		
	}else if(hsp > 0.1 && hsp < 0.1){
	draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x+7 * spr_dir, y-40, 2, 2, 315, booster_color, 1);
		
	}else if(hsp < -10.0 && hsp > 10.0){
	draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x+7 * spr_dir, y-40, 2, 2, 45, booster_color, 1);
		
	}else{
	draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x+7 * spr_dir, y-40, 2, 2, 0, booster_color, 1);
			}
		}
	}
}

//Booster specific placements
if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
	if (attack == AT_EXTRA_3){
		if (window == 1 && window_timer < 4){ draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.6, x-8 * spr_dir, y-40, 3, 1.5, -110 * spr_dir, booster_color, 1); }
		if (window == 1 && window_timer >= 4 && window_timer < 9){ draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.6, x-8 * spr_dir, y-40, 1.5, 2, 100 * spr_dir, booster_color, 1); }
		//if (window == 1 && window_timer < 4){ draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.4, x-8 * spr_dir, y-40, 2, 2, -110 * spr_dir, c_white, 1); }
		//if (window == 1 && window_timer >= 4){ draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.4 + abs(hsp), x+8 * spr_dir, y-36, 2, 2, 90 * spr_dir, c_white, 1); }
	}
	if (attack == AT_USPECIAL){
		if (window == 1){ draw_sprite_ext(sprite_get("booster_startup"), window_timer / 10, x-1 * spr_dir, y-40, 2, 2, 0, booster_color, 1); }
		if (window == 2){ draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.4, x-1 * spr_dir, y-40, 1.5, 3, 0, booster_color, 1); }
		if (window == 3){ draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x-1 * spr_dir, y-40, 2, 2, 0, booster_color, 1); }
		if (window == 8){ draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.6, x+1 * spr_dir, y-38, 1, 2, hsp * -5, booster_color, 1); }
	}
	if (attack == AT_FSPECIAL){
		if (window == 1){ draw_sprite_ext(sprite_get("booster_startup"), get_gameplay_time()*.8, x-12 * spr_dir, y-46, 2, 2, 0, booster_color, 0.8); }
		if (window == 5){ draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.4, x-6 * spr_dir, y-48, 1.5, 2, -90 * spr_dir, booster_color, 1 - (window_timer / 9)); }
		if (window == 3){ draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.8, x-6 * spr_dir, y-46, 2 - (window_timer / 10), 2, -90 * spr_dir, booster_color, 1); }
	}
	if (attack == AT_DSPECIAL){
		if (window == 1){ draw_sprite_ext(sprite_get("booster_startup"), window_timer / 9, x-14 * spr_dir, y-54, 2, 2, 0, booster_color, 1); }
		if (window == 2){ draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.6, x-16 * spr_dir, y-52, 2, 2.5, -140 * spr_dir, booster_color, 1); }
		if (free && window == 3){ draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.3, x-14 * spr_dir, y-50, 2, 2, -110 * spr_dir, booster_color, 1); }
		if (free == false && window == 3){ draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.2, x-14 * spr_dir, y-44, 2, 2, -80 * spr_dir, booster_color, 1); }
	}
	if (attack == AT_UAIR){
		if (window == 1){ draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x, y, 2, 2, 0, booster_color, 1); }
		if (window == 2 && window_timer < 3){ draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x, y-10, 2, 2, 120 * spr_dir, booster_color, 1); }
		if (window == 2 && window_timer >= 3 && window_timer < 9){ draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x-6 * spr_dir, y-10, 2, 2, 170 * spr_dir, booster_color, 1); }
		if (window == 2 && window_timer >= 3 && window_timer >= 9){ draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x-6 * spr_dir, y, 2, 2, 180 * spr_dir, booster_color, 1); }
	}
	if (attack == AT_NAIR && window == 1){
	draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x, y-35, 2, 2, 0, booster_color, 1);
	}
	if (attack == AT_FAIR && window == 2){
	draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x, y-40, 2, 2, -25 * spr_dir, booster_color, 1);
	}
	if (attack == AT_BAIR){
		if (window == 1){ draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x-10 * spr_dir, y-52, 2, 2, 0, booster_color, 1); }
		if (window == 2){ draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x, y-50, 2, 2, 25 * spr_dir, booster_color, 1); }
		if (window == 3){ draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x, y-40, 2, 2, 5 * spr_dir, booster_color, 1); }
	}
	if (attack == AT_DAIR){
		if (window == 1){ draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x, y-30, 2, 2, 0, booster_color, 1); }
		if (window == 2){ draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x+4 * spr_dir, y-25, 2, 2, 0, booster_color, 1); }
		if (window == 3){ draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x+3 * spr_dir, y-25, 2, 2, 0, booster_color, 1); }
	}
	if (attack == AT_FSTRONG){
		if (window == 1 && window_timer > 2){ draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.4, x-14 * spr_dir, y-34, 2, 2, -10 * spr_dir, booster_color, 1); }
	}
}


if(attack == AT_TAUNT && state == PS_ATTACK_GROUND){
	if (window >= 2 && window <= 5){
	draw_sprite_ext(sprite_get("taunt_aura"), get_gameplay_time()*.5, x - 120, y - 180, 2, 2, 0, c_white, 1);
	}
}
       
//Roll
if (state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_AIR_DODGE){
	if (move_cooldown[AT_EXTRA_2] > 1){
	if !(attack == AT_EXTRA_1 || state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
	if state_timer == 3 {
		if state == PS_ROLL_FORWARD {
			spawn_hit_fx(x, y, RollAfterL);		
		} else  if state == PS_ROLL_FORWARD{
			spawn_hit_fx(x, y, RollAfter);		
		} else{
			spawn_hit_fx(x, y, AirDashAfter);
				}
			}
		}
	}
}

//var enemy_angle = point_direction(has_hit_id.x, has_hit_id.y - has_hit_id.char_height * 1, x, y);
//draw_sprite_ext(sprite_get("super_dash_effect"), get_gameplay_time()*.4, x, y-25, 1, 1, enemy_angle + 180, c_white, 1);
/*
if(attack == AT_FSTRONG && state == PS_ATTACK_GROUND){
	if (grabbedid != noone){
	//var enemy_angle = point_direction(has_hit_id.x, has_hit_id.y - has_hit_id.char_height * 1, x, y);
	if(window == 2){
	draw_sprite_ext(sprite_get("super_dash_startup"), get_gameplay_time()*.2, x + 30 * spr_dir, y + 1, 1 * spr_dir, 1, 0, c_white, 1);
	}
	if(window == 3){
	draw_sprite_ext(sprite_get("super_dash_effect"), get_gameplay_time()*.4, x - 10, y-40, 1 * spr_dir, 1, 1, c_white, 1);
		}
	}
	if(window == 3 && hitpause == true){
	draw_sprite_ext(sprite_get("super_dash_stop"), get_gameplay_time()*.1, x - 120 * spr_dir, y - 180, 1 * spr_dir, 1, 0, c_white, 1);
	}
}
*/

if (attack == AT_FSTRONG && state == PS_ATTACK_GROUND){
	if (window > 1 && grabbedid != noone){
	draw_sprite_ext(sprite_get("fstrong_burst"), window_timer * .4, x - 60 * spr_dir, y-104, 1 * spr_dir, 1, 1, c_white, 1);
	}
}

if(attack == AT_EXTRA_2 && state == PS_ATTACK_AIR){
	if (previous_id != noone || has_hit_id != noone){
	var enemy_angle = point_direction(has_hit_id.x, has_hit_id.y - has_hit_id.char_height * .5, x, y);
	if(window == 1 || window == 2 && window_timer <= 5){
	draw_sprite_ext(sprite_get("super_dash_startup"), get_gameplay_time()*.2, x, y, 1, 1, 0, c_white, 1);
	}
	if(window == 2 && window_timer > 5){
	draw_sprite_ext(sprite_get("super_dash_around"), get_gameplay_time()*.2, x, y-50, 1, 1, enemy_angle + 180, c_white, 1);
	}
	//if(window == 3){
	//draw_sprite_ext(sprite_get("super_dash_around"), get_gameplay_time()*.4, x, y, 1, 1, enemy_angle + 180, c_white, 1);
		//}
	}
}

if(attack == AT_TAUNT_2 && state == PS_ATTACK_AIR){
	if(window == 2){
		draw_sprite_ext(sprite_get("electric_effect"), get_gameplay_time()*.5, x - 70, y - 90, 2, 2, 0, c_white, 1);
	}
	
}

if(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
//MOTION BLUR CODE
	if ((attack == AT_EXTRA_1) || attack == AT_UTILT && window == 2 && flyforward == true || timestop == true){

	for(var m = 0; m < array_length_1d(blur); m++) {
		var _img = blur[m];
		var _percent = 1 - (m / array_length_1d(blur));
		draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4], _img[5], _img[6], _img[7], _img[8] * _percent);
			//}
		}
	}
}
if (timestop == true){
	for(var m = 0; m < array_length_1d(blur); m++) {
		var _img = blur[m];
		var _percent = 1 - (m / array_length_1d(blur));
		//var _color = c_gray;
		draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4], _img[5], _img[6], c_gray, _img[8] * _percent);
	}
}
 
shader_end();
