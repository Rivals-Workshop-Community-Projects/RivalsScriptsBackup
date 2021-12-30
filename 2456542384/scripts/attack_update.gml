//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//jab parry immunity on first hit
if(attack == AT_JAB){
    if(window == 1 && window_timer == 1){
        last_hit_stun = false;
    }
    if window == 2 {//clear buffer cause jab cancel is cringe otherwise
        clear_button_buffer(PC_ATTACK_PRESSED);
    }
    if(was_parried && window < 4){
        was_parried = false;
        last_hit_stun = true;
    }
    if(window >= 4 && last_hit_stun){
        was_parried = true;
    }
}

//dattack go aerial
if attack == AT_DATTACK {
    if window == 1 && window_timer == 1 {
        set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
    }
}




//ustrong code
if attack == AT_USTRONG {
    //go upwards on grab window
    if window == 2 && window_timer == (get_window_value(AT_USTRONG,2,AG_WINDOW_LENGTH)) {
        //window = 3;
        //window_timer = 0;
        set_attack_value(AT_USTRONG,AG_CATEGORY,2);
        y -= 105;
    }
    if (window == 3 || window == 4 || window == 5) {
        can_fast_fall = false;
        hsp = 0;
        vsp = 0;
    }
    //grab code
    if instance_exists(grabbed_player_obj) {
        if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
	    else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	    else {
		    //keep the grabbed player in hitstop until the grab is complete.
		    grabbed_player_obj.hitstop = 2;
	    	grabbed_player_obj.hitpause = true;
	    	
	    	//if this is the first frame of a window, store the grabbed player's relative position.
	    	if (window_timer <= 1) {
	    		grabbed_player_relative_x = grabbed_player_obj.x - x;
	    		grabbed_player_relative_y = grabbed_player_obj.y - y;
	    	}
	    	 
	    	//on the first window, pull the opponent into the grab.
	    	if (window == 3) { 
	    		//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
	    		var pull_to_x = 0;
	    		var pull_to_y = -15;
	    		
	    		//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
	    		var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
	    		grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
	    		grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
	    	}
	    	//the above block can be copied for as many windows as necessary.
	    	//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
	    }
    }
}

//dair pull
if attack == AT_DAIR {
    if !has_hit_player && (collision_rectangle(x-15,y-20,x+15,y+75,asset_get("par_block"),false,true) || collision_rectangle(x-15,y-20,x+15,y+75,asset_get("par_jumpthrough"),false,true)) {
        if window == 2 {
            vsp = 0;
            hsp = 0;
            
        }  
        if (window == 3 || window == 4) {
            if window == 3 && window_timer == 1 {
                sound_play(asset_get("sfx_plant_eat"))
            }
            vsp = 11;
        }
    }
    if instance_exists(grabbed_player_obj){
    	hsp = 0;
		vsp = 0;
		
	    if (window >= 5) { grabbed_player_obj = noone; }
		else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
	
		else {
			//keep the grabbed player in hitstop until the grab is complete.
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitpause = true;
			
			//if this is the first frame of a window, store the grabbed player's relative position.
			if (window_timer <= 1) {
				grabbed_player_relative_x = grabbed_player_obj.x - x;
				grabbed_player_relative_y = grabbed_player_obj.y - y;
			}
			 
			//on the first window, pull the opponent into the grab.
			if (window >= 3) {
				//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
				var pull_to_x = 0;
				var pull_to_y = 5;
				
				//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
				grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			}
			//the above block can be copied for as many windows as necessary.
			//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
		}
    }
 can_fast_fall = false 
	
}


//fspecial grab
if (attack == AT_FSPECIAL){
	//vertical boost
	if window == 1 && window_timer == get_window_value(AT_FSPECIAL,1,AG_WINDOW_LENGTH)-2 && free {
		if vsp > -6 {
			vsp = -6;
		}
	}
	//wallgrab
	if !has_hit_player && !hitpause && (
		collision_rectangle(x + 10 * spr_dir,y-5,x + 150 * spr_dir,y-55,asset_get("par_block"),false,true) || 
		collision_rectangle(x + 10 * spr_dir,y-5,x + 150 * spr_dir,y-55,asset_get("par_jumpthrough"),false,true)) 
		&& !was_parried {
			
        if window == 2 {
            vsp = 0;
            hsp = 0;
            if window_timer >= 3 {
            	window = 5
            	window_timer = 0;
            }
        }
    }
    if window == 5{
    	hsp = 10 * spr_dir;
    	vsp = 0;
    	if window_timer > 3 can_jump = true;
    	can_fast_fall = false;
    	if window_timer == 1 {
    		sound_play(asset_get("sfx_blow_weak1"))
			sound_play(asset_get("sfx_plant_eat"))
    	}
    	move_cooldown[AT_FSPECIAL] = 20; //no more wallgrab spamming vineboom
    }
    //grab
    if instance_exists(grabbed_player_obj){
	    if (window >= 5) { grabbed_player_obj = noone; }
		else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
	
		else {
			//keep the grabbed player in hitstop until the grab is complete.
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitpause = true;
			
			//if this is the first frame of a window, store the grabbed player's relative position.
			if (window_timer <= 1) {
				grabbed_player_relative_x = grabbed_player_obj.x - x;
				grabbed_player_relative_y = grabbed_player_obj.y - y;
			}
			 
			//on the first window, pull the opponent into the grab.
			if (window == 4) { 
				//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
				var pull_to_x = 30 * spr_dir;
				var pull_to_y = 0;
				
				//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
				grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			}
			//the above block can be copied for as many windows as necessary.
			//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
		}
    }
}

//uspecial grab
if (attack == AT_USPECIAL){
	if window == 1 && window_timer == get_window_value(AT_USPECIAL,1,AG_WINDOW_LENGTH)-2 && free {
		if vsp > -8 {
			vsp = -8;
		}
	}
    //wallgrab
	if !has_hit_player && !hitpause && (
	//wall detection
	collision_rectangle(x + 10 * spr_dir,y-15,x + 65 * spr_dir,y-165,asset_get("par_block"),false,true) || collision_rectangle(x + 60 * spr_dir,y-55,x + 130 * spr_dir,y-270,asset_get("par_block"),false,true)
	//platform detection
	|| collision_rectangle(x + 10 * spr_dir,y-15,x + 65 * spr_dir,y-165,asset_get("par_jumpthrough"),false,true) || collision_rectangle(x + 60 * spr_dir,y-55,x + 130 * spr_dir,y-270,asset_get("par_jumpthrough"),false,true) )
	&& !was_parried {
        if window == 2 {
            vsp = 0;
            hsp = 0;
            if window_timer >= 3 {
            	window = 6;
            	window_timer = 0;
            }
        }
    }
    //wallgrab window movement
    if window == 6{
    	hsp = 3 * spr_dir;
    	vsp = -12;
    	can_fast_fall = false;
    	if window_timer == 1 {
    		sound_play(asset_get("sfx_blow_weak1"))
			sound_play(asset_get("sfx_plant_eat"))
    	}
    }
    //regular grab window movement
    if window == 4{
    	hsp = 3 * spr_dir;
    	vsp = -8;
    	can_fast_fall = false;
    }
    //grab
    if instance_exists(grabbed_player_obj){
	    if (window >= 6) { grabbed_player_obj = noone; }
		else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
	
		else {
			//keep the grabbed player in hitstop until the grab is complete.
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitpause = true;
			
			//if this is the first frame of a window, store the grabbed player's relative position.
			if (window_timer <= 1) {
				grabbed_player_relative_x = grabbed_player_obj.x - x;
				grabbed_player_relative_y = grabbed_player_obj.y - y;
			}
			 
			//on the first window, pull the opponent into the grab.
			if (window == 4) { 
				//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
				var pull_to_x = 15 * spr_dir;
				var pull_to_y = 10;
				
				//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
				grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			}
			//the above block can be copied for as many windows as necessary.
			//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
		}
    }
}

//nspecial grab
if (attack == AT_NSPECIAL){
	//heals
	if window == 4 && !hitpause {
		/* no more colored outline u stinky
		if window_timer <= get_window_value(AT_NSPECIAL,4,AG_WINDOW_LENGTH)/2 {
			outline_color = [outline_color[0],ease_cubeIn(0,185,window_timer,get_window_value(AT_NSPECIAL,4,AG_WINDOW_LENGTH)/2),outline_color[2]]
			//print_debug(string(outline_color[1]))
		}
		if window_timer > get_window_value(AT_NSPECIAL,4,AG_WINDOW_LENGTH)/2 {
			outline_color = [outline_color[0],ease_cubeIn(185,0,window_timer,get_window_value(AT_NSPECIAL,4,AG_WINDOW_LENGTH)),outline_color[2]]
			//print_debug(string(outline_color[1]))
		}
		init_shader();
		*/
		if window_timer == get_window_value(AT_NSPECIAL,4,AG_WINDOW_LENGTH)/2 {
			take_damage(player,-1,-6); //heals
		}
		if window_timer mod 4 == 0 {
			sound_play(asset_get("mfx_hp_spawn"));
		}
	}
    //grab
    if instance_exists(grabbed_player_obj){
	    if (window >= 5) { grabbed_player_obj = noone; }
		else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
	
		else {
			//keep the grabbed player in hitstop until the grab is complete.
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitpause = true;
			
			//if this is the first frame of a window, store the grabbed player's relative position.
			if (window_timer <= 1) {
				grabbed_player_relative_x = grabbed_player_obj.x - x;
				grabbed_player_relative_y = grabbed_player_obj.y - y;
			}
			 
			//on the first window, pull the opponent into the grab.
			if (window == 4) { 
				//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
				var pull_to_x = 30 * spr_dir;
				var pull_to_y = 0;
				
				//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
				grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			}
			//the above block can be copied for as many windows as necessary.
			//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
		}
    }
}


//dspecials spawning flower
if (attack == AT_DSPECIAL){
    if window == 2 && window_timer == 2 {
    	if !instance_exists(dros_flower) {
    		sound_play(asset_get("sfx_plant_ready"))
    		dros_flower = instance_create(x + 50 * spr_dir, y,"obj_article1");
    	}
    }
}

//new dspecial activating flower
if (attack == AT_DSPECIAL_2){
	if instance_exists(dros_flower) {
    	if window == 2 && window_timer == 1 && dros_flower.should_activate == false {
    		dros_flower.should_activate = true;
    	}	
    }
    
}

//funny taunt code
if attack == AT_TAUNT {
	if window == 2 {
		if should_bite {
			window = 4;
			window_timer = 0;
		}
		if !instance_exists(bite_plat) {
			bite_plat = instance_create(x - 45 * spr_dir, y - 26, "obj_article_platform");
		}
		if window_timer == get_window_value(AT_TAUNT,2,AG_WINDOW_LENGTH)-1 && taunt_down { //loop taunt if held
			window_timer = 0;
		}
	} else {
		if instance_exists(bite_plat) {
			instance_destroy(bite_plat);
		}
	}
}

//windows taunt
if attack == AT_TAUNT_2 {
	if (window == 1 && window_timer > 14) or (window == 2) {
		hud_offset = 80
	}
	if window == 1 && window_timer == 12 {
		sound_play(asset_get("sfx_swipe_weak1"))
	}
	if window == 2 && window_timer == get_window_value(AT_TAUNT_2,2,AG_WINDOW_LENGTH)-1 && taunt_down { //loop taunt if held
		window_timer = 0;
	}
}

//FStrong sounds
if (attack == AT_FSTRONG && window == 2 && window_timer == get_window_value(AT_FSTRONG,2,AG_WINDOW_LENGTH)-1){
	sound_play(asset_get("sfx_crunch"));
}
