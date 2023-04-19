switch (state){
    case PS_IDLE:
    case PS_RESPAWN:
        
    case PS_SPAWN:
        image_index = floor(image_number*state_timer/(image_number*6.5));
    break;
    
    case PS_WALK:
        image_index = floor(image_number*state_timer/(image_number*5));
    break;
    case PS_CROUCH:
        if(state_timer = crouch_startup_frames && !hitpause){
            sound_play(sound_get("se_inkling_inkchargestart"));
        }
        if (InkTank <= MaxInkTank - 1 && state_timer % 15 == 0 && state_timer > crouch_startup_frames + 3){
        	spawn_hit_fx(x + 15 * spr_dir, y - 10, uspecial_proj);
			InkTank = InkTank + 5
            sound_play(sound_get("se_inkling_step_run"));
	    }
    
    break;
    case PS_ROLL_BACKWARD:
        if(state_timer = 1 && !hitpause){
            sound_play(sound_get("se_inkling_step_run"));
        }
    break;
    case PS_ROLL_FORWARD:
        if(state_timer = 1 && !hitpause){
            sound_play(sound_get("se_inkling_step_run"));
        }
    break;
    case PS_BURIED:
    		sprite_index = sprite_get( "groundstate" );
    		if(state_timer = 1){
    			if(!hitpause){
					sound_play(sound_get("Surprised00"))
    				
    			}
    		}
    			
    		if(state_timer < 25){
    		image_index = floor(image_number*state_timer/(image_number*5));
    		}
    		
    break;
    case PS_FROZEN:
    		sprite_index = sprite_get( "freezestate" );
    		image_index = floor(image_number*state_timer/(image_number*25));
    		
    break;
    case PS_CRYSTALIZED:	
			sprite_index = sprite_get( "crystlestate" );
			small_sprites = 1;
    break;
    case PS_HITSTUN:
    	if(plasma_pause == true){
    		sprite_index = sprite_get( "stunstate" );
    		image_index = floor(image_number*get_game_timer()/(image_number*1));
		}
    	if(burned == true && sprite_index == sprite_get("hurt")){
    		sprite_index = sprite_get( "burnstate" );
    		image_index = floor(image_number*state_timer/(image_number*5));
		}
    	if(bubbled == true && sprite_index == sprite_get("hurt")){
    		sprite_index = sprite_get( "spinhurt" );
    		image_index = floor(image_number*get_game_timer()/(image_number*5));
		}
			small_sprites = 0;
    break;
    case PS_HITSTUN_LAND:
			small_sprites = 0;
    break;
}

if (state_cat == SC_HITSTUN || state == PS_TUMBLE)
{
	if (crystalized_damage_remaining > 0) {
		sprite_index = sprite_get( "crystlestate" );
		small_sprites = 1
	}
}