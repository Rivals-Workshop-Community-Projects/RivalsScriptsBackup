//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || (attack == AT_DSPECIAL) || attack == AT_USPECIAL){
    trigger_b_reverse();
}




//Soft/Hard Tilts
#region Soft Hard Presses

if attack==AT_FTILT {
    if window==1 {
        if attack_input >= get_window_value(attack,window,AG_WINDOW_LENGTH) {
            set_attack(AT_FSTRONG_2);
        }
    }
}

if attack==AT_UTILT{
    if window==1{
        if attack_input >= get_window_value(attack,window,AG_WINDOW_LENGTH) {
            set_attack(AT_USTRONG_2);
        }
    }
}

if attack==AT_FAIR{
    if window==1{
        if attack_input >= get_window_value(attack,window,AG_WINDOW_LENGTH) {
            set_attack(AT_FTHROW);
        }
    }
}  

if attack==AT_UAIR{
    if window==1{
        if attack_input >= get_window_value(attack,window,AG_WINDOW_LENGTH) {
            set_attack(AT_UTHROW);
        }
    }
}  

if attack==AT_FSPECIAL{
    if window==1{
        if special_input >= get_window_value(attack,window,AG_WINDOW_LENGTH) {
            set_attack(AT_FSPECIAL_AIR);
        }
    }
}  


#endregion




if attack==AT_USPECIAL_2{
        if(window == 1 && window_timer == 1){
            reset_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS);
        }
        if(window <= 2 && !free){
            if(window == 2 || (window == 3 && window_timer <= 3)){
                destroy_hitboxes();
                set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 3);
                window = 3;
                window_timer = 0;
                sound_play(sound_get("necoslam"));
            }else{
                destroy_hitboxes()}
                window = 3;
                window_timer = 0;
            }
        }




if (attack == AT_TAUNT){
    if (!taunt_down){
        window = 2;
        window_timer = 1;
    }
}


//code from mewtwo
if (attack == AT_USPECIAL){
	move_cooldown[AT_USPECIAL] = 70
	go_through = true;
	
	if window == 1 && window_timer >= get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH) - 1 { 
		starting_x = x; 
		has_been_corrected = false; 
		starting_y = y; 
		below_custom = false;
		if get_stage_data(SD_Y_POS) == 0 if !collision_rectangle(x - 1000, y - 5, x + 1000, y + 5, asset_get("par_block"), false, true) below_custom = true;
	}
    if (window == 2){
    	if (window_timer == get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH)) image_xscale = 1;
    	else {
    		image_xscale = 0;
	    	draw_indicator = false;
    		can_edge_cancel = false;
    		lastDir = 0;
	    	var magnitude = 16;
        	if (!joy_pad_idle){
    	        hsp = lengthdir_x(magnitude, joy_dir);
	            vsp = lengthdir_y(magnitude, joy_dir);
            	lastDir = joy_dir;
        	} else {
    	        hsp = 0;
	            vsp = 0;//-(magnitude);
        	}
        }
        if (get_stage_data(SD_Y_POS) != 0) { //Code doesn't work in custom stages
	        var stage_x = get_stage_data(SD_X_POS);
	        var stage_y_below = get_stage_data(SD_Y_POS) + 150;
	        if y > get_stage_data(SD_Y_POS) && !(x < stage_x || x > room_width - stage_x) {
	        	if starting_y <= get_stage_data(SD_Y_POS) { //stop Shadow from going below the stage from above
	        		y = get_stage_data(SD_Y_POS);
	        	} else if (window_timer == get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH) && starting_x > stage_x && starting_x < room_width - stage_x) {
	        		//get back to the top of the stage if you teleported from below
	        		y = get_stage_data(SD_Y_POS);
	        		x = (x - starting_x) / 3 + starting_x;
	        		has_been_corrected = true;
	        	}
	        }
	        if has_been_corrected
				if starting_x < stage_x 
					x = stage_x - 10;
				else if starting_x > room_width - stage_x 
					x = room_width - stage_x + 10;
	    }
	    else { //attemp at anti-bugging custom stage teleport
	    	var is_under_stage = starting_y > custom_stage_y && below_custom
	    	if starting_y <= custom_stage_y
	    	|| (window_timer == get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH) && is_under_stage) {
				if collision_circle(x, y + 5, 10, asset_get("par_block"), false, true) 
					while collision_circle(x, y + 5, 10, asset_get("par_block"), false, true) y -= 5;
					if is_under_stage has_been_corrected = true;
	    	}
					
	    }
	    
    }
    
    if (window == 3) {
    	vsp *= !has_been_corrected?abs(lengthdir_y(0.75, lastDir)):0;
    	hsp *= abs(lengthdir_x(0.75, lastDir));
    	can_move = true;
    	can_wall_jump = true;
    }
    	
    	
    	
    //Edge Cancel
	if (window == 3 && !free){
		can_edge_cancel = true;
	}
	
	if (can_edge_cancel && free && window == 3) {
		set_state(PS_IDLE_AIR);
	}
	
	
    if (window == 2 && window_timer < 4) {
    	free = true;
    	
		if (used_djump) {
			djumps = 1;  // remove double jump if they have entered PS_DOUBLE_JUMP since touching the ground
		}
		if window_timer == 1
			if (!meter_activated || used_uspecial) {
				set_window_value(attack, 3, AG_WINDOW_TYPE, 7);
				can_cancel_uspecial = false;
			} else {
				set_window_value(attack, 3, AG_WINDOW_TYPE, 0);
				used_uspecial = true;
				can_cancel_uspecial = true;
			}
	}
	
	//Repeat if boosted
	if (meter_activated && can_cancel_uspecial && window == 3 && window_timer > 10) {
		window = 1;
		window_timer = 0;
	}
}




if (attack == AT_DSPECIAL_AIR) {
	soundpick=random_func( 1, 2,  true);	
	if(soundpick==0) if (state_timer == 9) { 
		sound_play(sound_get("moshimoshi"));
	} 
	if(soundpick==1) if (state_timer == 9) {
		sound_play(sound_get("moshi"));
	} 
}


if (attack == AT_DSPECIAL_2) {
	soundpick=random_func( 1, 2,  true);	
	if(soundpick==0) if (state_timer == 9) { 
		sound_play(sound_get("moshimoshi"));
	} 
	if(soundpick==1) if (state_timer == 9) {
		sound_play(sound_get("moshi"));
	} 
}


if (attack == AT_USPECIAL_GROUND) {
	soundpick=random_func( 1, 2,  true);	
	if(soundpick==0) if (state_timer == 9) { 
		sound_play(sound_get("moshimoshi"));
	} 
	if(soundpick==1) if (state_timer == 9) {
		sound_play(sound_get("moshi"));
	} 
}


if (attack == AT_DSTRONG_2) {
	soundpick=random_func( 1, 2,  true);	
	if(soundpick==0) if (state_timer == 9) { 
		sound_play(sound_get("moshimoshi"));
	} 
	if(soundpick==1) if (state_timer == 9) {
		sound_play(sound_get("moshi"));
	} 
}

if (attack == AT_FSPECIAL_2) {
	soundpick=random_func( 1, 2,  true);	
	if(soundpick==0) if (state_timer == 9) { 
		sound_play(sound_get("desubeam"));
	} 
	if(soundpick==1) if (state_timer == 9) {
		sound_play(sound_get("meeeeme"));
	} 
}

if (attack == AT_TAUNT) {
	soundpick=random_func( 1, 2,  true);	
	if(soundpick==0) if (state_timer == 9) { 
		sound_play(sound_get("yuu"));
	} 
	if(soundpick==1) if (state_timer == 9) {
		sound_play(sound_get("yuu"));
	} 
}

if (attack == AT_DSPECIAL){
	attack_pick=random_func( 1, 4,  true);	
	if(attack_pick==0) { 
		set_attack(AT_DSPECIAL_2);
	} 
	if(attack_pick==1) {
		set_attack(AT_DSPECIAL_AIR);
	} 
	if(attack_pick==2) {
		set_attack(AT_USPECIAL_GROUND);
	}
	if(attack_pick==3) {
		set_attack(AT_DSTRONG_2);
	}
}


if (attack == AT_FSPECIAL){
	move_cooldown[AT_FSPECIAL] = 70
	move_cooldown[AT_FSPECIAL_AIR] = 70
}
	
if (attack == AT_FSPECIAL_AIR){
	move_cooldown[AT_FSPECIAL_AIR] = 70
	move_cooldown[AT_FSPECIAL] = 70
}
