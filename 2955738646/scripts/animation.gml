switch (state){
    case PS_IDLE:
    case PS_IDLE_AIR:
    case PS_LAND:
    case PS_LANDING_LAG:
    case PS_FIRST_JUMP:
    	hurtboxID.sprite_index = sprite_get("mecha_hurt");
    break;
    case PS_IDLE:
    	hurtboxID.sprite_index = sprite_get("mecha_hurt");
    case PS_RESPAWN:
    case PS_SPAWN:
        image_index = floor(image_number*state_timer/(image_number*15.5));
    break;
    
    case PS_WALK:
        image_index = floor(image_number*state_timer/(image_number*9));
    break;
    case PS_DASH_START:
    	hurtboxID.sprite_index = sprite_get("mecha_dashstart");
    break;
    case PS_DASH:
    if (spr_dir == 1 && hsp < 0){ sprite_index = sprite_get("mecha_crouch"); }
	if (spr_dir == -1 && hsp > 0){ sprite_index = sprite_get("mecha_crouch"); }
    	hurtboxID.sprite_index = sprite_get("mecha_dash");
    break;
    case PS_DASH_STOP:
    	hurtboxID.sprite_index = sprite_get("mecha_hurt");
    	if (state_timer == 1){ sound_play(sound_get("dashstop")); }
    break;
    case PS_DOUBLE_JUMP:
    	hurtboxID.sprite_index = sprite_get("mecha_jump");
    break;
    case PS_PRATLAND:
    	sprite_index = sprite_get("landinglag");
    	//image_index = floor(image_number*state_timer/(image_number*5));
    break;
    case PS_TECH_BACKWARD:
    	sprite_index = sprite_get("roll_backward");
    break;
    case PS_TECH_FORWARD:
    	sprite_index = sprite_get("roll_forward");
    break;
    case PS_ROLL_FORWARD:
    case PS_ROLL_BACKWARD:
	    sprite_index = sprite_get("idle");
	break;
    case PS_ATTACK_AIR: //Just air
    if (attack == AT_NSPECIAL && window == 10 ||
    attack == AT_USPECIAL && window == 7 ||
    attack == AT_FSPECIAL && window == 4 ||
    attack == AT_DSPECIAL && window == 7){
    	hurtboxID.sprite_index = sprite_get("mecha_dash");
    }

    if (attack == AT_NSPECIAL){
    	if ((window == 1 || window == 2 || window == 3 || window == 4) && state == PS_ATTACK_AIR){
    		hurtboxID.sprite_index = sprite_get( "nspecial_air_hurt" );
    	}
	if (window == 6){
		sprite_index = sprite_get( "nspecial_2" );
		image_index = floor(image_number*state_timer/(image_number*3));
		if (image_index >= 8){
			image_index = 0;
			}
		}
	if (window == 7){
		if (window_timer <= 1){ image_index = 9; }
		if (window_timer >= 2){ image_index = 10; }
		sprite_index = sprite_get( "nspecial_2" );
	}
	if (window == 8){
		if (window_timer <= 1){ image_index = 11; }
		sprite_index = sprite_get( "nspecial_2" );
		hurtboxID.sprite_index = sprite_get( "nspecial_2_hurt" );
		}
    }
    break;
    case PS_ATTACK_GROUND: //Just ground
    if (attack == AT_DSPECIAL && window == 4){
	sprite_index = sprite_get( "dspecial" );
	}
	
	if (attack == AT_EXTRA_3){
	hurtboxID.sprite_index = sprite_get("mecha_crouch");
	}
	
	if (attack == AT_NSPECIAL){
	hurtboxID.sprite_index = sprite_get( "nspecial_hurt" );
    }

    break;
}

//Intro stuff
if (state == PS_SPAWN){
    if (introTimer <= 21 && introTimer >= 0) {
        sprite_index = asset_get("empty_sprite");
		//image_index = introTimer;
    }
    else if (introTimer < 0) {
        sprite_index = asset_get("empty_sprite");
        //image_index = introTimer;
    } else {
        sprite_index = sprite_get("idle");
    }
}

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	if (attack == AT_DATTACK && window == 8){
		sprite_index = sprite_get( "doublejump" );
	}
	if (attack == AT_NSPECIAL && window == 10){
	sprite_index = sprite_get( "nspecial_followup" );
	image_index = floor(image_number*state_timer/(image_number*5));
	}
    
    if (attack == AT_USPECIAL_2){
	if (window == 6){
	sprite_index = sprite_get( "uspecial_ground" );
	hurtboxID.sprite_index = sprite_get( "uspecial_ground_hurt" );
		}
    }
    
    if (attack == AT_USPECIAL && window == 7 && window_timer <= 17){
		sprite_index = asset_get( "empty_sprite" );
	}
    
    if (attack == AT_DSPECIAL && window == 6){
	sprite_index = sprite_get( "dspecial_wall" );
	hurtboxID.sprite_index = sprite_get( "dspecial_wall_hurt" );
	}
	
	if (attack == AT_DSPECIAL_2){
		if (window == 4){
		if ((state_timer mod 4) == 0){ image_index++; }
		if (image_index >= 11){ image_index = 7; }
		}
		if (window == 3){
		sprite_index = sprite_get( "dspecial_ground" );
		}
		if (window == 8){
		sprite_index = asset_get( "empty_sprite" );
		}
		if (window == 9){
		sprite_index = sprite_get( "crouch" );
		}
	}
	
	if (attack == AT_EXTRA_1){
	if (window == 1){ sprite_index = asset_get("empty_sprite"); }
	//hurtboxID.sprite_index = sprite_get("mecha_hurt");
	//if (window == 1){ hurtboxID.sprite_index = asset_get("empty_sprite"); }
	//if (window == 2){ hurtboxID.sprite_index = sprite_get("mecha_hurt"); }
	}
}

if (move_cooldown[AT_EXTRA_1] > 5 && move_cooldown[AT_EXTRA_1] < 200){
	//hurtboxID.sprite_index = sprite_get("mecha_hurt");
}


if (attack == AT_DSPECIAL){ //Regardless
	if (window == 3){
	sprite_index = sprite_get( "dspecial" );
	}
}

if (state == PS_AIR_DODGE || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD){
	if (state_timer < 10){
	hurtboxID.sprite_index = asset_get("empty_sprite");
	}
}

if (state == PS_RESPAWN){
	if (state_timer < 122){
	sprite_index = asset_get( "empty_sprite" );
	}
	if (state_timer > 121){
	sprite_index = sprite_get( "taunt" );
	image_index = 9;
	}
}

if (prev_state == PS_ATTACK_AIR && state == PS_LANDING_LAG && was_parried == false && prev_attack == 0){
	sprite_index = sprite_get( "land2" );
	//image_index = floor(image_number*state_timer/(image_number*9));
	image_index = state_timer / 2;
}
if (state == PS_LANDING_LAG && was_parried == false){
	if (prev_attack == 1){
	sprite_index = sprite_get( "uair_land" );
	image_index = state_timer / 1.5;
	}
	if (prev_attack == 2){
	sprite_index = sprite_get( "fair_land" );
	image_index = state_timer / 1.6;
	}
	if (prev_attack == 3){
	sprite_index = sprite_get( "dair_land" );
	image_index = state_timer / 1.6;
	}
	if (prev_attack == 4){
	sprite_index = sprite_get( "bair_land" );
	image_index = state_timer / 1.2;
	}
}

/*
if (state == PS_CROUCH){
    	if (left_down){
        sprite_index = sprite_get( "crawl" );
    	    hsp = -5; 
    	    spr_dir = -1;
		image_index = floor(image_number*state_timer/(image_number*5));
    	    
    	}
		if (right_down){
        sprite_index = sprite_get( "crawl" );
		    hsp = 5;
		    spr_dir = 1;
		image_index = floor(image_number*state_timer/(image_number*5));
	}
}