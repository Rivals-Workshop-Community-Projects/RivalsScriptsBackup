

// fix weird jittering that can happen when it tries to return to 0
if abs(hud_offset) < 1{
	hud_offset = 0;
}

if state ==  PS_SPAWN{
		
        image_index = floor(image_number*state_timer/(image_number*8));
		if(state_timer==52)&&(!hitpause){sound_play(asset_get("sfx_ell_strong_attack_explosion"));spawn_hit_fx( x , y-32, 143 );}		//112
		if(state_timer==84){spawn_hit_fx(x,y-28, 154 );}
		if(timer_intro<20)&&(timer_intro>=0){	
			if (get_player_color(player) == 17 || get_player_color(player) ==13 ||get_player_color(player) == 15){sprite_index = sprite_get("intro2");}
			else{sprite_index = sprite_get("intro3");}
			image_index = timer_intro;
		} else if (timer_intro < 0) {
			if (get_player_color(player) == 17 || get_player_color(player) ==13 ||get_player_color(player) == 15){sprite_index = sprite_get("intro2");}
			else{sprite_index = sprite_get("intro3");}
			image_index = 0;
			intro_done=1;
		} else {
			sprite_index = sprite_get("idle");
			image_index = floor(image_number*state_timer/(image_number*10));
		}
}