//animation
switch (state){
    case PS_SPAWN:
	    if in_intro sprite_index = asset_get("empty_sprite");
	case PS_DASH_START:
		if state_timer < 7 break;
    case PS_DASH:
    case PS_DASH_TURN:
    	if hurtboxID.sprite_index != hurtbox_dash_spr hurtboxID.sprite_index = hurtbox_dash_spr;
        break;
    case PS_ATTACK_AIR:
    	if attack == AT_FSPECIAL {
    		//print_debug("ATTACK");
    		sprite_index = sprite_get("fspecial_air");
    		with obj_article2 {
				if player_id == other.id {
					with other {
		    			sprite_index = sprite_get("fspecial_air_r");
		    			break;
		    		}
    			}
    		}
    		
    	}
    	break;
    case PS_ATTACK_GROUND:
    	if attack == AT_DSTRONG && window == 1 {
    		if abs(hsp) < 3*dstrong_speed/3 image_index = 2;
    		if abs(hsp) < 2*dstrong_speed/3 image_index = 1;
    		if abs(hsp) < 1*dstrong_speed/3 image_index = 0;
    		
    	}
    	if attack == AT_FSPECIAL {
    		sprite_index = sprite_get("fspecial");
    		with obj_article2 {
				if player_id == other.id {
					with other {
						sprite_index = sprite_get("fspecial_r");
		    			break;
		    		}
    			}
    		}
    		
    	}
    	break;
    default: 
        if hurtboxID.sprite_index == hurtbox_dash_spr hurtboxID.sprite_index = hurtb_spr;
        break;
}
/*
if get_player_color(player) == 3 && state != 5 && state != 6 {
	if random_func_2(1,2,true) == 1 && glitch_switch == glitch_switch_frame {
		set_index = random_func_2(0,20,true);
	} else if glitch_switch != glitch_switch_frame set_index = image_index;
	if glitch_switch >= glitch_switch_frame-6 image_index = set_index;
}
*/

