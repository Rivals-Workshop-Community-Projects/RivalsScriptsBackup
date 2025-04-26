// attack_update

//toggle grenade
if (attack == AT_NSPECIAL){
	if(window == 2 && window_timer == 5){
		has_grenade = true;
		spawn_dust = true;
	}
	else if(window = 3 && window_timer == 17){
		has_grenade = false;
		spawn_dust = true;
	}
}

//fstrong pulls out a grenade
if(attack == AT_FSTRONG){
    if(window == 2 && window_timer == 1){
    	has_grenade = true;
    }
}

//ustrong_g consumes grenade
if(attack == AT_USTRONG_G){
	if(window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		has_grenade = false;
	}
}

//dstrong_g consumes grenade
if(attack == AT_DSTRONG_G){
	if(window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		has_grenade = false;
	}
	if (window == 2 && window_timer == 3)
	{
		sound_play(asset_get("sfx_swipe_medium1"));
	}
}

//throw grenade to the side
if(attack == AT_FSPECIAL_G){
    throw_speed = THROW_SPEED_SIDE;
    
    if(window == 1 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)){
        has_grenade = false;
    }
    
    if(special_down && window_timer > 10){
        throw_speed = THROW_HOLD_SPEED_SIDE;
    }
	
	set_hitbox_value(AT_FSPECIAL_G, 1, HG_PROJECTILE_VSPEED, throw_speed * -dsin(THROW_ANGLE_SIDE));
    set_hitbox_value(AT_FSPECIAL_G, 1, HG_PROJECTILE_HSPEED, throw_speed * dcos(THROW_ANGLE_SIDE));
}

//throw grenade downwards
if(attack == AT_DSPECIAL_G){
    throw_speed = THROW_SPEED_DOWN;
    
    if(window == 2 && window_timer >= get_hitbox_value(AT_DSPECIAL_G, 1, HG_WINDOW_CREATION_FRAME)){
        has_grenade = false;
    }
    
    //give player some upward momentum and 
    //kill sideways momentum to make grenade jump easier
    if(window_timer == 1){
    	vsp = -8;
    	if(hsp > 5){
    		hsp = 3;
    	}
    	else if(hsp < -5){
    		hsp = -3;
    	}
    }
	
	set_hitbox_value(AT_DSPECIAL_G, 1, HG_PROJECTILE_VSPEED, throw_speed * -dsin(THROW_ANGLE_DOWN));
    set_hitbox_value(AT_DSPECIAL_G, 1, HG_PROJECTILE_HSPEED, throw_speed * dcos(THROW_ANGLE_DOWN));
    
}

//throw grenade upwards
if(attack == AT_USPECIAL_G){
    throw_speed = THROW_SPEED_UP;
    
    if(window == 1 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)){
        has_grenade = false;
    }
    
    if(special_down && window_timer > 10){
        throw_speed = THROW_HOLD_SPEED_UP;
    }

	if (window < 3) {
		vsp = clamp(vsp, -jump_speed - 5, 2); //floatiness for uspecial
	}
	
	set_hitbox_value(AT_USPECIAL_G, 1, HG_PROJECTILE_VSPEED, throw_speed * -dsin(THROW_ANGLE_UP));
    set_hitbox_value(AT_USPECIAL_G, 1, HG_PROJECTILE_HSPEED, throw_speed * dcos(THROW_ANGLE_UP));
    
}


//balloon upwards into parachute glide
if(attack == AT_USPECIAL){
	if(window == 3){
		//set start variables for animation of balloon floating away
		if(window_timer == 1){
			balloon_active = true;
			balloon_x = x;
			balloon_y = y;
			b_spr_dir = spr_dir;
		}

		if(vsp < -7){
			vsp = -7;
		}
	}

	if (window  == 2) {
		if(was_parried){
			set_state(PS_IDLE_AIR)
			state_timer = 0;
			handle_parry = true;
		}
		if (window_timer % 4 == 0 && window_timer < 13 && !hitpause) {
			destroy_hitboxes();
			attack_end();
			create_hitbox(AT_USPECIAL, 1, x, y);
		}
		if (has_hit_player && window_timer < 15) {
			hit_player_obj.x = lerp(hit_player_obj.x,x - (8*spr_dir),.5);
		}
	}

	else if(window == 4){
		
		if (hsp > 4 && right_down)
		{
			hsp = 4;
		}
		
		if (hsp < -4 && left_down)
		{
			hsp = -4;
		}
		can_fast_fall = false;
		can_wall_jump = true;
		if(shield_pressed){
			attack_end();
			if(has_hit_player){
				set_state(PS_IDLE_AIR)
			}
			else{
				set_state(PS_PRATFALL);
			}
		}
	}
}

//set trap
if(attack == AT_DSPECIAL){
	move_cooldown[attack] = 100;
	can_fast_fall = false;
	if(window > 4 && !free){
		set_state(PS_PRATFALL);
	}
	else if(window < 4 && free){
		set_state(PS_IDLE_AIR);
	}
	if((window == 3 || window == 7) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		var trap_set = false;
		//loop through traps...
		for(i = 0; i < num_traps; ++i){
			//either place in free slot...
			if(!instance_exists(traps[i]) && !trap_set){
				traps[i] = instance_create(x, y, "obj_article1");
				traps[i].spr_dir = spr_dir;
				if(window == 7){
					traps[i].aerial = true;
					traps[i].sprite_index = sprite_get("airtrap");
				}
				//set immortal rune if activated
				if(runeB || has_rune("B")){
					traps[i].runeB = true;
				}
				trap_set = true;
			}
			//or place in overflow index and flag oldest trap for breakdown
			else if((i == num_traps - 1) && !trap_set){
				if(!traps[0].blown){
					traps[0].breakdown = true;
				}
				traps[num_traps] = instance_create(x, y, "obj_article1");
				traps[num_traps].spr_dir = spr_dir;
				if(window == 7){
					traps[num_traps].aerial = true;
					traps[num_traps].sprite_index = sprite_get("airtrap");
				}
				//set immortal rune if activated
				if(runeB || has_rune("B")){
					traps[num_traps].runeB = true;
				}	
			}
		}
	}
	if(window == 4 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		set_state(PS_IDLE);
	}
	
	//aerial windows
	if(window == 5){
		//stall in the air
		if(abs(hsp) > 5){
			hsp = 5 * spr_dir;
		}
		if(abs(vsp) > 0){
			vsp -= (abs(vsp)/6) * sign(vsp);
		}
		can_move = false;
	}
	//stall again after balloon boost, but allow horizontal drift
	if(window > 6){
		vsp -= 0.2 * sign(vsp); 
	}
}

//take cover
if(attack == AT_FSPECIAL){
	can_fast_fall = false;
	//if you're parried, leave state
	if (was_parried) {
		set_state(PS_IDLE);
		state_timer = 0;
		handle_parry = true;
	}
	
	//if grouded version leaves ground, leave state
	if(window < 9){
		if(free){
			set_state(PS_IDLE_AIR);
		}
	}

	//take cover, small invince window
	if(window == 1){
		if(runeK || has_rune("K")){
			soft_armor = 10;
		}
		if(window_timer == 14){
			invincible = true;
			invince_time = 8;
		}
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			create_hitbox(AT_FSPECIAL, 3, x, y);
		}
	}
	if(window == 2){
		cover = true;
		//stand up
		if(jump_pressed || shield_pressed){
			window = 4;
			window_timer = 0;
		}
		//toss grenade
		if(special_pressed && cover_grenade_timer >= COVER_GRENADE_COOLDOWN){
			window = 3;
			window_timer = 0;
			cover_grenade_timer = 0;
		}
		//vault over and charge forward
		if(attack_pressed){
			window = 5;
			window_timer = 0;
		}
	}
	
	//toss grenade
	if(window == 3){
		throw_speed = THROW_SPEED_COVER;
    	throw_angle = THROW_ANGLE_COVER_MIN;
    	
    	if(special_down && window_timer > 10){
        	throw_speed = THROW_HOLD_SPEED_COVER;
    	}
    	
    	//throw angle based on stick direction
    	if(!joy_pad_idle){
    		throw_angle = joy_dir;
    		
    		if(spr_dir == -1){
    			throw_angle = 180 - throw_angle;
    		}
    		
    		if(throw_angle > THROW_ANGLE_COVER_MAX && throw_angle <= 165){
    			throw_angle = THROW_ANGLE_COVER_MAX;
    		}
    		else if(throw_angle < THROW_ANGLE_COVER_MIN || throw_angle > 165){
    			throw_angle = THROW_ANGLE_COVER_MIN;
    		}
    	}

		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, throw_speed * -dsin(throw_angle));
    	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, throw_speed * dcos(throw_angle));
		
		if(window_timer == get_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH)){
			window = 2
			window_timer = 0;
		}
	}
	
	//stand up cancel
	if(window == 4){
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			attack = 0;
		}
	}
	
	//vault
	/*===EXTREME JANK WARNING===
	During the vault sequence, Nade is moving at an uneven speed,
	due to being essentially attached to the top of a board that 
	is pivoting on the ground. Because of this, each animation 
	frame of the window must move Nade forward a specific frame
	dependant distance, to make sure the board stays attached to a 
	single point on the ground.*/
	if(window == 5){
		if(window_timer >= 4){
			super_armor = true;
		}
	    if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			x += vault_offset[0] * spr_dir;
			sound_play(asset_get("sfx_swipe_medium1"))
	    }
	}
	
	if(window == 6){
		super_armor = true;
		var anim_frames = get_window_value(attack, window, AG_WINDOW_ANIM_FRAMES);
		var offset_interval = floor(get_window_value(attack, window, AG_WINDOW_LENGTH)
							  /anim_frames);
		var i = floor(window_timer/offset_interval);
		
		if(window_timer % offset_interval == 0 &&
		   window_timer < get_window_value(attack, window, AG_WINDOW_LENGTH) &&
		   !hitpause){
			x += vault_offset[i] * spr_dir;
		}
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			super_armor = false;
			head_box = create_hitbox(AT_FSPECIAL, 6, x, y);
		}
	}
	
	//charge
	if(window == 7){
		if(has_hit_player){
			//can_jump = true;
			//can_shield = true;
		}
		//headbutt hitbox
		if(window_timer % 15 == 0){
			if(!hitpause){
			//	head_box = create_hitbox(AT_FSPECIAL, 5, x, y);
			}
			attack_end();
		}
		//in case just want to stop moving
		if(attack_pressed){
			window = 8;
			window_timer = 0;
		}
		//play gunshot sounds during charge
		if(window_timer == 5 && !hitpause){
			sound_play(sound_get("pistol"));
		}
		else if(window_timer == 14 && !hitpause){
			sound_play(sound_get("pistol"));
		}
		else if(window_timer == 27 && !hitpause){
			sound_play(sound_get("pistol"));
		}
	}
	
	if(window > 7 && instance_exists(head_box)){
		instance_destroy(head_box);
	}
	
	if(window == 8 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		set_state(PS_IDLE);
	}
	if(window > 8 && !free && fspec_hit == false){
		set_state(PS_PRATLAND);
	}
	if(window > 8 && !free && fspec_hit == true){
		set_state(PS_LANDING_LAG);
		fspec_hit = false;
	}
	if (window == 13 && window_timer == 6)
	{
		fspec_hit = false;
	}

	
	
	//aerial charge
	if((window == 9 || window == 10) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		//reset charge variables
		if(window == 9){
			move_cooldown[attack] = 60;
			
			fspec_charge = 0;
			if(special_down){
				sound_play(asset_get("mfx_coin"))
			}
		}
		//keep charging if holding special and not fully charged
		if(special_down && fspec_charge < 3){
			if(window == 10){
				fspec_charge ++;
			}
			window = 10;
			window_timer = 0;
		}
		//otherwise read angle and charge with charge bonus
		else{
			held_angle = joy_dir;
			if(spr_dir == -1){
				held_angle = 180 - held_angle;
				if(held_angle < 0){
					held_angle = 360 + held_angle;
				}
			}
			if(held_angle > fspec_angle_max && held_angle < 180){
				held_angle = fspec_angle_max;
			}
			else if(held_angle < fspec_angle_min && held_angle >= 180){
				held_angle = fspec_angle_min;
			}
			//set values and move to charge window
			move_cooldown[attack] = 60;
			set_window_value(AT_FSPECIAL, 11, AG_WINDOW_VSPEED, (9 + fspec_charge) * -dsin(held_angle) - 1);
			set_window_value(AT_FSPECIAL, 11, AG_WINDOW_HSPEED, (10 + fspec_charge) * dcos(held_angle));
			window = 10;
			window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH);
			sound_play(sound_get("rush"));
		}
	}
	
	if(window == 10 && shield_pressed && has_airdodge == true){
		set_state(PS_IDLE_AIR);
	}
	
	//leap forward
	if(window == 11){
		can_move = false;
		can_wall_jump = true;
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
			sound_play(sound_get("pistol"));
		}
	}
	
	//gunshots
	if (window == 12){
		can_move = false;
		can_wall_jump = true;
		if(window_timer == 8 && !hitpause){
			sound_play(sound_get("bamf"));
		}
		if(window_timer == 16 && !hitpause){
			sound_play(sound_get("bamf"));
		}
	}
	
	if(window == 13 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !has_hit_player){
		set_state(PS_PRATFALL);
	}
}

//nair runes
if(attack == AT_NAIR){
	if(window == 2 && window_timer >= 14 && attack_pressed && nairs > 1){
		destroy_hitboxes();
		window = 1;
		window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH);
		nairs--;
		sound_play(asset_get("sfx_spin"));
		bomb_avail = true;
	}	
	if(window == 2 && special_pressed && (runeO || has_rune("O")) && bomb_avail){
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, 3);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 0);
		create_hitbox(AT_FSPECIAL, 1, round(x), round(y));
		bomb_avail = false;
	}
}

//play pistol sounds for fair
if(attack == AT_FAIR){
	if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		sound_play(sound_get("pistol"));
		//gunshot_fx = ("fair1");
	}
	else if(window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		sound_play(sound_get("bamf"));
		//gunshot_fx = ("fair2");
	}
	else if(window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		sound_play(sound_get("bamf"));
		//gunshot_fx = ("fair3");
	}
}

//shoot and swipe combo
if(attack == AT_FAIR_G){
	if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
			sound_play(sound_get("pistol"));
		}
	if(window == 2){
		if (has_hit_player) {
			can_fast_fall = false;
			vsp = 0;
			hsp = 0;
			set_attack_value(AT_FAIR_G, AG_HAS_LANDING_LAG, 0);
		}
	}
	else if(window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		set_state(PS_IDLE_AIR)
	}
	if(fair_g_hit){
		hsp = 0;
		vsp = 0;
		window = 4;
		window_timer = 0;
		fair_g_hit = false;
	}
}

//play pistol sound for bair
if(attack == AT_BAIR){
	if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		sound_play(sound_get("pistol"));
		//gunshot_fx = "bair";
	}
}

//set off explosion if grenade triggered
if(attack == AT_BAIR_G){
	if(trigger && hitstop == 1){
		trigger = false;
        has_grenade = false;
		var expl = create_hitbox(AT_EXPLOSION, 1, x -60 * spr_dir, y - 47);
		expl.kb_value = bair_g_knockback;
		expl.kb_scale = bair_g_scaling;
		expl.image_xscale += 20/(200)
        if(!runeH){
            expl.player = 0;
        }
		expl.hitstun_factor = 1;
		expl.hit_flipper = 3;
        spawn_hit_fx(x -60 * spr_dir, y - 60, air_explosion);
        sound_play(sound_get("explosion1"));
	}
	if (trigger) {
		can_move = false; //prevents you from drifting during the hitpause of the move
	}
}

if(attack == AT_DAIR){
	if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		sound_play(sound_get("pistol"));
		//gunshot_fx = "dair"
	}
}

//falling attack
if(attack == AT_DAIR_G){
	can_fast_fall = false;
	
	if(bounce && !hitpause){
		destroy_hitboxes();
		window = 4
		window_timer = 0;
		bounce = false;
	}
	
	if(window == 1){
		bounce = false;
	}
	
	if(window == 2){
		//go through platforms if held
		if(attack_down){
			fall_through = true;
		}
		//allow jump cancel after cetain point
		if((state_timer - fall_start) >= DAIR_CAN_CANCEL && free && !was_parried){
			can_jump = true;
			can_shield = true;
		}
		//automatically end after certain point
		if((state_timer - fall_start) >= DAIR_FALL_CANCEL && free && !was_parried){
			set_state(PS_IDLE_AIR);
		}
	}
	
	//allow landing to be canceled into dtilt
	if(window == 3 && window_timer <= 18){
		if(!joy_pad_idle){
			if(((joy_dir <= 359 && joy_dir >= 180) || joy_dir == 0) && attack_pressed){
				if((joy_dir < 270 && joy_dir != 0) && spr_dir == 1){
					spr_dir = -1;
				}
				else if((joy_dir > 270 || joy_dir == 0) && spr_dir == -1){
					spr_dir = 1;
				}
				has_grenade = false;
				attack_end();
				attack = AT_DTILT;
				window = 0
				window_timer = 0;
				hurtboxID.sprite_index = get_attack_value(AT_DTILT, AG_HURTBOX_SPRITE);
				spawn_dust = true;
			}
		}
	}
	if (window == 4) {
		iasa_script();
	}
}

//pistol sound for utilt && reliability
if(attack == AT_UTILT){
	if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		sound_play(sound_get("pistol"));
	}
	if(window < 2 && has_hit_player) {
		hit_player_obj.x = lerp(hit_player_obj.x,x+(6*spr_dir),.15);
		hsp = 0;
	}
}

//command grab for first hit
if(attack == AT_FTILT){
	if (my_grab_id != noone && window < 4){
		with (my_grab_id){
			hurt_img = 1;
			x = ease_sineInOut(x, other.x+52*other.spr_dir, other.grab_time, 10);
            y = ease_sineInOut(y, other.y-28, other.grab_time, 10);
		}
	}
	else{
		my_grab_id = noone;
	}
}

//set off explosion if grenade triggered during ftilt_g
if(attack == AT_FTILT_G){
	if(trigger && !hitpause){
		trigger = false;
        has_grenade = false;
		var expl = create_hitbox(AT_EXPLOSION, 1, x + 125 * spr_dir, y - 34);
		expl.kb_value = ftilt_g_knockback;
		expl.kb_scale = ftilt_g_scaling;
		expl.hit_flipper = 3;
        if(!runeH){
            expl.player = 0;
        }
        spawn_hit_fx(x + 135 * spr_dir, y - 50, air_explosion);
        sound_play(sound_get("explosion1"));
	}
}

//allow movement during kick dance taunt or swap to grenade variant
if(attack == AT_TAUNT){
	if(window == 4 && window_timer == 50){
		sound_play(sound_get("pistolricochet"))	
	}
	if (window == 2){
		if(!taunt){
			window = 3;
			window_timer = 0;
		}
		
		if(!joy_pad_idle){
			if(joy_dir < 270 && joy_dir > 90){
				hsp = -taunt_speed;
			}
			else{
				hsp = taunt_speed;
			}
		}
		if(jump_pressed && !free){
			vsp -= 11;
		}
	}
	
	
	
	
}

//uair momentum only activates on the way up
if (attack == AT_UAIR) {
	//if (window == 1 && window_timer == get_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH) && vsp > 0) {
    //    vsp = -2;
    //}
}

//manually cancel into next jab or tilt due to bug with custom attack indexes
if (attack == AT_JAB_G) {
	if ((window == 3 && window_timer >= get_window_value(AT_JAB_G, 3, AG_WINDOW_CANCEL_FRAME)) || (window == 6 && window_timer >= get_window_value(AT_JAB_G, 6, AG_WINDOW_CANCEL_FRAME))) {
		if (!joy_pad_idle) {
			can_attack = true;
		}
		else if (window == 3 && window_timer > 4 && attack_pressed) {
			window = 4;
			window_timer = 0;
		}
		else if (window == 6 && window_timer > 5 && attack_down) {
			window = 7;
			window_timer = 0;
		}
		else can_attack = false;
	}
//handles parry interactions for nade jab
    if(was_parried && window < 8){
        jab_g_parried = true;
    }
	if (jab_g_parried && ((window == 3 && window_timer == 18 && !attack_down) || (window == 6 && window_timer == 18 && !attack_down))) {
		was_parried = false;
		jab_g_parried = false;
	}
	if (was_parried && window = 9 && jab_g_parried) {
		jab_g_parried = false;
	}
}

//this should run on every single tilt, to handle cancels on parry
if (!free && attack != AT_JAB_G) {
	if (jab_g_parried){
		was_parried = true;
		jab_g_parried = false;
	}
}

//dash attack reliability code, allow dattack to be canceled into utilt_g
if (attack == AT_DATTACK) {	
	if (window == 1 && window_timer == 1) {
		dacut = false;
		gunshot_timer = 0;
	}
	if (has_hit_player && window < 3) {
		if (!hitstop){ gunshot_timer++; }
		if (instance_exists(hit_player_obj)) { hit_player_obj.x = lerp(hit_player_obj.x,x+(80*spr_dir),.07); }
		if (((attack_pressed && up_down) || up_stick_pressed) && has_hit_player) {
			dacut = true;
			window = 3;
			window_timer = 0;
		}
		if (gunshot_timer > 5 && !dacut) {
			window = 4;
			window_timer = 0;
			destroy_hitboxes();
			has_hit_player = false;
			sound_play(sound_get("pistol"));
		}
	}
	//transfer into dacut on window 3 if dacut == true
	if(window == 3){
		if(dacut && window_timer > 4){
			has_grenade = true;
			attack_end();
			window = 1;
			window_timer = 0;
			attack = AT_UTILT_G;
			hurtboxID.sprite_index = sprite_get("utiltg_hurt");
			spawn_dust = true;
		}
	}
	if (window == 4) {
		if (window_timer == 4) {
			window = 3;
			window_timer = 0;
		}
	}
}

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_2 || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//hotfix for window type = 8 and hspeed_type = 2
if ( get_window_value(attack, window, AG_WINDOW_TYPE) == 8 ) {
	if ( window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) ) {
    	window_timer = 0;
	}
	if (!free) {
    	window++;
    	window_timer = 0;
	}
}