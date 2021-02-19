//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
	shader_start();
	set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("chaos_lance"));
	shader_end();
	can_fast_fall = false;
	move_cooldown[AT_NSPECIAL] = 22;
	
	if vsp < 0 {
		vsp += 0.3;
	}
	
	//default nspecial startup
    if (meter_activated == false) {
    	if  (window == 1){
	    	if (window_timer == 1) {
	    		nspcl_loop = 0;
	    	}
	    	//go to charge only if special is held
	        if (!special_down && window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH)){
	        	window = 3;
	        	window_timer = 0;
	        }
    	}
    	if (window == 2) {
    		//loop through charge if special is held
	        if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
	        	nspcl_loop++;
	        }
	    	//fire spear
	    	if (nspcl_loop == 5 || (!special_down && nspcl_loop > 0)) {
	        	window = (nspcl_loop == 5)?5:4; //Window is 5 if fully charged, otherwise is 4
	        	window_timer = 0;
	        }
	        if (!special_down && nspcl_loop == 0) {
	        	window = 3;
	        	window_timer = 0;
	        }
	        
	        //to fire a lvl 2 spear after 20 frames 
	        if (nspcl_loop == 0 && window_timer == 7) {
	        	nspcl_loop++;
	        }
    	}
        
    }
    //chaos lance if in boost mode
    else if (meter_activated == true && (window == 1 && window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH)) || window == 2) {
    	window = 5;
    	window_timer = 0;
    }
	
	if runeL && window == 5 && window_timer == 0 {
		create_hitbox(AT_NSPECIAL, 3, 0, 0);
		create_hitbox(AT_NSPECIAL, 3, room_width, 0);
		create_hitbox(AT_NSPECIAL, 3, floor((room_width) /2), 0);
	}
    //endlag
    if (window == 3 || window == 4) && window_timer == 8 {
    	window = 6;
    	window_timer = 0;
    }
    
    //slow down horizontal momentum
    hsp *= 0.93;
}


//Upspecial
if (attack == AT_USPECIAL){
	rune_uspecial = true;
	can_fast_fall = false;
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
	
	if window == 3 && ((can_edge_cancel && free) || (runeJ && !free))  {
		set_state(PS_IDLE_AIR);
	}
	
	
    if (window == 2 && window_timer < 4) {
    	free = true;
    	
		if (used_djump) {
			djumps = 1;  // remove double jump if they have entered PS_DOUBLE_JUMP since touching the ground
		}
		if window_timer == 1
			if (!meter_activated || used_uspecial) {
				//set_window_value(attack, 3, AG_WINDOW_TYPE, 7);
				can_cancel_uspecial = false;
			} else {
				//set_window_value(attack, 3, AG_WINDOW_TYPE, 0);
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

if (attack == AT_DSPECIAL || attack == AT_DSPECIAL_AIR) {
	move_cooldown[AT_DSPECIAL] = 60;	
	move_cooldown[AT_DSPECIAL_AIR] = 60;
	
	used_dspecial = true;
	can_fast_fall = false;
	can_move = false;
	
	if window == 1 dspecial_attack = false;
	
	if window == 1 && meter_activated && attack == AT_DSPECIAL_AIR {
		can_wall_jump = true;
		set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 0);
	}
	
	if (window == 1 && window_timer > 13) || window == 2
		{
			draw_indicator = false;
			draw_boost = 0;
			invincible = true;
	}
		
	if attack == AT_DSPECIAL_AIR && !free && window != 1 {
		set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial"));
		if window == 2 window_timer = 0;
		window = 3;
		hsp = (meter_activated?8:6) * spr_dir; 
		invincible = false;
		sprite_index = sprite_get("dspecial");
		hurtboxID.sprite_index = sprite_get("dspecial_hurt");
		if window_timer > 2 {set_state(PS_LANDING_LAG); landing_lag_time = meter_activated?6:13;}
	}
	if window == 2 {
		var dfx = attack==AT_DSPECIAL?spawn_hit_fx(x, y, dspecial_fx):spawn_hit_fx(x, y, dspecial_air_fx);
		
		if down_down fall_through = true;
		else fall_through = false;
	}
	
	if (window == 2) || (window == 1 && window_timer >= (runeD?6:13)) {
		if free && attack == AT_DSPECIAL_AIR {
			hurtboxID.image_angle = spr_dir>0?-45:45;
			spr_angle = spr_dir>0?-45:45;
			sprite_change_offset("dspecial_air", 90, 90);
        	sprite_change_offset("dspecial_air_hurt", 90, 90);
		}
	} else {
		hurtboxID.image_angle = 0;
		spr_angle = 0;
		sprite_change_offset("dspecial_air", 60, 95);
        sprite_change_offset("dspecial_air_hurt", 60, 95);
	}
	
	if window == 1 && attack == AT_DSPECIAL {
			if ((right_down && spr_dir > 0) || (left_down && spr_dir < 0)) && !free
			{
				set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 42);
			}
		else if down_down && !free
			{
				set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 18);
			}
		else {
			reset_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED);
		}
	}
	if window == 2 && attack_pressed dspecial_attack = true;
	
	if (meter_activated && attack == AT_DSPECIAL) {
		used_uspecial = true;
		if window == 1	window_timer += 2;
		if window == 3 {
			if window_timer == 1 && free hsp = 0;
			can_jump = true;
			can_attack = true;
			can_strong = true;
			can_ustrong = true;
			can_special = true;
			can_shield = true;
		}
	} else if (!meter_activated && window == 3 && window_timer >= 3 && !free && (attack_pressed || attack_down || dspecial_attack)) {
		set_attack(AT_DATTACK);
		window = 2;
		window_timer = 0;
		hsp = 6 * spr_dir;
		sound_play(asset_get("sfx_clairen_uspecial_swing"));
	}
}

if (attack == AT_FSPECIAL){
	fall_through = true; //go through plats
	used_fspecial = true;
	can_move = false;
	
	if (window == 1) {
		fspecial_loop = 0;
	}
    if (window == 2){
    	if window_timer == 5 {
    	if fspecial_loop == 0 {
    		if (!joy_pad_idle)	dir = joy_dir;
    		else dir = 90 * (1 - spr_dir);
    	}
    	fspecial_loop++;
    	}
    	if window_timer == 1 {
    		clear_button_buffer(PC_SPECIAL_PRESSED);
    		clear_button_buffer(PC_ATTACK_PRESSED);
    	}
    	
    	
    	/*if shield_pressed {
    		destroy_hitboxes();
        	window = 8;
        	window_timer = 0;
    	}*/
        if (/*(!special_down && fspecial_loop > 1) ||*/ fspecial_loop == 3) {
        		//limit angles
        		if dir = 90 dir = spr_dir > 0?15:165;
        		if dir = 270 dir = spr_dir > 0?300:240;
        		else if dir < 90 && dir > 15 dir = 15;
        		else if dir > 270 && dir < 300 dir = 300;
        		else if dir > 90 && dir < 165 dir = 165;
        		else if dir < 270 && dir > 240 dir = 240;
        		
        		if ((dir >= 300 || dir <= 15) && spr_dir < 0 ||
        		dir >= 165 && dir <= 240 && spr_dir > 0)
        		{dir = 90 * (1 - spr_dir); }
        	
        	
        		var spd = meter_activated?24:16;
        		
        		
				set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, lengthdir_x(spd, dir) * spr_dir); 
        		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, lengthdir_y(spd, dir));
        		set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, lengthdir_x(3, dir) * spr_dir); 
        		if dir > 180 && dir <= 359 {
        			set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -34 + lengthdir_y(13, dir));
        		}
        		else set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -34 + lengthdir_y(3, dir));
        		
        		//correct animation
        		if dir <= 15 || dir >= 300 { 
        			spr_angle = dir; 
        			rad = degtorad(dir); 
        			hurtboxID.image_angle = dir;
        		}
        		else
        		{ 
        			spr_angle = dir - 180; 
        			rad = degtorad(180 - dir); 
        			hurtboxID.image_angle = dir - 180;
        		}
        		sprite_change_offset("fspecial", floor(60 - 30 * sin(rad)), floor(60 + 35 * cos(rad)));
        		sprite_change_offset("fspecial_effect", floor(60 - 30 * sin(rad)), floor(60 + 35 * cos(rad)));
        		sprite_change_offset("fspecial_hurt", floor(60 - 30 * sin(rad)), floor(60 + 35 * cos(rad)));
        		
        		window = 3;
            	window_timer = 0;
            	clear_button_buffer(PC_SPECIAL_PRESSED);
            	//destroy_hitboxes();
        }
    }
        if window == 3 {
        	if (window_timer == get_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH)) 
        	|| ((hsp == 0) && window_timer > 2) {
        		destroy_hitboxes();
        		window = 8;
        		window_timer = 0;
        		spr_angle = 0;
        	}
        	can_wall_jump = true;
        	//can_jump = true; //Too much
        }
        if (window > 3) { 
        	spr_angle = 0; 
        	sprite_change_offset("fspecial", 60, 95); 
        	sprite_change_offset("fspecial_hurt", 60, 95); 
        	hurtboxID.image_angle = 0;
        	
        }
        	
        if (window == 8) can_wall_jump = true;
        
        
        if meter_activated {
        	for (var i = 1; i < 5; i++) {
        		set_hitbox_value(AT_FSPECIAL, i, HG_DAMAGE, 3);
        	}
        	set_hitbox_value(attack, 5, HG_DAMAGE, 4)
        	set_hitbox_value(attack, 5, HG_BASE_KNOCKBACK, 8.75);
			set_hitbox_value(attack, 5, HG_KNOCKBACK_SCALING, 0.7);
			set_hitbox_value(attack, 5, HG_HITPAUSE_SCALING, 1);
        } else {
        	for (var i = 1; i < 6; i++) {
        		reset_hitbox_value(AT_FSPECIAL, i, HG_DAMAGE);
        	}
        }
        

    can_fast_fall = false;
}

if (attack == AT_FSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
    if (grabbedid != noone) {
    	switch (window) {
			case 3: case 4: case 5: case 6: case 7:
		grabbedid.ungrab = 0;
        grabbedid.x = ease_linear(grabbedid.x, x + 35 * spr_dir, 1, 3); //SET GRABBED PLAYER X TO BE RELATIVE TO PLAYER X
        grabbedid.y = ease_linear(grabbedid.y, y, 1, 3);; //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y
        grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
        if window != 7 grabbedid.hitstop = 10;
        grabbedid.hitpause = true;
        
        if window == 7 && my_hitboxID.hbox_num == 5 {
        	grabbedid.state = PS_HITSTUN;
			grabbedid.ungrab = 0;
			grabbedid = noone;
        }
        break;
		}
	}
}




if (attack == AT_FTILT){
	if window == 1 && window_timer == 1 ftilt_x = 0;
	if window == 2 && window_timer == 1 {
		if  (!attack_down && !right_stick_down && !left_stick_down) || ftilt_x == 10 { 
			window = 3;
			window_timer = 0;
		}
		else {
			ftilt_x += 1;
			draw_ftilt = 1;
			if (state_timer + 1) % 3 == 0 ftilt_index++;
		}
	}
	
	if window == 3 && window_timer == 1 {
		destination_angle = point_direction(x + spr_dir * floor(36 + ftilt_x * 25), y - 40, x, y - 540);
		if spr_dir == -1 destination_angle = 180 - destination_angle;
		set_hitbox_value(attack, 1, HG_HITBOX_X, floor(36 + ftilt_x * 25));
		set_hitbox_value(AT_FTILT, 1, HG_ANGLE, destination_angle);
		draw_ftilt = 0;
		ftilt_index = 0;
		move_cooldown[AT_FTILT] = 20;
	}
	else if window == 3 && window_timer == 8 && !(runeN && meter_activated) spawn_hit_fx(x + spr_dir * floor(36 + ftilt_x * 25), y - 40, meter_activated?ftilt_boosted_fx:ftilt_fx);
}


if (attack == AT_DATTACK) {
	if !has_hit can_jump_dattack = false;
	if !can_jump_dattack && has_hit && window == 2 && my_hitboxID.damage == get_hitbox_value(attack, 2, HG_DAMAGE) 
		can_jump_dattack = true;
	if can_jump_dattack can_jump = true;
}
		
		
if attack == AT_DAIR {
	can_fast_fall = false;
	can_wall_jump = true;
	
	if down_down fall_through = true;
	
	if state_timer > 36 { 
		can_shield = true;
		can_special = true;
		can_jump = true;
	}
	
	if (has_hit) {
		set_state(PS_IDLE_AIR);
		old_vsp = -7;
		move_cooldown[attack] = 40;
		
		if (right_down && spr_dir > 0)|| (left_down && spr_dir < 0) old_hsp = 7 * spr_dir;
		else if (left_down && spr_dir > 0)|| (right_down && spr_dir < 0) old_hsp = -3 * spr_dir;
		else old_hsp = 0;
	}
}

if (attack == AT_DSTRONG && window == 3) draw_indicator = false;

if attack == AT_FSTRONG && window == 2 && window_timer > 4 && window_timer < 10 {
	if abs(hsp) < 4
		hsp = 4 * spr_dir;
}
	

//meter stuff

if (window == 1 && (attack != AT_DSPECIAL || window_timer < 8)) || (window == 2 && (attack == AT_FSPECIAL || attack == AT_NSPECIAL || attack == AT_FTILT)){
	switch (attack) {
		//strong boost
		case AT_FSTRONG: case AT_USTRONG: case AT_DSTRONG:
			if meter_current >= drain2 && !meter_activated {
				disp_trigger = true;
				disp_special = true;
				if (special_pressed || shield_pressed) {
					meter_activated = true;
					meter_current -= drain2;
					boost_timer = get_gameplay_time();
					draw_boost = 1;
					sound_play(sound_get("boost_sfx"));
				}
			}
		break;
		//special boost
		case AT_NSPECIAL: case AT_FSPECIAL: case AT_USPECIAL: case AT_DSPECIAL: case AT_DSPECIAL_AIR:
			if (meter_current >= drain && !meter_activated) && !(attack == AT_USPECIAL && used_uspecial) {
				disp_trigger = true;
				disp_attack = true;
				if (attack_pressed || shield_pressed) {
					meter_activated = true;
					meter_current -= drain;
					clear_button_buffer(PC_SPECIAL_PRESSED);
					clear_button_buffer(PC_ATTACK_PRESSED);
					boost_timer = get_gameplay_time();
					draw_boost = 1;
					sound_play(sound_get("boost_sfx"));
				}
			}
		break;
		//attack boost
		case AT_NAIR: case AT_FAIR: case AT_FTILT:
			if meter_current >= drain && !meter_activated {
				disp_trigger = true;
				disp_special = true;
				if (special_pressed || shield_pressed) {
					meter_activated = true;
					meter_current -= drain;
					boost_timer = get_gameplay_time();
					draw_boost = 1;
					sound_play(sound_get("boost_sfx"));
					if attack == AT_FTILT && window == 2 { window = 3; window_timer = 0; }
				}
			}
		break;
		default:
		if !runeG && attack != AT_NSPECIAL_2 meter_activated = false;
	}
}
//meter strongs
if (meter_activated) {
	switch (attack) {
		case AT_FSTRONG:
			set_hitbox_value(attack, 1, HG_WIDTH, 64);
			set_hitbox_value(attack, 1, HG_HEIGHT, 64);
			set_hitbox_value(attack, 1, HG_LIFETIME, 10);
			set_hitbox_value(attack, 1, HG_DAMAGE, 19);
			set_hitbox_value(attack, 1, HG_BASE_KNOCKBACK, 9);
			set_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING, 1.1);
			set_window_value(attack, 2, AG_WINDOW_LENGTH, 10);
		break;
		case AT_USTRONG:
			set_hitbox_value(attack, 1, HG_DAMAGE, 16);
			set_hitbox_value(attack, 1, HG_BASE_KNOCKBACK, 9);
			set_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING, 1.1);
			set_window_value(attack, 4, AG_WINDOW_TYPE, 0);
		break;
		case AT_DSTRONG:
			set_hitbox_value(attack, 1, HG_DAMAGE, 5);
			set_hitbox_value(attack, 1, HG_BASE_KNOCKBACK, 5);
			set_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING, 1);
			set_hitbox_value(attack, 2, HG_DAMAGE, 10);
			set_hitbox_value(attack, 2, HG_BASE_KNOCKBACK, 8.44);
			set_hitbox_value(attack, 2, HG_KNOCKBACK_SCALING, 1.05);
		break;
		case AT_NAIR:
			//set_hitbox_value(attack, 1, HG_DAMAGE, 3);
			set_hitbox_value(attack, 2, HG_DAMAGE, 2);
			//set_hitbox_value(attack, 5, HG_DAMAGE, 4);
			set_hitbox_value(attack, 1, HG_SDI_MULTIPLIER, 1.6);
			set_hitbox_value(attack, 2, HG_SDI_MULTIPLIER, 1.6);
			set_hitbox_value(attack, 5, HG_SDI_MULTIPLIER, 1.6);
			set_hitbox_value(attack, 5, HG_VISUAL_EFFECT, 1);
			set_hitbox_value(attack, 1, HG_HITSTUN_MULTIPLIER, 1);
			set_hitbox_value(attack, 2, HG_HITSTUN_MULTIPLIER, 1);
			set_hitbox_value(attack, 5, HG_HITSTUN_MULTIPLIER, 1);
			set_hitbox_value(attack, 1, HG_EXTRA_HITPAUSE, 2);
			set_hitbox_value(attack, 2, HG_EXTRA_HITPAUSE, 2);
		break;
		case AT_FAIR:
			set_hitbox_value(attack, 1, HG_DAMAGE, 8);
			set_hitbox_value(attack, 1, HG_ANGLE, 40);
			set_hitbox_value(attack, 1, HG_BASE_KNOCKBACK, 7.5);
			set_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING, .7);
			set_hitbox_value(attack, 1, HG_BASE_HITPAUSE, 10);
			set_hitbox_value(attack, 1, HG_HITPAUSE_SCALING, 1);
			set_hitbox_value(attack, 1, HG_VISUAL_EFFECT, 1);
		break;
		case AT_FTILT:
			set_hitbox_value(attack, 1, HG_DAMAGE, 14);
			if runeN {
				set_hitbox_value(attack, 1, HG_PROJECTILE_SPRITE, sprite_get("beeg_orb"));
				set_hitbox_value(attack, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
				set_hitbox_value(attack, 1, HG_PROJECTILE_HSPEED, floor(ftilt_x * 0.5));
				set_hitbox_value(attack, 1, HG_HITBOX_X, 36);
				set_hitbox_value(attack, 1, HG_PROJECTILE_MASK, sprite_get("beeg_orb"));
				set_hitbox_value(attack, 1, HG_ANGLE, 60);
				//set_window_value(attack, 3, AG_WINDOW_SFX, sound_get("chaos_magic"));
			}
				set_hitbox_value(attack, 1, HG_LIFETIME, runeN?60:25);
				set_hitbox_value(attack, 1, HG_BASE_HITPAUSE, 12);
				set_hitbox_value(attack, 1, HG_HITPAUSE_SCALING, 1);
				set_hitbox_value(attack, 1, HG_BASE_KNOCKBACK, 13.5);
				set_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING, 0.25);
				set_hitbox_value(attack, 1, HG_VISUAL_EFFECT, 1);
		break;
	}
} else if (attack == AT_FSTRONG  || attack == AT_USTRONG  || attack == AT_DSTRONG
		|| attack == AT_USPECIAL || attack == AT_DSPECIAL || attack == AT_DSPECIAL_AIR 
		|| attack == AT_NAIR	 || attack == AT_FAIR
		|| attack == AT_FSPECIAL || attack == AT_NSPECIAL || attack == AT_FTILT) {
	reset_hitbox_value(attack, 1, HG_WIDTH);
	reset_hitbox_value(attack, 1, HG_HEIGHT);
	reset_hitbox_value(attack, 1, HG_DAMAGE);
	reset_hitbox_value(attack, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(attack, 2, HG_DAMAGE);
	reset_hitbox_value(attack, 2, HG_BASE_KNOCKBACK);
	reset_hitbox_value(attack, 2, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(attack, 1, HG_LIFETIME);
	reset_window_value(attack, 2, AG_WINDOW_LENGTH);
	reset_window_value(attack, 4, AG_WINDOW_TYPE);
	reset_hitbox_value(attack, 1, HG_DAMAGE);
	reset_hitbox_value(attack, 2, HG_DAMAGE);
	reset_hitbox_value(attack, 5, HG_DAMAGE);
	reset_hitbox_value(attack, 1, HG_SDI_MULTIPLIER);
	reset_hitbox_value(attack, 2, HG_SDI_MULTIPLIER);
	reset_hitbox_value(attack, 5, HG_SDI_MULTIPLIER);
	reset_hitbox_value(attack, 1, HG_BASE_HITPAUSE);
	reset_hitbox_value(attack, 1, HG_HITPAUSE_SCALING);
	reset_hitbox_value(attack, 5, HG_BASE_KNOCKBACK);
	reset_hitbox_value(attack, 5, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(attack, 5, HG_HITPAUSE_SCALING);
	if (attack != AT_FTILT) reset_hitbox_value(attack, 1, HG_ANGLE);
	else {
		reset_hitbox_value(attack, 1, HG_PROJECTILE_SPRITE);
		reset_hitbox_value(attack, 1, HG_PROJECTILE_ANIM_SPEED);
		reset_hitbox_value(attack, 1, HG_LIFETIME);
		
		reset_hitbox_value(attack, 1, HG_PROJECTILE_SPRITE);
		reset_hitbox_value(attack, 1, HG_PROJECTILE_ANIM_SPEED);
		reset_hitbox_value(attack, 1, HG_PROJECTILE_HSPEED);
		reset_hitbox_value(attack, 1, HG_PROJECTILE_MASK);
	}
	reset_hitbox_value(attack, 1, HG_HITSTUN_MULTIPLIER);
	reset_hitbox_value(attack, 2, HG_HITSTUN_MULTIPLIER);
	reset_hitbox_value(attack, 5, HG_HITSTUN_MULTIPLIER);
	reset_hitbox_value(attack, 1, HG_VISUAL_EFFECT);
	reset_hitbox_value(attack, 5, HG_VISUAL_EFFECT);
	reset_hitbox_value(attack, 1, HG_EXTRA_HITPAUSE);
	reset_hitbox_value(attack, 2, HG_EXTRA_HITPAUSE);
	
}

	
if runeB {
	
	set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, meter_activated?5:8);
	//set_hitbox_value(AT_NAIR, 1, HG_EXTRA_HITPAUSE, 2);
	//set_hitbox_value(AT_NAIR, 2, HG_EXTRA_HITPAUSE, 2);
	set_hitbox_value(AT_NAIR, 1, HG_HITSTUN_MULTIPLIER, 1.2);
	set_hitbox_value(AT_NAIR, 2, HG_HITSTUN_MULTIPLIER, 1.2);
	set_hitbox_value(AT_NAIR, 5, HG_HITSTUN_MULTIPLIER, 1.2);
	set_hitbox_value(AT_NAIR, 1, HG_SDI_MULTIPLIER, 0.5);
	set_hitbox_value(AT_NAIR, 2, HG_SDI_MULTIPLIER, 0.5);
    set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, 0.9);
    set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 4);
    
	if attack == AT_NAIR {
	if window == 1 did_nair = false;
	if window == 2 && window_timer == 15 && !did_nair {
		did_nair = true;
		window_timer = 11;
	}
	}
}

if runeF {
	set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, meter_activated?6:5);
	set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, meter_activated?22:10);
}

if runeE {
	for (var i = 1; i < 6; i++) {
    		set_hitbox_value(AT_FSPECIAL, i, HG_DAMAGE, meter_activated?4:3);
    	}
    	set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 8.75 * (meter_activated?1.25:1));
		set_hitbox_value(AT_FSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.7 * (meter_activated?1.25:1));
		set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 12 * (meter_activated?1.25:1));
		set_hitbox_value(AT_FSPECIAL, 5, HG_HITPAUSE_SCALING, 1 * (meter_activated?1.25:1));
		set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 40);
} 
else reset_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE);

if runeG && attack == AT_EXTRA_1 {
	invincible = true;
	meter_current = meter_max;
	if window = 2 {
		rune_meter = true;
		meter_activated = true;
		if window_timer == 1 {
			boost_timer = get_gameplay_time();
			draw_boost = 1;
			sound_play(sound_get("boost_sfx"));
		}
	}
}

if runeM && attack == AT_NSPECIAL_2 {
	can_move = false;
	soft_armor = 10;
	if window == 1 && window_timer == 1 {
		blast_charge = 0;
		sound_play(sound_get("blast_charge"));
	}
	else if window == 2 && window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)	
		if blast_charge++ == 8 { 
			window = 3; window_timer = 0; 
			for (var i = 1; i < 7; i++) set_hitbox_value(AT_NSPECIAL_2, i, HG_HITBOX_X, -8 * spr_dir);
			sound_play(sound_get("blast_fire"));
		}
		else if blast_charge == 1 || blast_charge == 6 spawn_hit_fx(x, y, charge_fx);
}

if runeM && attack == AT_DSPECIAL_2 && window_timer == 1 used_za_wurdo = true;