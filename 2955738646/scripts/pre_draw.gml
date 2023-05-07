shader_start();

//draw_debug_text( x-90, y-240, "window: " + string( window ));
//draw_debug_text( x-90, y-220, "window timer: " + string( window_timer ));
//draw_debug_text( x-90, y-200, "state: " + get_state_name( state ));
//draw_debug_text( x-90, y-180, "state timer: " + string( state_timer ));
//draw_debug_text( x-90, y-180, "hsp: " + string( hsp ));
//draw_debug_text( x-90, y-160, "vsp: " + string( vsp ));
//draw_debug_text( x-90, y-140, "state timer: " + string( state_timer ));
//draw_debug_text( x-90, y-140, "dspecial charge: " + string( dspecial_charge ));

//draw_sprite_ext(sprite_get("taunt_aura"), get_gameplay_time()*.3, x - 118, y - 138, 2, 1.5, 0, c_white, .4);
//draw_sprite_ext(sprite_get("taunt_aura"), get_gameplay_time()*.2, x - 118, y - 162, 2, 1.8, 0, c_white, .3);
//draw_sprite_ext(sprite_get("taunt_aura"), get_gameplay_time()*.1, x - 118, y - 198, 2, 2.2, 0, c_white, .2);

if((state == PS_ATTACK_AIR || state_cat == SC_AIR_NEUTRAL)){
	//Except all of these
	if !(attack == AT_DSPECIAL && window == 6 || attack == AT_DSPECIAL_2 || attack == AT_NSPECIAL && free == false
	|| attack == AT_NSPECIAL && window > 5 && air_special == true || attack == AT_EXTRA_1 || attack == AT_FSPECIAL && window <= 2 ||
	attack == AT_USPECIAL && window == 7 || attack == AT_DSPECIAL && window == 1 && window_timer < 30 || attack == AT_USPECIAL_2){
	if(vsp < 1){
	if(hsp >= 8){
	draw_sprite_ext(sprite_get("bosters"), get_gameplay_time()*.5, x + 40, y - 120, 2, 2, 270, c_white, 1);
		
	}else if(hsp <= -8){
	draw_sprite_ext(sprite_get("bosters"), get_gameplay_time()*.5, x - 40, y + 20, 2, 2, 90, c_white, 1);
		
	}else if(hsp > 4 && hsp < 8){
	draw_sprite_ext(sprite_get("bosters"), get_gameplay_time()*.5, x - 10, y - 130, 2, 2, 315, c_white, 1);
		
	}else if((hsp < -4 && hsp > -8)){
	draw_sprite_ext(sprite_get("bosters"), get_gameplay_time()*.5, x - 90, y - 40, 2, 2, 45, c_white, 1);
		
	}else{
	draw_sprite_ext(sprite_get("bosters"), get_gameplay_time()*.5, x - 70, y - 90, 2, 2, 0, c_white, 1);
			}
		}
	}
}

if (state == PS_ATTACK_AIR && attack == AT_NSPECIAL && (window == 6 || window == 7 || window == 10) && air_special == true){
	if (vsp < 0.1 || vsp > 0.1){
	if(hsp >= 0.1){
	draw_sprite_ext(sprite_get("bosters"), get_gameplay_time()*.5, x + 40, y - 120, 2, 2, 270, c_white, 1);
		
	}else if(hsp <= -1.0){
	draw_sprite_ext(sprite_get("bosters"), get_gameplay_time()*.5, x - 40, y + 20, 2, 2, 90, c_white, 1);
		
	}else if(hsp > 0.1 && hsp < 0.1){
	draw_sprite_ext(sprite_get("bosters"), get_gameplay_time()*.5, x - 10, y - 130, 2, 2, 315, c_white, 1);
		
	}else if((hsp < -10.0 && hsp > -0.1)){
	draw_sprite_ext(sprite_get("bosters"), get_gameplay_time()*.5, x - 90, y - 40, 2, 2, 45, c_white, 1);
		
	}else{
	draw_sprite_ext(sprite_get("bosters"), get_gameplay_time()*.5, x - 70, y - 90, 2, 2, 0, c_white, 1);
		}
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
	if ((attack == AT_JAB && (window == 5 && window_timer > 10 || window == 6) && has_hit_player)
	|| (attack == AT_EXTRA_1) || attack == AT_UTILT && window == 2 && flyforward == true || timestop == true){

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
