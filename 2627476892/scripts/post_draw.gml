// MunoPhone Touch code - don't touch
// should be at TOP of file
/*
muno_event_type = 4;
user_event(14);
*/

if(slippery > 0){
	if(slippery < 21){
		if(slippery >= 19){
		//I can not get get_gameplay_time() to work!!!!!!!!!! auugghghghhh
        draw_sprite(sprite_get("we_do_a_little_trolling_2"), 0, x, y - 34);
		}
	}	if(slippery < 19){
		if(slippery >= 17){
        draw_sprite(sprite_get("we_do_a_little_trolling_2"), 1, x, y - 34);
		}
	}	if(slippery < 17){
		if(slippery >= 15){
        draw_sprite(sprite_get("we_do_a_little_trolling_2"), 2, x, y - 34);
		}
	}	if(slippery < 15){
		if(slippery >= 13){
        draw_sprite(sprite_get("we_do_a_little_trolling_2"), 3, x, y - 34);
		}
	}	if(slippery < 13){
		if(slippery >= 11){
        draw_sprite(sprite_get("we_do_a_little_trolling_2"), 4, x, y - 34);
		}
	}	if(slippery < 11){
		if(slippery >= 9){
        draw_sprite(sprite_get("we_do_a_little_trolling_2"), 5, x, y - 34);
		}
	}	if(slippery < 9){
		if(slippery >= 7){
        draw_sprite(sprite_get("we_do_a_little_trolling_2"), 6, x, y - 34);
		}
	}	if(slippery < 7){
		if(slippery >= 5){
        draw_sprite(sprite_get("we_do_a_little_trolling_2"), 7, x, y - 34);
		}
	}	if(slippery < 5){
		if(slippery >= 3){
        draw_sprite(sprite_get("we_do_a_little_trolling_2"), 8, x, y - 34);
		}
	}	if(slippery < 3){
		if(slippery >= 1){
        draw_sprite(sprite_get("we_do_a_little_trolling_2"), 9, x, y - 34);
		}
	}
}

if(attack == AT_NSPECIAL){
	if(window == 4){
		if(window_timer > 2){
			if(nspecial_grab_failed == 1){
		draw_sprite(sprite_get("grab_sfx"), 0, x + spr_dir * 60, y - 10);
		draw_sprite(sprite_get("grab_arrows"), 0, x + spr_dir * 60, y);
			}
		}
	}	if(window == 5){
		draw_sprite(sprite_get("grab_sfx"), 0, x + spr_dir * 60, y - 10);
		draw_sprite(sprite_get("grab_arrows"), 0, x + spr_dir * 60, y);
	} if(window == 6 || window == 7 || window == 8 || window == 9){
		if(nspecial_projectile_var == 0){
		draw_sprite(sprite_get("grab_sfx"), 0, x + spr_dir * 60, y - 10);
		}
	}
}