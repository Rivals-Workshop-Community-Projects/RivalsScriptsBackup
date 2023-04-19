
if (attack == AT_USTRONG && hbox_num == 1){
//    can_hit_self = true;
		vsp += 0.1;
		if (!free){
			player_id.meteor_y_pos = y;
			sound_play(asset_get("sfx_abyss_explosion"));
			sound_stop(sound_get("meteordrop"));
		    destroyed = true;
		    player_id.meteor_blew_up = 1;
		}
		player_id.move_cooldown[AT_USTRONG] = 2;
		player_id.move_cooldown[AT_USTRONG_2] = 2;
		player_id.move_cooldown[AT_NSPECIAL] = 2;
		
		if (x > room_width or y > room_height + 200){
			destroyed = true;
		}
}

if (attack == AT_USTRONG_2 && hbox_num == 2){
//    can_hit_self = true;
		vsp += 0.1;
		player_id.move_cooldown[AT_USTRONG] = 2;
		player_id.move_cooldown[AT_USTRONG_2] = 2;
		player_id.move_cooldown[AT_NSPECIAL] = 2;
}

if (attack == AT_NSPECIAL){
		player_id.move_cooldown[AT_USTRONG] = 2;
		player_id.move_cooldown[AT_USTRONG_2] = 2;
		player_id.move_cooldown[AT_NSPECIAL] = 2;
	if (hbox_num == 4){
		with (oPlayer) 
		if (id != other.player_id) {
		    if (place_meeting(x, y, other)) {
		    	if (x > other.x){
		    		x -= 2.5;
		    	}
		    	if (x < other.x){
		    		x += 2.5;
		    	}
		    	if (y > other.y+25){
		    		y -= 8;
		    	}
		    	if (y < other.y+25){
		    		y += 1;
		    	}
		    }
		}
	}
	if (hbox_num == 5){
		with (oPlayer) 
		if (id != other.player_id) {
		    if (place_meeting(x, y, other)) {
		    	if (x > other.x){
		    		x -= 3.5;
		    	}
		    	if (x < other.x){
		    		x += 3.5;
		    	}
		    	if (y > other.y+25){
		    		y -= 10;
		    	}
		    	if (y < other.y+25){
		    		y += 2;
		    	}
		    }
		}
	}
}

if (attack == AT_DSPECIAL){
	if (hbox_num == 1 && player_id.sword.state == 3){
		with (oPlayer) 
		if (id != other.player_id) {
		    if (place_meeting(x, y, other)) {
		    	if (x > other.x){
		    		x -= 2.5;
		    	}
		    	if (x < other.x){
		    		x += 2.5;
		    	}
		    	if (y > other.y+25){
		    		y -= 8;
		    	}
		    	if (y < other.y+25){
		    		y += 1;
		    	}
		    }
		}
	}
	/*if (hbox_num == 1 && player_id.sword.state == 1){
		with (oPlayer) 
		    if (place_meeting(x, y, other) && player_id.sword.effect_cooldown == 0) {
		    	orig_knock *= 1.5;
		    	dspecial_field = true;
		    }
	} */
}