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
        //super_armor = true;
        image_index = floor(image_number*state_timer/(image_number*9));
    break;
    case PS_DASH_START:
    hurtboxID.sprite_index = sprite_get("mecha_dashstart");
    break;
    case PS_DASH:
    	hurtboxID.sprite_index = sprite_get("mecha_dash");
    break;
    case PS_DASH_STOP:
    	hurtboxID.sprite_index = sprite_get("mecha_hurt");
    break;
    case PS_DOUBLE_JUMP:
    	hurtboxID.sprite_index = sprite_get("mecha_jump");
    break;
    case PS_ATTACK_AIR:
    if (attack == AT_NSPECIAL && window == 10 ||
    attack == AT_USPECIAL && window == 7 ||
    attack == AT_FSPECIAL && window == 4 ||
    attack == AT_DSPECIAL && window == 7){
    	hurtboxID.sprite_index = sprite_get("mecha_dash");
    }
    break;
}

if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_USPECIAL_2){
	if (window == 6){
	sprite_index = sprite_get( "uspecial_ground" );
	hurtboxID.sprite_index = sprite_get( "uspecial_ground_hurt" );
	}
}

if (state == PS_ATTACK_AIR && attack == AT_JAB){
	//if (window == 5){
	//sprite_index = asset_get( "empty_sprite" );
	//hurtboxID.sprite_index = sprite_get( "uspecial_ground_hurt" );
	//}
}

if (state == PS_DASH_STOP) {
    if (state_timer == 1) {
        sound_play(sound_get("dashstop"));
    }
}

if (attack == AT_NSPECIAL && state == PS_ATTACK_AIR){
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
		//image_index = floor(image_number*state_timer/(image_number*1));
		//image_index = image_index + [2];
	}
	if (window == 8){
		if (window_timer <= 1){ image_index = 11; }
		sprite_index = sprite_get( "nspecial_2" );
	}
}

if (attack == AT_DSPECIAL){
	if (window == 3){
	sprite_index = sprite_get( "dspecial" );
	}
	if (state == PS_ATTACK_GROUND && window == 4){
	sprite_index = sprite_get( "dspecial" );
	}
	if (state == PS_ATTACK_GROUND){
		if (hitpause == false){
	//image_index = 6 + 0.1 * window_timer;
		}
	//sprite_index = sprite_get( "dspecial_ground" );
	}
	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && window == 6){
	//image_index = 7;
	sprite_index = sprite_get( "dspecial_wall" );
	hurtboxID.sprite_index = sprite_get( "dspecial_wall_hurt" );
	}
}
if (attack == AT_DSPECIAL_2 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && window == 4){
	if ((state_timer mod 4) == 0){ image_index++; }
	if (image_index >= 11){ image_index = 7; }
}

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	if (attack == AT_NSPECIAL && window == 10){
	sprite_index = sprite_get( "nspecial_followup" );
	image_index = floor(image_number*state_timer/(image_number*5));
	}
}

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	if (attack == AT_FSPECIAL){
		if (image_index == 4 || image_index == 5){
		//hurtboxID.sprite_index = asset_get("empty_sprite");
		//}
	}
	if (window == 4){
		//sprite_index = sprite_get( "fspecial_followup" );
		//image_index = floor(image_number*state_timer/(image_number*3));
		}
	}
}

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	if (attack == AT_USPECIAL && window == 7 && window_timer <= 17){
		sprite_index = asset_get( "empty_sprite" );
	}
}

if (state == PS_AIR_DODGE || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD){
	if (state_timer < 10){
	hurtboxID.sprite_index = asset_get("empty_sprite");
	}
}

if (state == PS_RESPAWN && state_timer < 122){
	sprite_index = asset_get( "empty_sprite" );
}
if (state == PS_RESPAWN && state_timer > 121){
	sprite_index = sprite_get( "taunt" );
	image_index = 9;
}

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

if (state == PS_ATTACK_GROUND && attack == AT_EXTRA_3){
	hurtboxID.sprite_index = sprite_get("mecha_crouch");
}

if (attack == AT_EXTRA_1){
	//hurtboxID.sprite_index = sprite_get("mecha_hurt");
}

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
	if (attack == AT_DSPECIAL_2 && window == 3){
		sprite_index = sprite_get( "dspecial_ground" );
	}
}

if (attack == AT_FTILT){
	if (window == 6 || window == 7){
		sprite_index = sprite_get( "uspecial_ground_followup2" );
	}
}



