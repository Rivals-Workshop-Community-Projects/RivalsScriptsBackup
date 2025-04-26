//attack_update
var window_end_time = get_window_value(attack, window, AG_WINDOW_LENGTH);

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
    can_fast_fall = false;
}

//dust
//good dust
switch(attack)
{
	case AT_FTILT:
    	if (window == 1 && window_timer == window_end_time - 2) spawn_base_dust(x+(12*spr_dir),y, "dash_start", spr_dir);
    break;
    case AT_JAB:
    	if (window == 1 && window_timer == window_end_time) spawn_base_dust(x+(28*spr_dir),y, "dash", -spr_dir);
    	else if (window == 4 && window_timer == window_end_time) spawn_base_dust(x+(32*spr_dir),y, "dash_start", -spr_dir);
    break;
    case AT_UTILT:
    	if (window == 1 && window_timer == window_end_time) {spawn_base_dust(x+(8*spr_dir),y, "dash_start", -spr_dir); spawn_base_dust(x-(0*spr_dir),y, "dash_start", spr_dir)}
    break;
    case AT_DTILT:
    	if (window == 1 && window_timer == window_end_time) spawn_base_dust(x+(32*spr_dir),y, "dash", -spr_dir);
    break;
    case AT_USPECIAL:
    	if (window == 1 && window_timer == window_end_time - 2) {
    		dust = (free != 1) ? (spawn_base_dust(x, y, "jump", spr_dir)) : (spawn_base_dust(x, y, "djump", spr_dir))
    		rise_anglemod = 0;
    	}
    	else if (window == 2 && window_timer % 4 == 0) {
    		spawn_base_dust(x+(0*spr_dir), y-16, "doublejump_small", spr_dir, (60 + rise_anglemod) * -spr_dir);
    		rise_anglemod = rise_anglemod + 10
    	}
    	else if (window == 3 && window_timer % 8 == 0 && ((spr_dir == 1 && hsp > 8) || (spr_dir == -1 && hsp < -8))) spawn_base_dust(x+(0*spr_dir),y-16, "doublejump_small", spr_dir, 95 * -spr_dir);
    break;
    case AT_FSTRONG:
    		if (window == 3 && window_timer == 1) {
    			if (!free) spawn_base_dust(x+(48*spr_dir),y, "dattack", -spr_dir)
    			else spawn_base_dust(x,y-16, "djump_small", spr_dir)
			}
    break;
    case AT_USTRONG:
    	if (window == 3 && window_timer == 1) {
    		if (!free) {spawn_base_dust(x+(8*spr_dir),y, "dattack", -spr_dir); spawn_base_dust(x-(0*spr_dir),y, "dattack", spr_dir)}
    		else spawn_base_dust(x,y-16, "djump_small", spr_dir)
    	}
    break;
    case AT_DSTRONG:
    		if (window == 3 && window_timer == 1) {
    			if (!free) spawn_base_dust(x+(32*spr_dir),y, "dash", -spr_dir)
    			else spawn_base_dust(x,y, "djump_small", spr_dir)
			} else if (window == 6 && window_timer == 1) {
				if (!free) spawn_base_dust(x-(32*spr_dir),y, "dash", spr_dir)
    			else spawn_base_dust(x,y-16, "djump_small", spr_dir)
			}
    break;
    case AT_DATTACK:
    	if (window == 1 && window_timer % 2 == 0) spawn_base_dust(x+(0*spr_dir), y, "walk", spr_dir);
    	if (window >= 2 && window < 4 && window_timer % 3 == 0) spawn_base_dust(x+(0*spr_dir), y, "dattack", spr_dir);
    	if (window == 4 && window_timer % 4 == 0 && window_timer < (window_end_time-3)) spawn_base_dust(x+(0*spr_dir), y, "dash", spr_dir);
    break;
    //this is actually nspec
    case AT_DSPECIAL:
    	if (window == 1 && window_timer == 1) dust = (free != 1) ? (spawn_base_dust(x+(10*spr_dir), y, "jump", spr_dir)) : (spawn_base_dust(x, y, "djump_small", spr_dir))
    break;
    //this is dspec
    case AT_NSPECIAL:
    	if (window == 1 && window_timer == 1) {spawn_hit_fx(x, y, HFX_ELL_STEAM_HIT); dust = (free != 1) ? (spawn_base_dust(x+(10*spr_dir), y, "jump", spr_dir)) : (spawn_base_dust(x, y, "djump_small", spr_dir))}
    	if (window == 4 && window_timer == 1) {spawn_hit_fx(x, y, 305); }
    	if (window == 7 && window_timer == 1 ) dust = (free != 1) ? (spawn_base_dust(x+(10*spr_dir), y, "jump", spr_dir)) : (spawn_base_dust(x, y, "djump_small", spr_dir))
    break;
    case AT_TAUNT:
    	//if (window == 2 && window_timer == window_end_time) sound_play(sound_get("smb2_1up"), false, noone, 0.5, 1);
    break;
    
}

switch(attack)
{
	case AT_JAB:
		//jab logic to prevent annoying jank from cancel types
		var cancel_window_1 = 3; //The window where jab1 can be cancelled into jab2 or a tilt
		
		var cancel_frame_1 = 4; //The frame of cancel_window_1, whereafter jab1 can be cancelled into jab2 or a tilt
		
		if (window == 1){
			set_attack_value(AT_JAB, AG_NUM_WINDOWS, 3); //set so that jab1 stays a single attack
		}
		if (window == cancel_window_1 && attack_pressed && window_timer >= cancel_frame_1){ //If during the cancel window of jab1 or jab2...following logic for tilt cancelled jab
			if ((left_down && spr_dir == 1) || (right_down && spr_dir == -1) || (!left_down && !right_down && !up_down && !down_down)){ //if simply trying to do jab2 or jab3 by not holding a direction
				if (window == 3){
					set_attack_value(AT_JAB, AG_NUM_WINDOWS, 7); //set so it actually goes to the next windows
					window = 4; //jab2 starting window
					window_timer = 0;
					clear_button_buffer(PC_ATTACK_PRESSED); //clears the buffer, just in case your jab timings are very tight and quick.
				}
			}
		} 
		if (was_parried && (window == 3) && window_timer >= get_window_value(AT_JAB, window, AG_WINDOW_LENGTH)){ //if jab isn't cancelled or if jab3 isn't performed, as soon as the window ends, was_parried is cleared so that the jab is parry safe
			was_parried = false;
		}
		if (window == 4 && window_timer = window_end_time) sound_play(asset_get("sfx_ice_shieldup"), false, noone, 0.5, 1.2)
		if (window == 7 && window_timer = window_end_time) move_cooldown[AT_JAB] = 20;
	break;
	
    case AT_DTILT:
    {
        if (window ==  1 && window_timer == window_end_time) sound_play(asset_get("sfx_swipe_weak2"), false, noone, 0.95, 1.15);
    }break;
    case AT_UTILT:
    {
        if (window ==  1 && window_timer == window_end_time) {
        	if (bboost_counter == 3) {
        		set_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED, -12);
        	} else set_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED, -7);
        } 
        if (window == 2) {
        	if (just_bounced) set_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED, 0);
        	else set_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED, -7);
        }
    }break;
    
    case AT_DATTACK:
    {
    	if ((window == 1 && window_timer == 1) or (window == 4 && window_timer == window_end_time)) {
    		var poof = spawn_hit_fx(x, y-16, HFX_ELL_STEAM_HIT);
    		poof.depth = 30
    	}
    	if (window == 2 && window_timer == window_end_time) sound_play(asset_get("sfx_swipe_heavy2"), false, noone, 0.7, 1.2)
    }break;
    
    case AT_USTRONG:
    case AT_FSTRONG:
    case AT_DSTRONG:
    {
    	if (window == 1 && window_timer == 1) {
    		was_free = false;
    	}
    	if (window == 2 or (attack == AT_DSTRONG && window == 4)) {
    		if (window_timer == window_end_time) sound_play(sound_get("tambourine_fspec"), false, noone, 1, 0.5 + (random_func(0, 5, true) / 10))
    	}
    	if (free) was_free = true;
    	else if (was_free && !free) bboost_counter = 0;
    	if (free && bboost_counter != 3) {
    			set_state(PS_IDLE_AIR)
    		}
    }break;
    
    case AT_FSPECIAL:
    {
    	if (free) move_cooldown[AT_FSPECIAL] = 99999;
    	else move_cooldown[AT_FSPECIAL] = 90;
    	can_move = false;
    	
    	if (window == 1) {
    		if (window_timer == window_end_time) sound_play(sound_get("tambourine_fspec"), false, noone, 1, 0.7 + (random_func(0, 9, true) / 10))
    	}
    	
    	if (window > 1 && window < 4) {
    		vsp = clamp(vsp, -0.5, 0.5)
    		hsp = clamp(vsp, -2*spr_dir, 2*spr_dir)
    	}
    	if (window == 4) {
    		if ( up_down && special_down) {
    			//print_debug("cancelled")
    			//attack = AT_USPECIAL
    			////window = 0;
    			//window_timer =0;
    		}
    	}
    }
    break;
    
    case AT_USPECIAL:
    {
    	can_fast_fall = false;
		
		//if (window == 1) {
		//	if (left_pressed) spr_dir = -1
		//	else if (right_pressed) spr_dir = 1
		//	if (window_timer == window_end_time) sound_play(asset_get("sfx_bird_sidespecial"), false, noone, 0.4, 1.2)
		//}

		if (window == 1) {if (window_timer == window_end_time) sound_play(asset_get("sfx_bird_sidespecial"))} 

        if (window > 1) can_wall_jump = true;
        
        if (window == 2) {
        	vsp *= 0.95
        	if (window_timer == window_end_time) hsp += 9*spr_dir
        }
        
        if (window == 3) {
        	if ((down_down) && (!up_down)) {
        	    set_state(PS_PRATFALL)
        	    glide_stored = true;
        	}
        	
        	//
        	if (!just_bounced || just_bounced && just_bounced_period <= just_bounced_period_max/2) {
        		vsp += 0.3
        		vsp = clamp(vsp, 1, 2)
        	}
        	hsp = clamp(hsp, -9, 9) 
        	 
        	if (state_timer >= 70) can_shield = true;
        	if (state_timer == 70) white_flash_timer = 12;
        	
    	}
    	
    	if (window == 4) {move_cooldown[AT_USPECIAL] = 20; bboost_counter = 0;}
        
        
    }
    break;
    case AT_DSPECIAL: 
    	if (window == 1 && window_timer == 1 ) {
    		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, -6);
    		if (spotlight == noone && spot_cd_on == false) spotlight = instance_create(x+(spr_dir*16), y, "obj_article1");
    		else set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, -11);
    	} 
    	if (free) move_cooldown[AT_DSPECIAL] = 999
    	//if (window == 2 || window == 3) {
    	//	if (shield_down && spotlight != noone) {
    	//		spotlight = noone
    	//	}
    	//}
    break;
    case AT_NSPECIAL:
    	move_cooldown[AT_NSPECIAL] = 30;
    	if (window ==  1 && window_timer == 1) sound_play(sound_get("nspec_ninji_sound"))
    	if (window ==  7 && window_timer == 1) {sound_play(asset_get("land"))};
    	//
    	if (window ==  1 && window_timer == window_end_time) {
        	if (bboost_counter == 3) {
        		if !free set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, -23);
        		set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, -19);
        	} else {
        		if !free set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, -19);
        		else set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, -15);
        	}
        	pogo_used = false
        } 
    	if (window == 2) {
    		vsp *= 0.9
    		if (window_timer % 5 == 1 && !hitpause) {
    			attack_end()
    			multiflip = create_hitbox(AT_NSPECIAL, 1, x, y);
    		}
    	}
    	
    	if (free) move_cooldown[AT_NSPECIAL] = 999999
    	else if (window > 3 && !free && bboost_counter == 3) bboost_counter = 0;
    	
    	if (window == 5 && window_timer == 1 && !has_hit) {
    		vsp += 12
    	}
    	
    	if (window >= 7) destroy_hitboxes();
    	
    break;
}

//in the spotlight
//cancelling all specials
if (in_spotlight || (bboost_counter == 3 and free)) {
	if ((attack = AT_NSPECIAL || attack = AT_FSPECIAL ||attack = AT_DSPECIAL || (attack = AT_USPECIAL && state_timer > 30) ) && window > 1) {
	if (jump_pressed) {
		can_jump = true;
		//just_bounced = true;
	}
	if (bboost_counter == 3 && !hitpause) can_attack = true;
}

//if boogie boosting
if (attack == AT_UTILT or attack == AT_NSPECIAL or attack == AT_DSPECIAL) {
	if (!free) jumped_off_ground_once = true;
	if (window == 1 && window_timer == window_end_time && bboost_counter == 3) sound_play(jump_sound_bboost)
}

}
if (attack == AT_DSTRONG) { 
	// DStrong exclusively has a lowered fall speed in the air
    can_move = false;
    if (window == 2 or window == 4) {
    	if (window_timer == window_end_time) sound_play(sound_get("tambourine_fspec"), false, noone, 1, 0.5 + (random_func(0, 5, true) / 10))
    }
    if (window > 2 && window < 6) {
    	vsp = clamp(vsp, 0, 5)
    } if  (window == 1) {
    	vsp = clamp(vsp, 0, 5)
    	hsp = clamp(hsp, -3, 3)
    }
    else {
    	vsp = clamp(vsp, 0, 7)
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

