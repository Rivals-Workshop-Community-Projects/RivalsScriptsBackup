
switch (state){
    case PS_IDLE:
    case PS_RESPAWN:
    case PS_SPAWN:
		 if (state_timer mod 600 > 500 ) {
		 	sprite_index = sprite_get("idle2");
		 	image_index = (state_timer - 1100) / 100 * image_number;
		 }
		 else {
		 	image_index = floor(image_number*state_timer/(image_number*6.5));
			if (state_timer == 1) { epinel_other_is_epinel = true; }
			
		 	//if (state_timer < 4 && (prev_state == PS_CROUCH)) {
			//	var crouchspr = sprite_get("crouch");
			//	if (sprite_index != crouchspr) {
			//		sprite_index = crouchspr;
			//		image_index = 22;
		 	//	}
		 	//}
		}
    break;
    
	case PS_CROUCH:
		if (state_timer < 28 && (prev_state == PS_IDLE || prev_state == PS_WALK || prev_state == PS_DASH) ) {
			image_index = floor(state_timer / 4);
			if (state_timer == 4 && !hitpause) sound_play(asset_get("sfx_land_light"));
		}
	break;
	
    case PS_WALK:
		image_index = floor(state_timer * 0.25);
		if (!hitpause) {
			switch (state_timer mod 64) {
				case 10:
					sound_play(asset_get("sfx_land"));
				break;
				
				case 42:
					sound_play(asset_get("sfx_land_med"));
				break;
			}
		}
		
    break;
	
	case PS_DASH:
		if (state_timer < 16) {
			sprite_index = sprite_get("dashstart2");
			image_index = floor(state_timer / 4);
			
			if (state_timer == 1 && !hitpause) sound_play(asset_get("sfx_land_light"));
		}
	break;
	
	case PS_DASH_START:
		if (state_timer == 0) sound_play(asset_get("sfx_land_light"));
	break;
	
	case PS_IDLE_AIR:
		//sprite_index = sprite_get( "hover" );
		if (move_cooldown[AT_USPECIAL] > 0) {
			sprite_index = sprite_get("pratfall");
			break;
		}
		if (epinel_lightweight_time > 0 && vsp > 2 && !down_down) {sprite_index = sprite_get( "hover" ); image_index = 0; }
		else {sprite_index = sprite_get( "jump" ); }
		debug_var = sprite_index;
		
		if (vsp <= 1) {image_index = 3;} 
		else {image_index = floor(clamp(vsp + 3, 4, 7));}
		break;
	case PS_FIRST_JUMP:
	
		
		if (state_timer <= 4) {
			if (state_timer <= 2) {
			image_index = 1;
			break;
			}
			image_index = 0;
			break;
		}
		
		//sprite_index = sprite_get( "hover" );
		if (epinel_lightweight_time > 0 && vsp > 2 && !down_down) {sprite_index = sprite_get( "hover" ); image_index = 0; }
		else {sprite_index = sprite_get( "jump" ); }
		
		image_index = floor(clamp(vsp * 0.5 + 4, 1, 7));
	break;
	
	case PS_LANDING_LAG:
		switch (attack) {
			case AT_FAIR:
				if (epinel_charge_timer > 4) image_index = floor(image_index / 3)  + 3;
			break;
			
			case AT_UTILT:
			sprite_index = sprite_get("landinglag2");
			break;
			default:
			image_index = floor(image_index / 3)  + 3
			break;
		}
	break;
	
	case PS_ATTACK_GROUND:
	case PS_ATTACK_AIR:
		switch (attack) {
			case AT_DSPECIAL_AIR:
				if (hitpause) {
					var hitpause_frame = get_hitbox_value(AT_DSPECIAL_AIR, window, AG_WINDOW_HITPAUSE_FRAME);
					if (hitpause_frame != 0) image_index = hitpause_frame;
				}
			break;
			case AT_BAIR:
				if (window == 1) image_index = clamp(window_timer, 0, 3);
				else if (window == 3) {
					if (hitpause && hitstop >= hitstop_full - 3) image_index = 4;
				}
			break;
		}
		
	break;
}