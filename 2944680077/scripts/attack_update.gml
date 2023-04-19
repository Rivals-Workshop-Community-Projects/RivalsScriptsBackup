//attack_update
//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


switch(attack)
{
	case AT_JAB:
		//jab logic to prevent annoying jank from cancel types
		var cancel_window_1 = 3; //The window where jab1 can be cancelled into jab2 or a tilt
		var cancel_window_2 = 6; 
		
		var cancel_frame_1 = 4; //The frame of cancel_window_1, whereafter jab1 can be cancelled into jab2 or a tilt
		var cancel_frame_2 = 6;
		
		if (window == 1){
			set_attack_value(AT_JAB, AG_NUM_WINDOWS, 3); //set so that jab1 stays a single attack
		}
		if ((window == cancel_window_1 && attack_pressed && window_timer >= cancel_frame_1) || (window == cancel_window_2 && attack_pressed && window_timer >= cancel_frame_2)){ //If during the cancel window of jab1 or jab2...following logic for tilt cancelled jab
			if (left_down){
				if (spr_dir = -1 || has_hit){ //if facing left, or if you hit the opponent, do ftilt if pressing left+attack
					spr_dir = -1; //sets facing so you can do reversed tilts on hi
					window = 1;
					window_timer = 0;
					attack = AT_FTILT;
				}
			}
			if (right_down){
				if (spr_dir = 1 || has_hit){ //if facing right, or if you hit the opponent, do ftilt if pressing right+attack
					spr_dir = 1; //sets facing so you can do reversed tilts on hit
					window = 1;
					window_timer = 0;
					attack = AT_FTILT;
					hurtboxID.sprite_index = sprite_get("ftilt_hurt");
				}
			}
			if (up_down){ //do utilt if pressing up+attack
				window = 1;
				window_timer = 0;
				attack = AT_UTILT;
				hurtboxID.sprite_index = sprite_get("utilt_hurt");
			}
			if (down_down){ //do dtilt if pressing down+attack
				window = 1;
				window_timer = 0;
				attack = AT_DTILT;
				hurtboxID.sprite_index = sprite_get("dtilt_hurt");
			}
			if ((left_down && spr_dir == 1) || (right_down && spr_dir == -1) || (!left_down && !right_down && !up_down && !down_down)){ //if simply trying to do jab2 or jab3 by not holding a direction
				if (window == 3){
					set_attack_value(AT_JAB, AG_NUM_WINDOWS, 6); //set so it actually goes to the next windows
					window = 4; //jab2 starting window
					window_timer = 0;
					clear_button_buffer(PC_ATTACK_PRESSED); //clears the buffer, just in case your jab timings are very tight and quick.
				}
				if (window == 6){
					set_attack_value(AT_JAB, AG_NUM_WINDOWS, 9);
					window = 7; //jab3 starting window
					window_timer = 0;
					clear_button_buffer(PC_ATTACK_PRESSED);
				}
			}
		} 
		if (was_parried && (window == 3 || window == 6) && window_timer >= get_window_value(AT_JAB, window, AG_WINDOW_LENGTH)){ //if jab isn't cancelled or if jab3 isn't performed, as soon as the window ends, was_parried is cleared so that the jab is parry safe
			was_parried = false;
		}
	break;
	
	case AT_USTRONG:
		if window == 1 
			ustrongtimer = 0
	
		if (window >= 7 && window <= 9) {
			can_special = true;
    		can_attack = true;
		}
		
		if (window == 8) {
			ustrongtimer++;
			
			if ustrongtimer == 36{
				state = PS_IDLE_AIR
				hurtboxID.sprite_index = hurtbox_spr;
			}
		}
			
	break;
	
	case AT_DSTRONG:
		if (window == 2 && window_timer == get_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH)-1)
			sound_play(asset_get("sfx_ori_stomp_spin"))
	break;
	
	case AT_DATTACK:
		//dattack cancels into jump on hit
		if (has_hit && !hitpause && !was_parried) {
			can_jump = true;
		}
		
    	if window == 4 {
    		destroy_hitboxes();
    	}
    	if (window == 3 && state_timer >= 45 or window == 5 && state_timer >= 45) {
    		destroy_hitboxes();
    		attack_end()
			state = PS_IDLE_AIR
			hurtboxID.sprite_index = hurtbox_spr;
			
    	}
    	
    break;
	
    case AT_UAIR:
    	hud_offset = 32;
    break;
    
    case AT_DAIR:
    	move_cooldown[AT_DAIR] = 9999;
    
    	if (window == 1 && window_timer == 1 && vsp > 0) {
    		vsp = -1;
    	}
    	
    	if (window == 3 && state_timer > 28) {
    		can_special = true;
    		can_jump = true;
    		can_wall_jump = true;
    		can_attack = true;
    		can_shield = true;
    	} 
	break;
	
	case AT_EXTRA_1:
		move_cooldown[AT_EXTRA_1] = 66;
	break;
    
    
    /////////////SPECIALS////////////////
    
    case AT_NSPECIAL:
    	move_cooldown[AT_NSPECIAL] = 60;
    	if special_down && window == 3 && window_timer > 6 && fireballs_out < 2 {
    		window = 1
    		window_timer = 0
    	}
    break;
    
    case AT_USPECIAL:
    	can_fast_fall = false;
    
    	if window == 1 {
    		vsp = clamp(vsp, -12, 0);
    	}
    
    	if window > 1 {
    		can_wall_jump = true;
    	}
    	if window == 5 {
    		can_fast_fall = true;
    	}
    	if window > 5 {
    		destroy_hitboxes();
    	}
    break;
    
    //Long Jump // Leap
    case AT_FSPECIAL:
    	can_fast_fall = false;
		can_wall_jump = true;
    

    	if window == 1 {
    		if (window_timer == 1){
    		}
    		if (window_timer == get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH)-1) {
    			sound_play(sound_get("galaxy_longjump"), 0, noone, 1, 0.9);
    		}
    	}
    	
    	if window > 1 && window < 4{
    		can_jump = true;
    		can_attack = true;
    		can_shield = true;
    	}
    	
    	if window > 3 {
    		destroy_hitboxes();
    	}
    	
    	
    	if (spr_dir == 1) {
			hsp = clamp(hsp, -air_max_speed-3, leave_ground_max+1.5);
		} else if (spr_dir == -1) {
			hsp = clamp(hsp, -leave_ground_max-1.5, air_max_speed+3);
		}
    	
    	
    	if window == 2 && window_timer > 10 {
    		if !free {
    			window = 3
    			window_timer = 0
    		}
    	}
    	
    	if window == 4 && special_down {
    		attack_end();
    		destroy_hitboxes();
    		window = 1;
			window_timer = 0;
			attack = AT_EXTRA_2;
			hurtboxID.sprite_index = sprite_get("fspecial_roll_hurt");
    	}
    break;
    case AT_FSPECIAL_AIR:
    	move_cooldown[AT_FSPECIAL_AIR] = 9999;
    	
    	hurtboxID.sprite_index = sprite_get("fspecial_air_hurt");
    	can_fast_fall = false;
		can_wall_jump = true;
    
    	if window == 1 {
    		if (window_timer == get_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH)-1) {
    			sound_play(sound_get("galaxy_swipeleap"), 0, noone, 0.8, 0.75);
    		}
    	}
    	
    	
    	if (window >= 4 && window < 5) {
    		can_jump = true;
    		can_attack = true;
    		can_shield = true;
    	}
    	
    	if (window > 4 ) {
    		destroy_hitboxes();
    	}
    	
    	if (window == 5 or window == 6) && special_down{
    		attack_end();
    		destroy_hitboxes();
    		window = 1;
			window_timer = 0;
			attack = AT_EXTRA_2;
			hurtboxID.sprite_index = sprite_get("fspecial_roll_hurt");
    	}
    	
    	
    	//OOF
    	if (window > 2 && window < 5 && bonked == false) {
    		if (place_meeting(x+(10*spr_dir), y, asset_get("solid_32_obj"))) {
    			bonked = true;
    			window = 7;
    			window_timer = 0;
    			sound_play(sound_get("sm64_impact"), 0, noone, 1, 1);
    			can_move = false;
    			
    		}
    	}
    	
    	
    	if (window == 7){
    		can_jump = false;
    		can_move = false;
    		if (window_timer < 10) {
    			can_wall_jump = false;
    		}
    		else {
    			can_wall_jump = true;
    		}
    	}
    break;
    
    case AT_EXTRA_2:
    	hurtboxID.sprite_index = sprite_get("fspecial_roll_hurt");

    	
    	if !special_down && !hitpause {
    		destroy_hitboxes();
    		attack_end()
    		sound_play(sound_get("smb_jump"));
    		hsp = 8 * spr_dir
    		vsp = -6
			state = PS_FIRST_JUMP
			hurtboxID.sprite_index = hurtbox_spr;
		}
		
    break;

	//dspec
	//handstand, whole 9 yards
	case AT_DSPECIAL:
		can_wall_jump = true;
		
		switch (window){
			case 1:
				if window_timer == 1 {
					if free 
						aerialdspec = true;
					else	
						aerialdspec = false;
						
					sound_play(sound_get("dk96_hstand1"), 0, noone, 0.9, 0.8);
				}
				if window_timer > 1 {
					if aerialdspec != true 
						vsp = clamp(vsp, 0, -3);
					else {
						if window_timer < 4 {
							vsp = clamp(vsp, 0, -5);
						}
					}
				}
					
			break;
			
			case 2:
				if state_timer > 20 {
					can_shield = true;
					can_jump = true;
				}
			break;
			
			case 3:
				destroy_hitboxes();
				
				if special_down && window_timer > 6{
					window = 7;
					window_timer = 0;
				}
			break;
			
			case 4:
				if jump_pressed {
					clear_button_buffer( PC_JUMP_PRESSED );
					window = 5;
					window_timer = 0;
				}

			
				if left_pressed {
					spr_dir = -1
				}
				if right_pressed {
					spr_dir = 1
				}
			
				if (left_down or right_down) && !free {
					window = 6
					window_timer = 0;
				}
				
				if free {
					window = 16
					window_timer = 0;
				}
				
				if special_down {
					window = 7;
					window_timer = 0;
				}
				

				
			break;
			
			case 5:
				if window_timer == 3 {
					vsp = -8
					sound_play(sound_get("dk96_hstand1"), 0, noone, 0.5, 0.7);
				}
				
				if window_timer == get_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH)-1 {
					window = 16;
					window_timer = 0;
				}
			break;
			
			case 16:
				can_jump = true;
				if !free {
					window = 17
					window_timer = 0;
				}
			break;
			
			case 17:
				if window_timer == get_window_value(AT_DSPECIAL, 17, AG_WINDOW_LENGTH)-1 {
					window = 4
					window_timer = 0;
				}
			
			case 6:
				if jump_pressed {
					clear_button_buffer( PC_JUMP_PRESSED );
					window = 5;
					window_timer = 0;
				}

				
				if window_timer == 30 {
					window_timer = 0;
				}
				
				if left_down {
					spr_dir = -1
					hsp = clamp(hsp, 0, -3)
				}
				if right_down {
					spr_dir = 1
					hsp = 3
				}
				
				if (!left_down and !right_down) or free {
					window = 4;
					window_timer = 0;
				}
				
				if special_down {
					window = 7;
					window_timer = 0;
				}
				
				if window_timer % 30 == 15 {
					sound_play(sound_get("dk96_step2"), 0, noone, 0.3, 1);
				}
				else if window_timer % 30 == 0 {
					sound_play(sound_get("dk96_step1"), 0, noone, 0.3, 1);
				}
			break;
			
			case 7:
				if window_timer == 5
					sound_play(sound_get("dk96_hstand1"), 0, noone, 0.9, 1.05);
				if window_timer > 5
					vsp = clamp(vsp, 0, -8);
				
				if window_timer == get_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH)-1 {
					window = 8;
					window_timer = 0;
				}
				
			break;
			
			case 8:
				can_jump = true;
				can_shield = true;
				if window_timer = 1
					vsp = -2;
			break;
			
			case 9:
				destroy_hitboxes();
			
				if special_down {
					window = 10;
					window_timer = 0;
				}
			break;
			
			case 10:
				if window_timer == 1
					sound_play(sound_get("dk96_hstand2"), 0, noone, 1, 1);
				if window_timer > 5
					vsp = -13
			
				if window_timer == get_window_value(AT_DSPECIAL, 10, AG_WINDOW_LENGTH)-1 {
					window = 11;
					window_timer = 0;
				}
				destroy_hitboxes();
			break;
			
			case 11:
				if window_timer == get_window_value(AT_DSPECIAL, 11, AG_WINDOW_LENGTH)-1 {
					window = 12;
					window_timer = 0;
				}
				
			break;
			
			case 12:
				can_jump = true;
				can_shield = true;
				if !free {
					window = 13;
					window_timer = 0;
				}
				if window_timer == get_window_value(AT_DSPECIAL, 12, AG_WINDOW_LENGTH)-1 
					window_timer = 0;
			break;
			
			case 13:
				if window_timer == get_window_value(AT_DSPECIAL, 13, AG_WINDOW_LENGTH)-1 {
					window = 14;
					window_timer = 0;
				}
			break;
			
			case 14:
				endlag_cancel()
				if taunt_pressed {
					window = 18
					window_timer = 0;
					
				}
				clear_button_buffer( PC_TAUNT_PRESSED );
					
			break;
			
			case 15:
				if window_timer == get_window_value(AT_DSPECIAL, 15, AG_WINDOW_LENGTH)-1 {
					sound_play(asset_get("sfx_land_med2"));
				}
				
			break;
			
			case 18:
				if window_timer == get_window_value(AT_DSPECIAL, 18, AG_WINDOW_LENGTH)-1 {
					window = 19
					window_timer = 0
				}
				
			break;
			
			case 19:
				if window_timer == get_window_value(AT_DSPECIAL, 20, AG_WINDOW_LENGTH)-1 {
					window = 20
					window_timer = 0
				}
				
			break;


		}

}


//dust
//good dust
switch(attack)
{
	case AT_FSTRONG:
    	if (window == 3 && window_timer == 1)
    		spawn_base_dust(x+(75*spr_dir),y, "dash_start", -spr_dir);
    	break;
    	
    	
    case AT_DSTRONG:
    	if (window == 3 && window_timer == 1)
    		spawn_base_dust(x+(50*spr_dir),y, "dash_start", -spr_dir);
    	if (window == 5 && window_timer == 1)
    		spawn_base_dust(x+(50*-spr_dir),y, "dash_start", spr_dir);
    	break;	
    	
    	
    case AT_USTRONG:
    	if (window == 3 && window_timer == 1){
    		spawn_base_dust(x+(20*spr_dir),y+6, "dash_start", -spr_dir);
    		spawn_base_dust(x+(10*-spr_dir),y+6, "dash_start", spr_dir);
    		spawn_base_dust(x+(0*spr_dir),y+6, "jump", spr_dir);
    	}
    	break;
    	
    case AT_DATTACK:
    	if (window == 1 && window_timer == 1){
    		spawn_base_dust(x+(0*spr_dir),y, "walk", spr_dir);
    	}
    	if (window == 4){
    		switch (window_timer){
    			case 1:
    				spawn_base_dust(x+(-10*spr_dir),y+6, "walk", spr_dir);
    			case 3:
    				spawn_base_dust(x+(10*spr_dir),y, "walk", spr_dir);
    		}
    	}
    	if (window == 6 && window_timer == 1)
    		spawn_base_dust(x+(24*spr_dir),y, "land", spr_dir);
    	break;	
    	
    	
    case AT_DTILT:
    	if (window == 1 && window_timer == get_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH)-1)
    			spawn_base_dust(x+(55*spr_dir),y, "dash_start", -spr_dir);
    	break;
    	
    	
    case AT_FTILT:
    	if (window == 1 && window_timer == get_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH)-1)
    			spawn_base_dust(x+(45*spr_dir),y, "dash_start", -spr_dir);
    	break;
    	
    	
    case AT_UTILT:
    	if (window == 1 && window_timer == get_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH)-1)
    			spawn_base_dust(x+(0*spr_dir),y, "jump", spr_dir);
    	break;
    	
    	
    case AT_JAB:
    	if (window == 1 && window_timer == get_window_value(AT_JAB, 1, AG_WINDOW_LENGTH)-1)
    			spawn_base_dust(x+(25*spr_dir),y, "dash_start", -spr_dir);
    	if (window == 4 && window_timer == get_window_value(AT_JAB, 1, AG_WINDOW_LENGTH)-1)
    			spawn_base_dust(x+(45*spr_dir),y, "dash_start", -spr_dir);
    	if (window == 7 && window_timer == get_window_value(AT_JAB, 1, AG_WINDOW_LENGTH)-1){
    			spawn_base_dust(x+(70*spr_dir),y, "dash_start", -spr_dir);
    			spawn_base_dust(x+(-10*spr_dir),y, "walk", spr_dir);
    	}
    	break; 
    case AT_DAIR:
    if (window == 2 && window_timer == 1)
    	spawn_base_dust(x+(10*spr_dir),y+-36, "doublejump", -spr_dir);
    break;
    case AT_USPECIAL:
    	if (window == 1 && window_timer == get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH)-1 ){
    		if !free {
    			spawn_base_dust(x+(20*spr_dir),y, "dash_start", -spr_dir);
    			spawn_base_dust(x+(10*-spr_dir),y, "dash_start", spr_dir);
    			spawn_base_dust(x+(0*spr_dir),y, "jump", spr_dir);
    		}
    		else {
    			spawn_base_dust(x+(10*spr_dir),y+(-36*spr_dir), "doublejump", -spr_dir);
    		}
    	}
    	if (window == 6 && window_timer == 1){
    		spawn_base_dust(x+(15*spr_dir),y, "land", spr_dir);
    		sound_play(asset_get("sfx_land_med2"))
    	}
    	break;
    	
    	break;
    case AT_FSPECIAL:
    	if (window == 1 && window_timer == get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH)-1 ){
    		
    	spawn_base_dust(x+(0*spr_dir),y, "jump", spr_dir);
    		
    	}
    	
    	break;
    case AT_FSPECIAL_AIR:
    	if (window == 1 && window_timer == get_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH)-1 ){
    		spawn_base_dust(x+(0*spr_dir),y, "doublejump", spr_dir, 45*-spr_dir);
    	}
    	if (window == 7 && window_timer == 1 ){
    		spawn_base_dust(x+(30*spr_dir),y-32, "dattack", -spr_dir, 90*spr_dir);
    		spawn_base_dust(x+(30*spr_dir),y-40, "dattack", spr_dir, 90*spr_dir);
    	}
    	
    	if (window == 5 && window_timer == 1)
    		spawn_base_dust(x+(24*spr_dir),y, "land", spr_dir);
    	break;	
    	
    case AT_EXTRA_2:
    	if (window == 1 && window_timer == 1)
    		spawn_base_dust(x+(48*spr_dir),y, "dash_start", spr_dir);
    	break;
    	
    case AT_DSPECIAL:
    	if ((window == 1 or window == 7) && window_timer == 1 ){
    		if !free 
    			spawn_base_dust(x+(0*spr_dir),y+5, "jump", spr_dir);
    		else 
    			spawn_base_dust(x+(0*spr_dir),y+5, "djump", spr_dir);
    	}
    	
    	if ((window == 16) && window_timer == 1 ){
    			spawn_base_dust(x+(0*spr_dir),y+8, "jump", spr_dir);

    	}
    	
    	if (window == 10 && window_timer == 1){
    		spawn_base_dust(x+(20*spr_dir),y+6, "dash_start", -spr_dir);
    		spawn_base_dust(x+(10*-spr_dir),y+6, "dash_start", spr_dir);
    		spawn_base_dust(x+(0*spr_dir),y+6, "jump", spr_dir);
    	}
    	if (window == 15 && window_timer == get_window_value(AT_DSPECIAL, 15, AG_WINDOW_LENGTH)-1 )
    	or ((window == 3 or window = 9 or window = 13 or window = 17) && window_timer == 1)
    	{
    		spawn_base_dust(x+(0*spr_dir),y, "land", spr_dir);
    	}
    	
    	
    	
}

if (attack == AT_DSPECIAL) {
	if (window == 4 or window == 6){
		if shield_pressed or attack_pressed {
					window = 15;
					window_timer = 0;
					clear_button_buffer( PC_SHIELD_PRESSED );
					clear_button_buffer( PC_ATTACK_PRESSED );
				}
	}
}


//voiced mode
switch (attack) {
	case AT_JAB:
		if (window == 1 && window_timer == 1) {
			if(voice_enabled == true){
    				snd_rng = random_func(0, 1, true);
    				if (snd_rng == 0) {
    				voice_id = "hit7";
        			voice_volume = 1.5;
        			voice_play();
    				}
    			}
			}
		if (window == 4 && window_timer == 1) {
			if(voice_enabled == true){
    				snd_rng = random_func(0, 1, true);
    				if (snd_rng == 0) {
    				voice_id = "hit5";
        			voice_volume = 1.5;
        			voice_play();
    				}
    			}
			}
		if (window == 7 && window_timer == 1) {
			if(voice_enabled == true){
    				snd_rng = random_func(0, 1, true);
    				if (snd_rng == 0) {
    				voice_id = "hithaa";
        			voice_volume = 1.5;
        			voice_play();
    				}
    			}
			}
	break
	
	case AT_NAIR:
		if (window == 1 && window_timer == 1) {
			if(voice_enabled == true){
    				snd_rng = random_func(0, 2, true);
    				if (snd_rng == 0) {
    				voice_id = "hit6";
        			voice_volume = 1.5;
        			voice_play();
    				}
    			}
			}
	break
	case AT_FAIR:
		if (window == 1 && window_timer == 1) {
			if(voice_enabled == true){
    				snd_rng = random_func(0, 2, true);
    				if (snd_rng == 0) {
    				voice_id = "hithaa";
        			voice_volume = 1.5;
        			voice_play();
    				}
    			}
			}
	break
	case AT_BAIR:
		if (window == 1 && window_timer == 1) {
			if(voice_enabled == true){
    				snd_rng = random_func(0, 2, true);
    				if (snd_rng == 0) {
    				voice_id = "hit7";
        			voice_volume = 2;
        			voice_play();
    				}
    			}
			}
	break;
	case AT_UAIR:
		if (window == 1 && window_timer == 1) {
			if(voice_enabled == true){
    				snd_rng = random_func(0, 2, true);
    				if (snd_rng == 0) {
    				voice_id = "hit9";
        			voice_volume = 1.5;
        			voice_play();
    				}
    			}
			}
	break;
	case AT_DAIR:
		if (window == 1 && window_timer == 1) {
			if(voice_enabled == true){
    				snd_rng = random_func(0, 4, true);
    				if (snd_rng == 0) {
    				voice_id = "weee";
        			voice_volume = 1.3;
        			voice_play();
    				}
    			}
			}
    break;
    case AT_DATTACK:
		if (window == 1 && window_timer == 1) {
			if(voice_enabled == true){
    				snd_rng = random_func(0, 2, true);
    				if (snd_rng == 0) {
    				voice_id = "hitwahoo";
        			voice_volume = 1.5;
        			voice_play();
    				}
    			}
			}
	break
	case AT_FTILT:
		if (window == 1 && window_timer == 1) {
			if(voice_enabled == true){
    				snd_rng = random_func(0, 2, true);
    				if (snd_rng == 0) {
    				voice_id = "hit3";
        			voice_volume = 2;
        			voice_play();
    				}
    			}
			}
    break;
	case AT_DTILT:
		if (window == 1 && window_timer == 1) {
			if(voice_enabled == true){
    				snd_rng = random_func(0, 2, true);
    				if (snd_rng == 0) {
    				voice_id = "hit4dtilt";
        			voice_volume = 2;
        			voice_play();
    				}
    			}
			}
    break;
    case AT_UTILT:
		if (window == 1 && window_timer == 1) {
			if(voice_enabled == true){
    				snd_rng = random_func(0, 2, true);
    				if (snd_rng == 0) {
    				voice_id = "hithigh";
        			voice_volume = 2;
        			voice_play();
    				}
    			}
			}
    break;
    case AT_FSTRONG:
		if (window == 2 && window_timer == 1) {
			if(voice_enabled == true){
    				snd_rng = random_func(0, 2, true);
    				if (snd_rng == 0) {
    				voice_id = "hithaa";
        			voice_volume = 1.3;
        			voice_play();
    				}
    			}
			}
	break;
    case AT_DSTRONG:
		if (window == 2 && window_timer == 1) {
			if(voice_enabled == true){
    				snd_rng = random_func(0, 2, true);
    				if (snd_rng == 0) {
    				voice_id = "hit8";
        			voice_volume = 2;
        			voice_play();
    				}
    			}
			}
	break;
	case AT_USTRONG:
		if (window == 2 && window_timer == 1) {
			if(voice_enabled == true){
    				snd_rng = random_func(0, 2, true);
    				if (snd_rng == 0) {
    				voice_id = "wahoo";
        			voice_volume = 2;
        			voice_play();
    				}
    			}
			}
	break;
	case AT_EXTRA_2:
		if (!special_down && !hitpause) {
			if(voice_enabled == true){
    				snd_rng = random_func(0, 3, true);
    				if (snd_rng == 0) {
    				voice_id = "dflip1_1";
        			voice_volume = 2;
        			voice_play();
    				}
    				else if (snd_rng == 1) {
    				voice_id = "dflip1_2";
        			voice_volume = 2;
        			voice_play();
    				}
    			}
			}
    break;
	case AT_FSPECIAL:
		if (window == 1 && window_timer == 1) {
			if(voice_enabled == true){
    				snd_rng = random_func(0, 4, true);
    				if (snd_rng == 0) {
    				voice_id = "longjump";
        			voice_volume = 1.5;
        			voice_play();
    				}
    				else if (snd_rng == 1) {
    				voice_id = "longjump4";
        			voice_volume = 1.5;
        			voice_play();
    				}
    			}
			}
    break;
    case AT_USPECIAL:
		if (window == 1 && window_timer == 1) {
			if(voice_enabled == true){
    				snd_rng = random_func(0, 3, true);
    				if (snd_rng == 0) {
    				voice_id = "hit5";
        			voice_volume = 1.5;
        			voice_play();
    				}
    				else if (snd_rng == 1) {
    				voice_id = "hit9";
        			voice_volume = 1.5;
        			voice_play();
    				}
    			}
			}
		if (window == 6 && window_timer == 1) {
			if(voice_enabled == true){
    				snd_rng = random_func(0, 1, true);
    				if (snd_rng == 0) {
    				voice_id = "gothit4";
        			voice_volume = 1.1;
        			voice_play();
    				}
    			}
			}
    break;
	case AT_FSPECIAL_AIR:
		if (window == 1 && window_timer == 1) {
			if(voice_enabled == true){
    				snd_rng = random_func(0, 3, true);
    				if (snd_rng == 0) {
    				voice_id = "dive1";
        			voice_volume = 2;
        			voice_play();
    				}
    				else if (snd_rng == 1) {
    				voice_id = "dive2";
        			voice_volume = 2;
        			voice_play();
    				}
    				else if (snd_rng == 2) {
    				voice_id = "dive3";
        			voice_volume = 2;
        			voice_play();
    				}
    			}
			}
		if (window == 7 && window_timer == 1) {
    			if(voice_enabled == true){
    				snd_rng = random_func(0, 1, true);
    				if (snd_rng == 0) {
    				voice_id = "doh";
        			voice_volume = 2.5;
        			voice_play();
    				}
    			}
    		}
    break;
    case AT_DSPECIAL:
    	if (window == 1 && window_timer == 1) {
    		if(voice_enabled == true){
    				snd_rng = random_func(0, 1, true);
    				if (snd_rng == 0) {
    				voice_id = "dflip1_2";
        			voice_volume = 2;
        			voice_play();
    				}
    			}	
    	}
    	if (window == 7 && window_timer == 1) {
    		if(voice_enabled == true){
    				snd_rng = random_func(0, 2, true);
    				if (snd_rng == 0) {
    				voice_id = "dflip2_1";
        			voice_volume = 2;
        			voice_play();
    				}
    				else if (snd_rng == 1) {
    				voice_id = "dflip2_2";
        			voice_volume = 2;
        			voice_play();
    				}
    				
    			}	
    	}
    	if (window == 10 && window_timer == 1) {
    		if(voice_enabled == true){
    				snd_rng = random_func(0, 2, true);
    				if (snd_rng == 0) {
    				voice_id = "dflip3_1";
        			voice_volume = 2;
        			voice_play();
    				}
    				else if (snd_rng == 1) {
    				voice_id = "dflip3_2";
        			voice_volume = 2;
        			voice_play();
    				}
    				else if (snd_rng == 1) {
    				voice_id = "dflip3_3_dairspinx";
        			voice_volume = 2;
        			voice_play();
    				}
    				
    			}	
    	}
    	if (window == 14 && window_timer == 1) {
    		if(voice_enabled == true){
    				snd_rng = random_func(0, 5, true);
    				if (snd_rng == 0) {
    				voice_id = "dflipland1";
        			voice_volume = 2;
        			voice_play();
    				}
    				else if (snd_rng == 1) {
    				voice_id = "dflipland2";
        			voice_volume = 2;
        			voice_play();
    				}
    				else if (snd_rng == 2) {
    				voice_id = "dflipland3";
        			voice_volume = 2;
        			voice_play();
    				}
    				else if (snd_rng == 3) {
    				voice_id = "dflipland4";
        			voice_volume = 2;
        			voice_play();
    				}
    				else if (snd_rng == 4) {
    				voice_id = "dflipland5";
        			voice_volume = 2;
        			voice_play();
    				}

    			}	
    	}
    	if (window == 19 && window_timer == 1) {
    		if(voice_enabled == true){
    				snd_rng = random_func(0, 1, true);
    				if (snd_rng == 0) {
    				voice_id = "dfliptaunt";
        			voice_volume = 2;
        			voice_play();
    				}

    			}	
    	}
	}


//iasa_script (insantly as soon as, aka switch back into full control/idle) without having to check for !was_parried
#define endlag_cancel()
{
	if !was_parried // checks if you WERENT parried
	{
		iasa_script(); // if you werent parried, wherever you put endlag_cancel() will let you act out of whatever the fuck you were doing before
	}
}

// window_advance_to
// input the attack index, like AT_JAB, then the window you want to switch to happen from, then the window you want to switch to
// continuous is a boolean (true or false) that makes it automatically switch windows after going through the current window's frames
// example: window_advance_to(AT_TAUNT, 1, 2, true)
#define window_advance_to(attackindex, currentwindow, newwindow, continuous)
{
    if window == currentwindow
    {
	    if continuous
	    {
	        if window_timer >= get_window_value(attackindex, currentwindow,AG_WINDOW_LENGTH)
	        {
	            window = newwindow;
	            window_timer = 0;
	        }
	    }
	    else if !continuous
	    {
	        window = newwindow;
	        window_timer = 0;
	    }
    }
	
}

// makes the user flash yellow like a strong
// example: yellow_flash_cycle(8);
#define yellow_flash_cycle(cyclenumber)
{
    strong_flashing = (floor(get_gameplay_time()/cyclenumber) % 2) == 0;
}

// makes the user glow depending on the timer set. the larger the number the brighter and slower it flashes
// example: white_flash_cycle(10);
#define white_flash_cycle(timer)
{
	if white_flash_timer <= 1
	{
		white_flash_timer = timer;
	}
}

// spawn_base_dust made by Supersonic
#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
var angle = argument_count > 4 ? argument[4] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
    
    //
    //bar-kun additions (note: idk how fg_sprite work)
    //
    case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
    case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
	case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
    case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
    case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
    case "doublejump_small": 
    case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = angle;
return newdust;

#define voice_play()
voice_playing_sound = sound_play(sound_get("voc_" + voice_id), false, noone, voice_volume);