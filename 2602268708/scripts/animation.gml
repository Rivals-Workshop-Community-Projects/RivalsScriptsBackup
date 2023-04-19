//print(get_state_name(state))
switch (state){

    case PS_WALK:
		if (state_timer == 40){
		state_timer = 0;
		}
	break;
	
	case PS_DASH:
		if (state_timer == 40){
		state_timer = 0;
		}
	break;

    case PS_WALL_JUMP:
        if state_timer == 0 {
            sprite_index = sprite_get("wallcling");
            sound_play(sound_get("ssbu_sephimpale"));
			wallanim = 0;
        } else if clinging {
            sprite_index = sprite_get("wallcling");
            image_index = state_timer / 6;
        } else {
		    if wallanim = 0 {
			sound_play(asset_get("sfx_jumpground"));
			}
            wallanim++;
            sprite_index = sprite_get("walljump");
            image_index = wallanim * image_number / walljump_time;
        }
    break;
	
	
	
	case PS_SPAWN:
	
	if alt != 6 {
	    if (introTimer < 15 && introTimer >= 0) {
            sprite_index = sprite_get("intro");
            image_index = introTimer;
        } else if (introTimer < 0) {
            sprite_index = sprite_get("intro");
            image_index = 0;
        } else {
            sprite_index = sprite_get("idle");
        }
	}
	break;
	
	case PS_RESPAWN:
	    sprite_index = sprite_get("plat_hoot");
        image_index = floor(image_number*state_timer/(image_number*4));
	break;
	
	case PS_ATTACK_AIR:
	case PS_ATTACK_GROUND:
	    switch (attack) {
			case AT_FSPECIAL:
			if nspecial_grabbed_player != noone {
			    hurtboxID.sprite_index = sprite_get("fspecial_hold_hurt");
				sprite_index = sprite_get("fspecial_hold");
	    	} else {
			    if bomb_numbering >= 3.5 {
        	    sprite_index = sprite_get("fspecial_bully");
        	    }
			}
			break;
			
			case AT_USPECIAL:
			sprite_index = spr_dir <= -1 ? sprite_get("uspecial_left") : sprite_get("uspecial")
		    break;
			
			case AT_NSPECIAL:
			    if nspecial_grabbed_player != noone {
				sprite_index = sprite_get("nspecial_hit");
				hurtboxID.sprite_index = sprite_get("nspecial_hit_hurt");
				}
			break;
			
			case AT_EXTRA_2:
			    if spr_dir = -1 {
				    sprite_index = sprite_get("taunt_chuckster_r");
				}
			break;
			
			case AT_DATTACK:
			    if window = 2 && dashcount = 0 && window_timer < 2 {
				    image_index = 2;
				}
			break;
			
			case AT_FSTRONG:
			    if has_rune("N") {
				sprite_index = sprite_get("fstrong_rune");
				}
			break;
			
			case AT_TAUNT:
			    if respawn_taunt {
				    switch (alt) {
					    case 8:
					    case 27:
				        case 28:
						case 29:
				    	sprite_index = sprite_get("plat_taunt_8bit");
					    break;
						case 26:
						sprite_index = sprite_get("plat_taunt_sans");
						break;
				    }
				}
		}
	break;
}

//GRABBED ANIMS
if nspecial_grabbed_player != noone {
    switch (state){
        case PS_IDLE:
            sprite_index = sprite_get("grab_idle");
			wait_time = 0;
	        if (state_timer == 45){
	        	state_timer = 0;
	    	}
        break;
	    case PS_CROUCH:
            sprite_index = sprite_get("grab_crouch");
	    	if (state_timer == 80){
				state_timer = 4;
	    	}
        break;
    
        case PS_JUMPSQUAT:
            sprite_index = sprite_get("grab_jumpstart");
        break;
        case PS_LAND:
            sprite_index = sprite_get("grab_land");
        break;
        
        case PS_FIRST_JUMP:
        case PS_DOUBLE_JUMP:
        case PS_IDLE_AIR:
            sprite_index = sprite_get("grab_jump");
        break;
        case PS_DASH_TURN:
        case PS_WALK_TURN:
            sprite_index = sprite_get("grab_turn");
        break;
        case PS_WALK:
        case PS_DASH:
            sprite_index = sprite_get("grab_dash");
        break;
        case PS_DASH_START:
            sprite_index = sprite_get("grab_dashstart");
        break;
        case PS_DASH_STOP:
            sprite_index = sprite_get("grab_dashstop");
        break;
    }

}