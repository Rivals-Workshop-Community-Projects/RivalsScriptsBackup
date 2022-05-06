//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if attack==AT_FSPECIAL{
    if window==1{
        if special_input >= get_window_value(attack,window,AG_WINDOW_LENGTH) {
            set_attack(AT_FSPECIAL_2);
        }
    }
}  


if (attack == AT_FSPECIAL){
	move_cooldown[AT_FSPECIAL] = 40
	move_cooldown[AT_FSPECIAL_2] = 40
}
if (attack == AT_EXTRA_2){
	move_cooldown[AT_EXTRA_2] = 40
}
if (attack == AT_EXTRA_3){
	move_cooldown[AT_EXTRA_3] = 60
}




if (attack == AT_USPECIAL){
    if window==9{
            spawn_hit_fx( x, y-37, 143 );
        }
    }
    
    
    


if (attack == AT_TAUNT_2){
    if (window == 2 && !taunt_down){
        window = 3;
        window_timer = 1;
    }
}

if (attack == AT_EXTRA_1){
    if (window == 2 && !taunt_down){
        window = 3;
        window_timer = 1;
    }
}

if (attack == AT_TAUNT){
    if (window == 2 && !taunt_down){
        window = 3;
        window_timer = 1;
    }
}


if (attack == AT_FSPECIAL) {
	soundpick=random_func( 1, 5,  true);	
	if(soundpick==0) if (state_timer == 3) { 
		sound_play(sound_get("catspit_1"));
	} 
	if(soundpick==1) if (state_timer == 3) {
		sound_play(sound_get("catspit_2"));
	} 
	if(soundpick==2) if (state_timer == 3) {
		sound_play(sound_get("catspit_3"));
	} 
	if(soundpick==3) if (state_timer == 3) {
		sound_play(sound_get("catspit_4"));
	}
	if(soundpick==4) if (state_timer == 3) {
		sound_play(sound_get("catspit_5"));
	}
}

if (attack == AT_DAIR) {
	soundpick=random_func( 1, 3,  true);	
	if(soundpick==0) if (state_timer == 10) { 
		sound_play(sound_get("bubble_fire1"));
	} 
	if(soundpick==1) if (state_timer == 10) {
		sound_play(sound_get("bubble_fire2"));
	} 
	if(soundpick==2) if (state_timer == 10) {
		sound_play(sound_get("bubble_fire3"));
	} 
}

if (attack == AT_BAIR) {
	soundpick=random_func( 1, 2,  true);	
	if(soundpick==0) if (state_timer == 10) { 
		sound_play(sound_get("fire_1"));
	} 
	if(soundpick==1) if (state_timer == 10) {
		sound_play(sound_get("fire_2"));
	} 
}

if (attack == AT_NAIR) {
	soundpick=random_func( 1, 5,  true);	
	if(soundpick==0) if (state_timer == 3) { 
		sound_play(sound_get("catattack_1"));
	} 
	if(soundpick==1) if (state_timer == 3) {
		sound_play(sound_get("catattack_2"));
	} 
	if(soundpick==2) if (state_timer == 3) {
		sound_play(sound_get("catattack_3"));
	} 
	if(soundpick==3) if (state_timer == 3) {
		sound_play(sound_get("catattack_4"));
	}
	if(soundpick==4) if (state_timer == 3) {
		sound_play(sound_get("catattack_5"));
	}
}

if (attack == AT_BAIR) {
	soundpick=random_func( 1, 5,  true);	
	if(soundpick==0) if (state_timer == 3) { 
		sound_play(sound_get("catattack_1"));
	} 
	if(soundpick==1) if (state_timer == 3) {
		sound_play(sound_get("catattack_2"));
	} 
	if(soundpick==2) if (state_timer == 3) {
		sound_play(sound_get("catattack_3"));
	} 
	if(soundpick==3) if (state_timer == 3) {
		sound_play(sound_get("catattack_4"));
	}
	if(soundpick==4) if (state_timer == 3) {
		sound_play(sound_get("catattack_5"));
	}
}

if (attack == AT_DTILT) {
	soundpick=random_func( 1, 5,  true);	
	if(soundpick==0) if (state_timer == 3) { 
		sound_play(sound_get("catattack_1"));
	} 
	if(soundpick==1) if (state_timer == 3) {
		sound_play(sound_get("catattack_2"));
	} 
	if(soundpick==2) if (state_timer == 3) {
		sound_play(sound_get("catattack_3"));
	} 
	if(soundpick==3) if (state_timer == 3) {
		sound_play(sound_get("catattack_4"));
	}
	if(soundpick==4) if (state_timer == 3) {
		sound_play(sound_get("catattack_5"));
	}
}

if (attack == AT_DSPECIAL) {
	soundpick=random_func( 1, 5,  true);	
	if(soundpick==0) if (state_timer == 3) { 
		sound_play(sound_get("catpurr_1"));
	} 
	if(soundpick==1) if (state_timer == 3) {
		sound_play(sound_get("catpurr_2"));
	} 
	if(soundpick==2) if (state_timer == 3) {
		sound_play(sound_get("catpurr_3"));
	} 
	if(soundpick==3) if (state_timer == 3) {
		sound_play(sound_get("catpurr_4"));
	}
	if(soundpick==4) if (state_timer == 3) {
		sound_play(sound_get("catpurr_5"));
	}
}
if (attack == AT_EXTRA_2) {
	soundpick=random_func( 1, 5,  true);	
	if(soundpick==0) if (state_timer == 3) { 
		sound_play(sound_get("catspit_1"));
	} 
	if(soundpick==1) if (state_timer == 3) {
		sound_play(sound_get("catspit_2"));
	} 
	if(soundpick==2) if (state_timer == 3) {
		sound_play(sound_get("catspit_3"));
	} 
	if(soundpick==3) if (state_timer == 3) {
		sound_play(sound_get("catspit_4"));
	}
	if(soundpick==4) if (state_timer == 3) {
		sound_play(sound_get("catspit_5"));
	}
}

if (attack == AT_EXTRA_3) {
	soundpick=random_func( 1, 5,  true);	
	if(soundpick==0) if (state_timer == 3) { 
		sound_play(sound_get("catspit_1"));
	} 
	if(soundpick==1) if (state_timer == 3) {
		sound_play(sound_get("catspit_2"));
	} 
	if(soundpick==2) if (state_timer == 3) {
		sound_play(sound_get("catspit_3"));
	} 
	if(soundpick==3) if (state_timer == 3) {
		sound_play(sound_get("catspit_4"));
	}
	if(soundpick==4) if (state_timer == 3) {
		sound_play(sound_get("catspit_5"));
	}
}

if (attack == AT_UAIR) {
	soundpick=random_func( 1, 5,  true);	
	if(soundpick==0) if (state_timer == 3) { 
		sound_play(sound_get("pain1"));
	} 
	if(soundpick==1) if (state_timer == 3) {
		sound_play(sound_get("pain2"));
	} 
	if(soundpick==2) if (state_timer == 3) {
		sound_play(sound_get("pain3"));
	} 
	if(soundpick==3) if (state_timer == 3) {
		sound_play(sound_get("pain4"));
	}
	if(soundpick==4) if (state_timer == 3) {
		sound_play(sound_get("pain5"));
	}
}


if (attack == AT_TAUNT_2){
    if (window == 1)
		sound_play(sound_get("fan"));
	}
	
if (attack == AT_EXTRA_1){
    if (window == 1)
		sound_play(sound_get("vacuum"));
	}

if (attack == AT_UAIR){
    if (window == 3 && char_height <= 110){
        char_height += 5;   
    }
    if (window == 5 && char_height >= 60){
        char_height -= 3;   
    }
}

if (attack == AT_USTRONG){
    if (window == 1 && char_height <= 110){
        char_height += 5;   
    }
    if (window == 5 && char_height >= 60){
        char_height -= 3;   
    }
}

if (attack == AT_USPECIAL){
	can_fast_fall = false;
    if (window == 2){
    		spr_dir = 1;
		if (left_strong_pressed) {
			window_timer = 0;
			window = 4;
		}
    }
}

if (attack == AT_USPECIAL){
	can_fast_fall = false;
if (window == 2){
    		spr_dir = 1;
		if (right_strong_pressed) {
			window_timer = 0;
			window = 6;
		}
    }
}

if (attack == AT_USPECIAL){
	can_fast_fall = false;
	if (window == 3 || window == 5 || window == 7 ) {
			window_timer = 0;
			window = 8;
		}
	}


if (attack == AT_USPECIAL){
	can_fast_fall = false;
    if (window == 2){
		if (shield_pressed) {
			window_timer = 0;
			window = 8;
		}
    }
}
