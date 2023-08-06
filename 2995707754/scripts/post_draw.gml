//post_draw

//draw_debug_text( x, y + 32, "strong_charge :" + string(strong_charge) );
//draw_debug_text( x, y + 48, "window_timer :" + string(window_timer) );
//draw_debug_text( x, y + 48, "flight_disabled_timer :" + string(flight_disabled_timer) );
//draw_sprite_part_ext(sprite_get("idle"), 1, 49, 48, 1, 1, frost_missile_target_x-16, frost_missile_target_y-16, 32, 32, c_white, 1);
shader_start();
if (free || flight_mode) && state != PS_RESPAWN {
	draw_sprite( sprite_get("hud_flightmeter_small"), 1, x, y-80);
	draw_sprite_part_ext(sprite_get("hud_flightmeter_bar_small"), 1, 7*2, 6*2, flight_meter*2+4, 16, x-32, y-100, 1, 1, c_white, 1);
	draw_sprite_part_ext(sprite_get("hud_flightmeter_bar_small"), 1, 7*2, 6*2, 2, 16, (x-32)+(flight_meter*2+4), y-100, 1, 1, c_white, 1);
	draw_sprite( sprite_get("hud_flightmeter_small"), 0, x, y-80);
}

if state == PS_PARRY { draw_sprite_ext( sprite_get("parry_ice"), -1, x, y, 1*spr_dir, 1, 0, c_white, 1 ); }
if state == PS_ROLL_BACKWARD || state == PS_TECH_BACKWARD { draw_sprite_ext( sprite_get("roll_backward"), -1, x, y, 2*spr_dir, 2, 0, c_white, 1 );  }
if state == PS_ROLL_FORWARD || state == PS_TECH_FORWARD { draw_sprite_ext( sprite_get("roll_forward"), -1, x, y, 2*spr_dir, 2, 0, c_white, 1 );  }
if state == PS_AIR_DODGE { 
	switch(air_dodge_dir) {
		case 1:
			draw_sprite_ext( sprite_get("airdodge_up"), -1, x, y, 2*spr_dir, 2, 0, c_white, 1 ); 
		break;
		case 2:
			draw_sprite_ext( sprite_get("airdodge_upforward"), -1, x, y, 2, 2, 0, c_white, 1 ); 
		break;
		case 3:
			draw_sprite_ext( sprite_get("airdodge_forward"), -1, x, y, 2, 2, 0, c_white, 1 ); 
		break;
		case 4:
			draw_sprite_ext( sprite_get("airdodge_downforward"), -1, x, y, 2, 2, 0, c_white, 1 ); 
		break;
		case 5:
			draw_sprite_ext( sprite_get("airdodge_down"), -1, x, y, 2*spr_dir, 2, 0, c_white, 1 ); 
		break;
		case 6:
			draw_sprite_ext( sprite_get("airdodge_downback"), -1, x, y, 2, 2, 0, c_white, 1 ); 
		break;
		case 7:
			draw_sprite_ext( sprite_get("airdodge_back"), -1, x, y, 2, 2, 0, c_white, 1 ); 
		break;
		case 8:
			draw_sprite_ext( sprite_get("airdodge_upback"), -1, x, y, 2, 2, 0, c_white, 1 ); 
		break;
		case 9:
			draw_sprite_ext( sprite_get("airdodge"), -1, x, y, 2*spr_dir, 2, 0, c_white, 1 ); 
		break;
	}
}
if state == PS_TECH_GROUND { draw_sprite_ext( sprite_get("tech"), -1, x, y, 2*spr_dir, 2, 0, c_white, 1 );  }

if get_player_color(player) >= 26{
	if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && ((window == 1 && window_timer == get_window_value( attack, 1, AG_WINDOW_LENGTH )-1) || (window == 2 && window_timer == 0)){
		if (strong_charge >= 0 && strong_charge <= 15) || (strong_charge >= 20 && strong_charge <= 35) || (strong_charge >= 40 && strong_charge <= 55) || (strong_charge == 60){
			if attack == AT_FSTRONG {
				draw_sprite_ext( sprite_get("fstrong"), -1, x, y, 2*spr_dir, 2, 0, c_gray, 1 ); 
			}
			if attack == AT_USTRONG {
				draw_sprite_ext( sprite_get("ustrong"), -1, x, y, 2*spr_dir, 2, 0, c_gray, 1 ); 
			}
			if attack == AT_DSTRONG {
				draw_sprite_ext( sprite_get("dstrong"), -1, x, y, 2*spr_dir, 2, 0, c_gray, 1 ); 
			}
		}
	}
}

shader_end();