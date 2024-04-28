shader_start();

//draw_debug_text(x-20, y-190, "window: " + string(window));
//draw_debug_text(x-20, y-210, "window timer: " + string(window_timer));
//draw_debug_text(x-20, y-230, "state timer: " + string(state_timer));

if (instance_exists(teleportback) && teleportback >= 0 && teleportback.teleporting_amount < 4){
	draw_debug_text( teleportback.x-1, teleportback.y-110, string( teleportback.teleporting_amount ));
	//draw_text_color(teleportback.x, teleportback.y-50, string( teleportback.teleporting_amount ), 200, 200, 200, 200, 1);
}

if (state == PS_DASH_START){
	draw_sprite_ext(sprite_get("booster_startup_light"), state_timer / 6, x-9 * spr_dir, y-32, 2, 2, 270 * spr_dir, c_white, 1);
	draw_sprite_ext(sprite_get("booster_startup"), state_timer / 6, x-9 * spr_dir, y-32, 2, 2, 270 * spr_dir, booster_color, 1);
}
if (state == PS_DASH){
	draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x, y-50, 2, 2, 270 * spr_dir, c_white, 1);
	draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x, y-50, 2, 2, 270 * spr_dir, booster_color, 1);
}
if (state == PS_DASH_TURN){
	draw_sprite_ext(sprite_get("booster_startup_light"), state_timer / 6, x+8 * spr_dir, y-44, 2, 2, 270 * spr_dir, c_white, 1);
	draw_sprite_ext(sprite_get("booster_startup"), state_timer / 6, x+8 * spr_dir, y-44, 2, 2, 270 * spr_dir, booster_color, 1);
}

if !(state == PS_IDLE_AIR && state_timer < 3){
	if (state_cat == SC_AIR_NEUTRAL){
	if (vsp < 1){
	if (hsp >= 8){
	draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x, y-50, 2, 2, 270, c_white, 1);
	draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x, y-50, 2, 2, 270, booster_color, 1);
		
	}else if(hsp <= -8){
	draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x, y-50, 2, 2, 90, c_white, 1);
	draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x, y-50, 2, 2, 90, booster_color, 1);
		
	}else if(hsp > 4 && hsp < 8){
	draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x, y-50, 2, 2, 315, c_white, 1);
	draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x, y-50, 2, 2, 315, booster_color, 1);
		
	}else if((hsp < -4 && hsp > -8)){
	draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x, y-50, 2, 2, 45, c_white, 1);
	draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x, y-50, 2, 2, 45, booster_color, 1);
		
	}else{
	draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x, y-50, 2, 2, 0, c_white, 1);
	draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x, y-50, 2, 2, 0, booster_color, 1);
			}
		}
	}
}

if (state == PS_ATTACK_AIR){
	if (attack == AT_NSPECIAL && (window == 6 || window == 7 || window == 10) && air_special == true){
	if (vsp < 0.1 || vsp > 0.1){
	if (hsp >= 0.1){
	draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x+7 * spr_dir, y-40, 2, 2, 270, c_white, 1);
	draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x+7 * spr_dir, y-40, 2, 2, 270, booster_color, 1);
		
	}else if(hsp <= -1.0){
	draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x+7 * spr_dir, y-40, 2, 2, 90, c_white, 1);
	draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x+7 * spr_dir, y-40, 2, 2, 90, booster_color, 1);
		
	}else if(hsp > 0.1 && hsp < 0.1){
	draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x+7 * spr_dir, y-40, 2, 2, 315, c_white, 1);
	draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x+7 * spr_dir, y-40, 2, 2, 315, booster_color, 1);
		
	}else if(hsp < -10.0 && hsp > 10.0){
	draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x+7 * spr_dir, y-40, 2, 2, 45, c_white, 1);
	draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x+7 * spr_dir, y-40, 2, 2, 45, booster_color, 1);
		
	}else{
	draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x+7 * spr_dir, y-40, 2, 2, 0, c_white, 1);
	draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x+7 * spr_dir, y-40, 2, 2, 0, booster_color, 1);
			}
		}
	}
}

if (state == PS_ATTACK_AIR){
	if (attack == AT_NSPECIAL && (window == 2 || window == 3 || window == 4) && free == true){
	if (vsp < 0.1 || vsp > 0.1){
	if (hsp >= 0.1){
	draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x+7 * spr_dir, y-40, 2, 2, 270, c_white, 1);
	draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x+7 * spr_dir, y-40, 2, 2, 270, booster_color, 1);
		
	}else if(hsp <= -1.0){
	draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x+7 * spr_dir, y-40, 2, 2, 90, c_white, 1);
	draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x+7 * spr_dir, y-40, 2, 2, 90, booster_color, 1);
		
	}else if(hsp > 0.1 && hsp < 0.1){
	draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x+7 * spr_dir, y-40, 2, 2, 315, c_white, 1);
	draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x+7 * spr_dir, y-40, 2, 2, 315, booster_color, 1);
		
	}else if(hsp < -10.0 && hsp > 10.0){
	draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x+7 * spr_dir, y-40, 2, 2, 45, c_white, 1);
	draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x+7 * spr_dir, y-40, 2, 2, 45, booster_color, 1);
		
	}else{
	draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x+7 * spr_dir, y-40, 2, 2, 0, c_white, 1);
	draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x+7 * spr_dir, y-40, 2, 2, 0, booster_color, 1);
			}
		}
	}
}

//Booster specific placements
if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
	if (attack == AT_EXTRA_3){
		if (window == 1 && window_timer < 4){
			draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.6, x-8 * spr_dir, y-40, 3, 1.5, -110 * spr_dir, c_white, 1);
			draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.6, x-8 * spr_dir, y-40, 3, 1.5, -110 * spr_dir, booster_color, 1);
		}
		if (window == 1 && window_timer >= 4 && window_timer < 9){
			draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.6, x-8 * spr_dir, y-40, 1.5, 2, 100 * spr_dir, c_white, 1);
			draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.6, x-8 * spr_dir, y-40, 1.5, 2, 100 * spr_dir, booster_color, 1);
		}
	}
	if (attack == AT_USPECIAL){
		if (window == 1){
			draw_sprite_ext(sprite_get("booster_startup_light"), window_timer / 10, x-4 * spr_dir, y-45, 2, 2, 0, c_white, 1);
			draw_sprite_ext(sprite_get("booster_startup"), window_timer / 10, x-4 * spr_dir, y-45, 2, 2, 0, booster_color, 1);
		}
		if (window == 2){
			draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.4, x-1 * spr_dir, y-40, 1.5, 3, 0, c_white, 1);
			draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.4, x-1 * spr_dir, y-40, 1.5, 3, 0, booster_color, 1);
		}
		if (window == 3){
			draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x-1 * spr_dir, y-40, 2, 2, 0, c_white, 1);
			draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x-1 * spr_dir, y-40, 2, 2, 0, booster_color, 1);
		}
		if (window == 8){
			draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.6, x+1 * spr_dir, y-38, 1.5 - (window_timer / 19), 2.5, hsp * -5, c_white, 1)
			draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.6, x+1 * spr_dir, y-38, 1.5 - (window_timer / 19), 2.5, hsp * -5, booster_color, 1);
		}
	}
	if (attack == AT_FSPECIAL){
		if (window == 1){
			draw_sprite_ext(sprite_get("booster_startup_light"), get_gameplay_time()*.8, x-12 * spr_dir, y-46, 2, 2, 0, c_white, 0.8);
			draw_sprite_ext(sprite_get("booster_startup"), get_gameplay_time()*.8, x-12 * spr_dir, y-46, 2, 2, 0, booster_color, 0.8);
		}
		if (window == 5){
			draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.4, x-6 * spr_dir, y-48, 1.5, 2, -90 * spr_dir, c_white, 1 - (window_timer / 9));
			draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.4, x-6 * spr_dir, y-48, 1.5, 2, -90 * spr_dir, booster_color, 1 - (window_timer / 9));
		}
		if (window == 3){
			draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.8, x-6 * spr_dir, y-46, 2 - (window_timer / 10), 2, -90 * spr_dir, c_white, 1);
			draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.8, x-6 * spr_dir, y-46, 2 - (window_timer / 10), 2, -90 * spr_dir, booster_color, 1);
		}
	}
	if (attack == AT_FSPECIAL_2){
		if (state == PS_ATTACK_AIR || window == 3){
		draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x-3 * spr_dir, y-50, 3 - (state_timer / 36), 2, -hsp * 10, c_white, 1);
		draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x-3 * spr_dir, y-50, 3 - (state_timer / 36), 2, -hsp * 10, booster_color, 1);
		}
	}
	if (attack == AT_DSPECIAL){
		if (window == 1){
			draw_sprite_ext(sprite_get("booster_startup_light"), window_timer / 9, x-14 * spr_dir, y-54, 2, 2, 0, c_white, 1);
			draw_sprite_ext(sprite_get("booster_startup"), window_timer / 9, x-14 * spr_dir, y-54, 2, 2, 0, booster_color, 1);
		}
		if (window == 2){
			draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.6, x-16 * spr_dir, y-52, 2, 2.5, -140 * spr_dir, c_white, 1);
			draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.6, x-16 * spr_dir, y-52, 2, 2.5, -140 * spr_dir, booster_color, 1);
		}
		if (dspecial_id > 0 && window != 1 && window < 5 && state == PS_ATTACK_AIR){
			draw_sprite_ext(sprite_get("fstrong_burst"), window_timer / 5, x-28 * spr_dir, y-140, 1 * spr_dir, 1, 320 * spr_dir, c_white, 1);
		}
		if (state == PS_ATTACK_AIR && window == 3){
			draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.3, x-14 * spr_dir, y-50, 2, 2, -110 * spr_dir, c_white, 1);
			draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.3, x-14 * spr_dir, y-50, 2, 2, -110 * spr_dir, booster_color, 1);
		}
		if (state != PS_ATTACK_AIR && window == 3){
			draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.2, x-14 * spr_dir, y-44, 2, 2, -80 * spr_dir, c_white, 1);
			draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.2, x-14 * spr_dir, y-44, 2, 2, -80 * spr_dir, booster_color, 1);
		}
	}
	if (attack == AT_UAIR){
		if (window == 1){
			draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x, y, 2, 2, 0, c_white, 1);
			draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x, y, 2, 2, 0, booster_color, 1);
		}
		if (window == 2 && window_timer < 3){
			draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x, y-10, 2, 2, 120 * spr_dir, c_white, 1);
			draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x, y-10, 2, 2, 120 * spr_dir, booster_color, 1);
		}
		if (window == 2 && window_timer >= 3 && window_timer < 9){
			draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x-6 * spr_dir, y-10, 2, 2, 170 * spr_dir, c_white, 1);
			draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x-6 * spr_dir, y-10, 2, 2, 170 * spr_dir, booster_color, 1);
		}
		if (window == 2 && window_timer >= 3 && window_timer >= 9){ 
			draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x-6 * spr_dir, y, 2, 2, 180 * spr_dir, c_white, 1);
			draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x-6 * spr_dir, y, 2, 2, 180 * spr_dir, booster_color, 1);
		}
	}
	if (attack == AT_NAIR && window == 1){
		draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x, y-35, 2, 2, 0, c_white, 1);
		draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x, y-35, 2, 2, 0, booster_color, 1);
	}
	if (attack == AT_FAIR && window == 2){
		draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x, y-40, 2, 2, -25 * spr_dir, c_white, 1);
		draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x, y-40, 2, 2, -25 * spr_dir, booster_color, 1);
	}
	if (attack == AT_BAIR){
		if (window == 1){
			draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x-10 * spr_dir, y-52, 2, 2, 0, c_white, 1);
			draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x-10 * spr_dir, y-52, 2, 2, 0, booster_color, 1);
		}
		if (window == 2){
			draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x, y-50, 2, 2, 25 * spr_dir, c_white, 1);
			draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x, y-50, 2, 2, 25 * spr_dir, booster_color, 1);
		}
		if (window == 3){
			draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x, y-40, 2, 2, 5 * spr_dir, c_white, 1);
			draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x, y-40, 2, 2, 5 * spr_dir, booster_color, 1); 
		}
	}
	if (attack == AT_DAIR){
		if (window == 1){
			draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x, y-30, 2, 2, 0, c_white, 1);
			draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x, y-30, 2, 2, 0, booster_color, 1);
		}
		if (window == 2){
			draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x+4 * spr_dir, y-25, 2, 2, 0, c_white, 1);
			draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x+4 * spr_dir, y-25, 2, 2, 0, booster_color, 1);
		}
		if (window == 3){
			draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x+3 * spr_dir, y-25, 2, 2, 0, c_white, 1); 
			draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x+3 * spr_dir, y-25, 2, 2, 0, booster_color, 1);
		}
	}
	if (attack == AT_USTRONG){
		if (strong_charge < 1 && window == 1 && window_timer < 1){ var pixel_timer = 1;} 
		if ( (state_timer mod 4) == 0){
			pixel_timer += strong_charge / 40;
		}
		if (window == 1 && window_timer > 3){
			draw_sprite_ext(sprite_get("booster_startup_light"), state_timer / 3, x-13 * spr_dir, y-35, 2 + pixel_timer, 2 + pixel_timer, -270, c_white, 0.9);
			draw_sprite_ext(sprite_get("booster_startup"), state_timer / 3, x-13 * spr_dir, y-35, 2 + pixel_timer, 2 + pixel_timer, -270, booster_color, 0.9);
		}
		if (window == 2){
			draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.5, x-1 * spr_dir, y-40, 2, 2, 310 * spr_dir, c_white, 1);
			draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.5, x-1 * spr_dir, y-40, 2, 2, 310 * spr_dir, booster_color, 1);
		}
	}
	if (attack == AT_FSTRONG){
		if (strong_charge < 1 && window == 1 && window_timer < 1){ var pixel_timer = 1;} 
		if ( (state_timer mod 4) == 0){
			pixel_timer += strong_charge / 40;
		}
		if (window == 1 && window_timer > 10){
			draw_sprite_ext(sprite_get("booster_startup_light"), state_timer / 3, x-14 * spr_dir, y-38, 2 + pixel_timer, 2 + pixel_timer, -270, c_white, 0.9);
			draw_sprite_ext(sprite_get("booster_startup"), state_timer / 3, x-14 * spr_dir, y-38, 2 + pixel_timer, 2 + pixel_timer, -270, booster_color, 0.9);
		}
		if (window == 2 && window_timer < 3){
			draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.8, x-5 * spr_dir, y-40, 2, 1, -270, c_white, 1);
			draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.8, x-5 * spr_dir, y-40, 2, 1, -270, booster_color, 1);
		}
		if (move_cooldown[AT_FSTRONG] < 1 && window == 4 && window_timer < 20){
			draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.2, x-4 * spr_dir, y-45, 2 - (window_timer / 10), 2 + (window_timer / 29), 265 * spr_dir, c_white, 1 - (window_timer / 23 ));
			draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.2, x-4 * spr_dir, y-45, 2 - (window_timer / 10), 2 + (window_timer / 29), 265 * spr_dir, booster_color, 1 - (window_timer / 23 ));
		}
	}
	if (attack == AT_DATTACK){
		if (state == PS_ATTACK_AIR){
			if (window == 5){
			draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.4, x+2 * spr_dir, y-24, 2, 2, -hsp * 9, c_white, 1);
			draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.4, x+2 * spr_dir, y-24, 2, 2, -hsp * 9, booster_color, 1);
			}
			if (window == 6){
			draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.4, x-4 * spr_dir, y-28, 2, 2, abs(hsp), c_white, 1);
			draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.4, x-4 * spr_dir, y-28, 2, 2, abs(hsp), booster_color, 1);
			}
			if (window == 7){
			draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.4, x+1 * spr_dir, y-31, 2, 2, abs(hsp), c_white, 1);
			draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.4, x+1 * spr_dir, y-31, 2, 2, abs(hsp), booster_color, 1);
			}
			if (window == 8){
			draw_sprite_ext(sprite_get("boosters_light"), get_gameplay_time()*.4, x+1 * spr_dir, y-39, 2, 2, -hsp * 7, c_white, 1);
			draw_sprite_ext(sprite_get("boosters"), get_gameplay_time()*.4, x+1 * spr_dir, y-39, 2, 2, -hsp * 7, booster_color, 1);
			}
		}
	}
}

if(attack == AT_TAUNT && state == PS_ATTACK_GROUND){
	if (window >= 2 && window <= 5){
	draw_sprite_ext(sprite_get("taunt_aura"), get_gameplay_time()*.5, x - 120, y - 180, 2, 2, 0, c_white, 1);
	}
}

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
	}
}

if(attack == AT_TAUNT_2 && state == PS_ATTACK_AIR){
	if(window == 2){
		draw_sprite_ext(sprite_get("electric_effect"), get_gameplay_time()*.5, x - 70, y - 90, 2, 2, 0, c_white, 1);
	}
}

if(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
//MOTION BLUR CODE
	if (attack == AT_EXTRA_1 || attack == AT_UTILT && window == 2 && flyforward == true ||timestop == true){
	for(var m = 0; m < array_length_1d(blur); m++) {
		var _img = blur[m];
		var _percent = 1 - (m / array_length_1d(blur));
		draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4], _img[5], _img[6], _img[7], _img[8] * _percent);
		}
	}
if (attack == AT_FSPECIAL_2 && !(window == 1 || window == 3)){
	for(var m = 0; m < array_length_1d(blur); m++) {
		var _img = blur[m];
		var _percent = 1 - (m / array_length_1d(blur));
		draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4], _img[5], _img[6], c_blue * _percent, _img[8] * _percent);
	}
}

}
if (timestop == true){
	for(var m = 0; m < array_length_1d(blur); m++) {
		var _img = blur[m];
		var _percent = 1 - (m / array_length_1d(blur));
		draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4], _img[5], _img[6], c_gray, _img[8] * _percent);
	}
}

if (SuperMecha == true){
//set_character_color_slot(0, 255, 205, 90, 1);
}
/*
if (TauntSuper > 0){
set_character_color_slot(0, 255, 190, 70, 1);
}

if (TauntSuper == 1){
	sound_play(sound_get("power_down"))
	if (get_player_color(player) == 0) {  set_character_color_slot(0, 61, 26, 159, 1); }
	if (get_player_color(player) == 1) {  set_character_color_slot(0, 0, 140, 255, 1); }
	if (get_player_color(player) == 2) {  set_character_color_slot(0, 255, 46, 46, 1); }
	if (get_player_color(player) == 3) {  set_character_color_slot(0, 255, 155, 69, 1); }
	if (get_player_color(player) == 4) {  set_character_color_slot(0, 99, 194, 89, 1); }
	if (get_player_color(player) == 5) {  set_character_color_slot(0, 128, 128, 128, 1); }
	if (get_player_color(player) == 6) {  set_character_color_slot(0, 83, 0, 138, 1); }
	if (get_player_color(player) == 7) {  set_character_color_slot(0, 82, 82, 82, 1); }
	if (get_player_color(player) == 8) {  set_character_color_slot(0, 134, 173, 66, 1); }
}

if (TauntSuper == 2){
white_flash_timer = 15;
}
*/

shader_end();
