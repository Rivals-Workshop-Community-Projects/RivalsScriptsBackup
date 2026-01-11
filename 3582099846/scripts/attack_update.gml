//Tilt Attacks




//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_FSPECIAL_2){
    trigger_b_reverse();
}

if attack = AT_DAIR{
	if (window == 1)
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(asset_get("sfx_ice_back_air"));
		}
}

if attack = AT_DSTRONG{
	if (window == 3){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_TYPE)){
			sound_play(sound_get("sfx_dstrong_boat"));
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(asset_get("sfx_blow_medium3"));
		}
	}
}

if attack = AT_DATTACK {
	if (window == 1)
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(sound_get("sfx_dattack_swoosh1"));
		}
}

//BE THE MARBLE

if attack == AT_USTRONG{
    
    //can_move = false;
    
    if window == 3 {
        
        if (strong_down || up_strong_down) && window_timer >= 8{
            set_window_value(attack,window,AG_WINDOW_LENGTH,window_timer+1);
        }
        else{
            set_window_value(attack,window,AG_WINDOW_LENGTH,8);
        }
        
    }
    
    if window == 4 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) * (has_hit ? 1 : 1.5){
        y -= 32;
        sound_play(asset_get("mfx_star"), false, noone, 2);
    }
    
    if window == 5 && window_timer >= 9 * (has_hit ? 1 : 1.5) {
        iasa_script();
    }
    
}


//Back Air Bounce

var hit_wall = place_meeting(x-spr_dir,y,asset_get("par_block"));
var stick_v = down_down - up_down;

if attack == AT_BAIR{
	
	if window == 1 reset_window_value(AT_BAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION);
    
    //Window 2 - Boosting
    if window == 2{
    	
    	set_window_value(AT_BAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, max(0, (abs(hsp) - 7)/15));
        
        set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED, 2*stick_v);
        
        can_fast_fall = false;
        can_move = false;
        
        //Player and Wall Bounce
        if (has_hit || hit_wall){
            
            //Hitpause on Wall Bounce
            if hit_wall{
                hitpause = true;
                hitstop = 4;
                sound_play(get_hitbox_value( AT_BAIR, 1, HG_HIT_SFX ));
                spawn_hit_fx(x,y-35,get_hitbox_value( AT_BAIR, 1, HG_VISUAL_EFFECT ));
            }
            
            //Go to Window 4
            destroy_hitboxes();
            window = 4;
            window_timer = 0;
            
            old_hsp = spr_dir*9;
            old_vsp = -6;
            hsp = old_hsp;
            vsp = old_vsp;
            //old_hsp = -fair_hsp/2;//
        }
        
    }
    
    //Window 4 - Bouncing
    if window == 4{
        move_cooldown[AT_BAIR] = 2;
        if window_timer >= 8 {
        	can_attack = true;
        	can_special = true;
        }
    }
    
}

//NSpecial Charge
if attack == AT_NSPECIAL
{
    if window >= 2 && window < 4 && !special_down
    {
        window = 4;
        window_timer = 1;
    }
    switch(window)
    {
        case 1:
            if (window_timer == 15) sound_play(asset_get("sfx_forsburn_consume"), false, noone, .3, .4);
            nspecial_level = 1;
        break;
        case 2:
            nspecial_level = 1;
        break;
        
        case 3:
            nspecial_level = 2;
            if (window_timer == 30 && !instance_exists(giraffe))
            {
                window = 6;
                window_timer = 1;
            }
        break;
        
        case 4:
            if (window_timer == 1)
            {
                sound_stop(asset_get("sfx_forsburn_consume"));
                sound_play(asset_get("sfx_forsburn_spew_end"), false, noone, .5, 1.7);
                create_hitbox(AT_NSPECIAL, nspecial_level, x + 64 * spr_dir, y - 32);
            }
        break;
        case 6:
            if (window_timer == 2)
            {
                sound_play(asset_get("sfx_bubblespray"), false, noone, 1.2, .8);
                sound_play(asset_get("sfx_forsburn_spew2"), false, noone, 1, 1.2);
            }
            
            if (window_timer == 28) giraffe = instance_create(x + 120 * spr_dir, y - 90, "obj_article1");
        break;
    }
}

//FSpecial Shenanigans

if attack == AT_FSPECIAL{
	
	move_cooldown[attack] = 30;
	
	// if (window == 1)
	// 	if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
	// 		sound_play(sound_get("sfx_karate_kah"));
	// 	}	
		
	// if (window == 4)
	// 	if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
	// 		sound_play(sound_get("sfx_karate_rah"));
	// 	}
	
	// if (window == 10)
		// if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		// 	sound_play(sound_get("sfx_karate_tay"));
		// }		
    
    if window >= 8 && window <= 11 {
        
        can_move = false;
        
        if(window == 8 || window == 9) {
        	can_wall_jump = true;
        	if(!free && !hitpause){
	        	set_state(PS_LANDING_LAG);
	        	landing_lag_time = 10;
        	}
        }
        
        /*
        set_attack_value(AT_FSPECIAL, AG_CATEGORY, 1);
        set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 1);
        */
    }
    if window == 12{
    	can_move = true;
        if window_timer >8.5{
            iasa_script();
            
        }
    
    }
}

//FSpecial Pop-up

if attack == AT_FSPECIAL
&& has_hit == true {
	
	if(!fspec_has_hit){
		fspec_has_hit = true;
		switch(fspecial_type){
			case 1:
			sound_play(sound_get("sfx_karate_kah"));
			break;
			case 2:
			sound_play(sound_get("sfx_karate_rah"));
			break;
			case 3:
			sound_play(sound_get("sfx_karate_tay"));
			break;
		}
	}
	
	if(window == 2 && hitpause && free) old_vsp = min(-6, old_vsp);
	if(window == 5 && hitpause && free) old_vsp = min(-6, old_vsp);
    
    if window == 8 ||
    window == 9 {
        old_hsp = 0;
        old_vsp = -10;
        window_timer = 0;
        window = 11;
        // set_attack_value(AT_FSPECIAL,AG_NUM_WINDOWS,12);
        // sound_play(sound_get("sfx_karate_tay"));
        destroy_hitboxes();
    }
    
}

if(attack == AT_FSPECIAL_2){
	move_cooldown[AT_FSPECIAL] = 60;
	can_fast_fall = false;
	can_wall_jump = (window == 2 || window == 3 || window == 10);
	can_move = (window != 2);
	if(window == 1 || window == 4 && window_timer > 0 || window == 6 || window == 8) {
		fspec_has_hit = false;
		has_hit = false;
	}
	if(!fspec_has_hit && has_hit){
		fspec_has_hit = true;
		switch(window){
			case 2: case 7:
			sound_play(sound_get("sfx_karate_kah"));
			break;
			case 5: case 9:
			sound_play(sound_get("sfx_karate_rah"));
			break;
		}
	}
	if(window == 2){
		if(has_hit){
			window = 4;
			window_timer = 0;
			old_vsp = -4;
			old_hsp = 4 * spr_dir;
			vsp = old_vsp;
			hsp = old_hsp;
			destroy_hitboxes();
		}
	} 
}

//USpecial Movement
if attack == AT_USPECIAL
{
	if(window == 2) vsp *= .8;
    if window == 3 && window_timer == 24    //This just makes the spatula speed random teehee
    {
        var spatula_hsp = random_func_2((x + y) % player, 3, false) + 1;
        set_hitbox_value(AT_USPECIAL, 8, HG_PROJECTILE_HSPEED, spatula_hsp); 
    }
    can_fast_fall = false;
    if window >= 5
    {
        hsp = clamp(hsp, -2, 2);
        if (window_timer >= 14 || window > 5) can_wall_jump = true;
    }
}

	//DSpecial (Virgil was here)
if attack == AT_DSPECIAL{
	
	if(window == 4 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)/2 || window == 5 || window == 6){
		can_move = false
		can_fast_fall = false;
		hsp = 0;
		vsp = 0;
	} else {
		can_move = true;
		can_fast_fall = true;
	}
    
    //Tongue Charge
    if window == 2{
    	if state_timer = 9 {
            sound_play(sfx_hold)
    	}
    	//Add to tongue charge
    	tongue_charge++;
    	
    	//Set Tongue Length
    	tongue_full_length = round(ease_linear(min_tongue_length, max_tongue_length, tongue_charge, tongue_charge_max));
    	
    	//Cancel
    	if tongue_charge >= tongue_charge_max
    	|| shield_pressed{
    		window = 3;
    		window_timer = 0;
    		print("tongue cancelled");
    	}
    	if !special_down {
    		window = 4;
    		window_timer = 0;
    	}
    }
    
    //Tongue Charge Cancel
    if window == 3{
    	set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
    	
    }
    
    //Tongue Out
    if window == 5{
    	
    	//Set tongue sprite/length
        tongue_subimg = 0;
        tongue_length = ease_quadOut(1, tongue_full_length, window_timer, get_window_value(attack, window, AG_WINDOW_LENGTH));
        
        //Remove charge
        tongue_charge = 0;
        
        //Spawn Tongue Hitbox
		if (tongue_hitbox == noone
		|| !instance_exists(tongue_hitbox)){
			tongue_hitbox = create_hitbox(AT_DSPECIAL, 1, 0, 0);	
		}
		sound_stop(sfx_hold){
    	}
		
    }
    
    //Tongue In
    if window == 6{
    	
        tongue_subimg = 1;
        tongue_length = ease_quadIn(tongue_full_length, 1, window_timer, get_window_value(attack, window, AG_WINDOW_LENGTH));
        
    }
    
    //Store tongue's position (for reeling opponent in)
	old_tongue_length = tongue_length;
	
	//Change Tongue Hitbox Position
	if tongue_hitbox != noone
	&& instance_exists(tongue_hitbox){
		tongue_hitbox.x_pos = (52+tongue_length)*spr_dir;
		tongue_hitbox.y_pos = -26;
	}
    
}

	//Grab Player
if (attack == AT_DSPECIAL_2){
	
	vsp = 0;
	hsp = 0;
	can_move = false;
	
	var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
	
	if window == 1{
		tongue_subimg = ease_linear(2,3,window_timer,window_length);
	}
	
	if window == 2{
		tongue_subimg = 4;
		tongue_length = ease_quadIn(round(old_tongue_length), 1, window_timer, window_length);
	}
	
	//Command Grab Stuff
	if instance_exists(grabbed_player_obj){
	
		//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
		if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) {
			// grabbed_player_obj.visible = true;
			grabbed_player_obj = noone;
		}
		else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) {
			// grabbed_player_obj.visible = true;
			grabbed_player_obj = noone;
		}
	
		else {
		    //keep the grabbed player in hitstop until the grab is complete.
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitpause = true;
			
			//Set grabbed player's position at tongue
			if window <= 2{
				grabbed_player_obj.x = x+(64+tongue_length)*spr_dir;
			}
			//Set grabbed player in front when chomping
			else if window == 3{
				grabbed_player_obj.x = x+(32*spr_dir);
			}
			else{
				grabbed_player_obj.x = x-(20*spr_dir);
			}
			
			//Set player height
			if window >= 4{
				grabbed_player_obj.y = y-36;
			}
			else{
				grabbed_player_obj.y = y;
			}
			
			//Toggle Visibility
			if window > 2 || window == 2 && window_timer >= 12 grabbed_player_obj.grabbed_invisible = true;
		}
	}
	
}

	//Bubble Stuff
if (attack == AT_DSPECIAL_AIR){
	
	var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
	
	//Tongue Length Stuff
	if window == 1{
		tongue_subimg = ease_linear(2,3,window_timer,window_length);
	}
	
	if window == 2{
		tongue_subimg = 4;
		tongue_length = ease_quadIn(round(old_tongue_length), 1, window_timer, window_length);
	}
	
	//Bubble Chew Loop
	if window == 4{
		if shield_pressed{
			window = 5;
			window_timer = 0;
		}
		if special_pressed{
			window = 6;
			window_timer = 0;
		}
	}
	
	//Bubble Store
	if window == 5{
		set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 5);
	}
	
	//Bubble Shoot
	if window == 6{
		if window_timer == 12{
			var dspec_proj_offx;
			var dspec_proj_offy;
			
			switch(dspec_proj_type){
				case 1:
					dspec_proj_offx = 36;
					dspec_proj_offy = -28;
				break;
				case 2:
					dspec_proj_offx = 96;
					dspec_proj_offy = -30;
				break;
			}
			
			print("Projectile " + string(dspec_proj_type));
			var dspec_proj = create_hitbox(AT_DSPECIAL_AIR, dspec_proj_type, x+(dspec_proj_offx*spr_dir), y+dspec_proj_offy);
			dspec_proj_type = 0;
		}
	}
	
}