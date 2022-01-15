//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_JAB){
  was_parried = false;
}

if (attack == AT_USPECIAL){
	can_fast_fall = false;
}

//Uspecial
if (attack == AT_USPECIAL) {
	if(window == 2 && window_timer == 4){
		sound_play(asset_get("sfx_swipe_weak2"));
		
	}
	if(window == 2 && window_timer == 8){
		sound_play(asset_get("sfx_swipe_weak2"));
		
	}
	if(window == 2 && window_timer == 11){
		sound_play(asset_get("sfx_swipe_weak2"));
		
	}
	if(window == 5){
		can_wall_jump = true;
	}
}


//Dspecial
//half the code is from rice i couldnt get the other half of it to work idk why
if (attack == AT_DSPECIAL && window == 1){
	set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
}
if (attack == AT_DSPECIAL && window == 4){
	hsp = 0
	vsp = 0
}
if (attack == AT_DSPECIAL && window == 5){
	hsp = 0
	vsp = 0
}
if (attack == AT_DSPECIAL){
	can_fast_fall = false;
    if (window == 2){
	reset_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS);
    if (has_hit)
    {
    move_cooldown[AT_DSPECIAL] = 6969; //you see i am a man of humor
    set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 5);
   	window = 4;
    window_timer = 0;
    }
    
    }
}
/*
if (attack == AT_DATTACK){
    if (has_hit){
    can_ustrong = true;
    can_attack = true;
    }
}
daily reminder that this was possible in beta
*/

if (attack == AT_NSPECIAL){
	the_hitbox = 0;
	if (window == 2){
	if(free && window_timer == 6){
		vsp = -5.5;
	}
	}
}

if (attack == AT_DSTRONG) {
	if(window == 2){
		sound_play(asset_get("sfx_ice_shieldup"));
		
	}
}

if (attack == AT_NSPECIAL) {
	if(window == 1 && window_timer == 1){
		sound_play(asset_get("sfx_bird_sidespecial_start"));
		
	}
}

if(attack == AT_TAUNT){
	if (taunt_down && window == 1){
		//nothing
	}
    if (taunt_down && window == 2 && window_timer == 3) {
        window = 2;
        window_timer = 0;
    }
    else{
    	window = 3;
    }
}

if (attack == AT_FSPECIAL) {
	if(window == 1 && window_timer == 1){
		sound_play(asset_get("sfx_swipe_medium1"));
	reset_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW); 
	reset_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW);
	reset_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW);
	reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED );
	reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED );
	reset_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_HSPEED );
	reset_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED );
	reset_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_HSPEED );
	reset_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_VSPEED ); //yeah.
	reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GRAVITY);
	reset_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GRAVITY);
	itgoesup = 0;
	itgoesdown = 0;
		
	}
	if (window == 1 && window_timer == 12){
		if (special_down){
			set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 5);
			set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 5);
			set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 2);
		}
	}
	if(window == 1){
        if(window_timer == 12 && up_down){
        		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 6);
				set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -3);
				set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_HSPEED, 6);
				set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, -3);
        	    set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_HSPEED, 8);
				set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_VSPEED, -3);
				set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0.08);
				set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GRAVITY, 0.08);
				itgoesup = 1;
				if (itgoesup == 1 && pHitBox == 3) {
    				pHitBox.vsp -= 0.5;
				}
    	  }else if(window_timer == 12 && down_down){
    		 	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 6);
				set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, 3);
				set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_HSPEED, 6);
				set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, 3);
        	    set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_HSPEED, 8);
				set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_VSPEED, 3);
				set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GRAVITY, -0.08);
				set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GRAVITY, -0.08);
				itgoesdown = 1;
				if (itgoesdown == 1 && pHitBox == 3) {
    				pHitBox.vsp += 0.5;
				}
    		}
    	}
}

if (attack == AT_FSPECIAL){
	move_cooldown[AT_FSPECIAL] = 105; //yes i am very specific
}

if (attack == AT_NSPECIAL) {
	if(window == 4){
		move_cooldown[AT_NSPECIAL] = 130;
	}
}

//CODE BY ROBOT
if (attack == AT_DAIR) {
    // Still have to reset these every cycle
    dair_hitbox = noone;
    fspecial_hitbox = noone;
    // For each hitbox, check if it's owned by this character, and if it's dair or fspecial
    with (pHitBox) {
        if (player_id == other.id) {
            if (attack == AT_DAIR) {
                other.dair_hitbox = id;
            } else if (attack == AT_FSPECIAL) {
                other.fspecial_hitbox = id;
            }
        }
    }
    // If both a dair and fpsecial exist, check if they touch
    if ((dair_hitbox != noone) && (fspecial_hitbox != noone)) {
        with (dair_hitbox) {
            if (place_meeting(x, y, other.fspecial_hitbox)) {
                other.vsp = -11.5;
                spawn_hit_fx(x+1,y+47,301);
				sound_play(asset_get("sfx_blow_medium1"));
				attack_end();
				if (other.fspecial_hitbox){
					destroyed = true;
				}
            }
        }
    }
}

