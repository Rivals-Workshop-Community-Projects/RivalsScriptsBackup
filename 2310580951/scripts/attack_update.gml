// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//UStrong - Backwards Somersault
if attack == AT_USTRONG {
	can_fast_fall = false;
	if window <= 4 {
		set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
	} else {
		set_attack_value(AT_USTRONG, AG_CATEGORY, 1);
	}
	if window == 4 && !hitpause {
		if window_timer == 1 {	
			sound_play(sound_get("jump"));
		}
		if window_timer == 3 {
			hsp = -3*spr_dir;
		}
		if window_timer == 6 {	
			sound_play(sound_get("flip"));
		}
	}
	if window == 5 {
		if (window_timer == 12 && has_hit || window_timer == 18 && !has_hit) {
		sound_play(sound_get("flip"));
		}
	}
}

//UAir - Side Somersault
if attack == AT_UAIR {

	if window == 1 && window_timer == 7 {
		if spr_dir == 1 && left_down {
			hsp = -2;
		}
		if spr_dir == -1 && right_down {
			hsp = 2;
		}
	}

	
	if window == 3 && (window_timer == 2 && has_hit || !has_hit && window_timer == 3) {
		spr_dir *= -1;
	}
}

//Jab
if attack == AT_JAB {
	if special_pressed && (window == 3 && window_timer > 1 || window == 6 && window_timer > 1) {
		attack_end();
		set_attack(AT_NSPECIAL);	
	}
}

//NAir
if attack == AT_NAIR {
	if window == 1 && window_timer == 3 && kick == 0 {
		hsp = clamp(hsp, -(air_max_speed), air_max_speed);
		vsp = -4;
		kick = 1;
	}
	if window == 5 && window_timer == 9 {
		move_cooldown[AT_NAIR] = 10;
	}	
}

//FSpecial (Ground) - Long Jump
if attack == AT_FSPECIAL {
	can_fast_fall = false;
	can_wall_jump = true;

	if (spr_dir == 1) {
		hsp = clamp(hsp, -air_max_speed-3, leave_ground_max+1.5);
	} else if (spr_dir == -1) {
		hsp = clamp(hsp, -leave_ground_max-1.5, air_max_speed+3);
	}
	if window == 1 && free {
		set_state(PS_IDLE_AIR);
	}
	
	if window == 1 && window_timer == 6 {
		spawn_base_dust(x+20*spr_dir, y, "dash_start");
	}
	
	if (window == 2 && window_timer > 4) || window == 3 {
		if !free {
			window = 4;
			window_timer = 0;
			spawn_base_dust(x, y, "land");
		}
		if !was_parried {
			can_attack = true;
		}
	}
	
	if window == 2 {
		if window_timer == 1 {
			hsp *= 1.5;
		}
	}
	
	if window == 3 {
		if window_timer == 5 && free {
			window_timer = 0;
		}
		if !was_parried {
		can_jump = true;
		can_shield = true;
		}
	}
	if window == 4  {
		destroy_hitboxes();
		if special_pressed && (left_down || right_down) && !free {
			window = 1;
			window_timer = 5;
		}
		can_attack = false;
		can_jump = false;
		can_shield = false;
		off_edge = false;
	}
	if window == 5 {
		if window_timer == 5 && !free && !was_parried {
			set_state(PS_CROUCH);
			state_timer = 8;
		}	
	
	}
}

//FSpecial (Air) - Dive
if attack == AT_FSPECIAL_AIR && !hitpause {
	if window > 1 {
		if free && ( spr_dir == 1 && (place_meeting(x + 12, y, asset_get("par_block"))) || spr_dir == -1 && (place_meeting(x - 12, y, asset_get("par_block"))) ) {
			destroy_hitboxes();
			attack_end();
			set_attack(AT_EXTRA_1);
			hsp = -4*spr_dir;
			vsp =+ 1;
			move_cooldown[AT_FSPECIAL_AIR] = 45;
			spawn_hit_fx(x+26*spr_dir, y-6, 301);
			sound_play(asset_get("sfx_blow_weak1"));
			if ItsAMeMario {
				sound_play(ugh);
				sound_stop(woohoo);
			}
		  }
	}
	can_fast_fall = false;
	if window == 3 {
		if !free {
			window = 4;
			window_timer = 0;
			spawn_base_dust(x, y, "land");
		}
		if window_timer == 14 && free {
			window_timer = 10;
		}
		if window_timer > 10 && !was_parried {
			can_jump = true;
			can_shield = true;
		}
	}

	if window == 4 {
		if free {
			window = 3;
			window_timer = 0;
		}
		if window_timer == 14 && !(2 > hsp > -2) {
			window_timer = 10;
		}
		if window_timer > 5 && (jump_pressed || attack_pressed || special_pressed) && !free {
			window = 6;
			window_timer = 0;
			vsp = -6;
			hsp *= 1.6;			
		}
	}
	if window == 5 {
		destroy_hitboxes();
	}
	if window == 6 {
		if window_timer > 5 && !was_parried {
			can_attack = true;
		}
		destroy_hitboxes();
		move_cooldown[AT_FSPECIAL_AIR] = 16;
	}
}

//USpecial
if attack == AT_USPECIAL {
	can_fast_fall = false;
	
	if window == 1 && window_timer == 6 {
		spawn_base_dust(x, y, "jump");
	}
	
	if window == 3 && down_down {
		vsp += .5;
	}
	
	if window <= 4 {
		set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
	} else {
		set_attack_value(AT_USPECIAL, AG_CATEGORY, 1);
	}

	if down_down {
		fall_through = true;
	}
	if window == 3 {
		if window_timer == 4 {
			sound_play(sound_get("flip"));
		}
	}
	if window == 4 {
		if window_timer == 4 {
			sound_play(sound_get("flip"));
		}
		if window_timer == 7 {
			if left_down {
			spr_dir = -1;
			} else if right_down {
			spr_dir = 1;
			}
		}
	}
	
	if window <= 5 {
		if up_down {
			set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, -9);
			set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED, 3);
		} else if down_down {
			set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, 5);
			set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED, 7);	
		} else if (spr_dir == -1 && left_down || spr_dir == 1 && right_down) {
			set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, -1);
			set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED, 8);	
		} 		
		else {
			reset_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED);
			reset_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED);
		}
	}
	if window == 5 && !hitpause { //Flying
		flyingTime--;
		
		can_move = false;
		can_wall_jump = true;
		fall_through = false;
		
		if window_timer == 35 && flyingTime > 0 {
			window_timer = 2;
		}
		
		if ( (down_down && (attack_pressed || special_pressed || strong_down) ) || down_strong_down ) {
			set_attack(AT_DAIR);
			sound_stop( sound_get("wind"));
		}
		
		if flyingTime > 5 && has_airdodge && shield_pressed {
			flyingTime -= 5;
		}		
		
		if window_timer == 1 {
			spawn_hit_fx(x+(get_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X))*spr_dir, y+get_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y), 144);
		}
		
		if (flyingTime < 90 && shield_pressed) {
			can_shield = true;
		}	
		
		if flyingTime == 0 {
			window = 6;
			window_timer = 1;
			sound_stop( sound_get("wind"));
		}
		
		if window_timer == 3 {
			sound_play( sound_get( "wind"), true, noone, .5, 1);
		}
		
		vsp = clamp(vsp, -10, 10);
		
			if (spr_dir == 1) {
				hsp = clamp(hsp, 2, air_max_speed+2);
			} else if (spr_dir == -1) {
				hsp = clamp(hsp, -air_max_speed-2, -2);
			}
			
			if down_down {
				vsp += .25;
				if vsp > 3 {
					hsp += .125*spr_dir;
				}
				if vsp > 5 {
					hsp -= .0625*spr_dir;
				}
			} else if (up_down) && canGoUp == true {
				vsp -= .25;
				if vsp < -4 {
					hsp -= .25*spr_dir;
				}
				if vsp > 2 {
					vsp -= .5;
				}
			} 
			hsp += .0625*spr_dir;
			if vsp > 2 {
				vsp -= .25;				
			}
		
		if vsp < -5 {
			canGoUp = false;
		}
		
		if canGoUp == false {
			vsp+= .25;
			hsp-= .0625*spr_dir;
			if vsp > 5 && (spr_dir == -1 && hsp < -1 || spr_dir == 1 && hsp > 1) {
				canGoUp = true;
				hsp += .125*spr_dir;
			}
		}
	}
	if window > 5 || !free {
		sound_stop(sound_get("wind"));
	}
}

//DSpecial - Metal-Head Mario
if (attack == AT_DSPECIAL) {
	can_wall_jump = true;
	can_fast_fall = false;
	if (window == 3) {
		hsp = clamp(hsp, -2, 2);
		vsp = clamp(vsp, -100, 5);
	}	

	if (window == 1 && window_timer == 12) {
		super_armor = true;
	}
	
	if (window == 3 && window_timer == 1) {
		super_armor = false;
	}
	if (window == 4 && window_timer == 3 && !hitpause && !has_hit) {
		sound_play(sound_get("metal3"));
	}
}

//NSpecial - Grab and Toss
if (attack == AT_NSPECIAL) {
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    }
    if (window == 6) { 
		if window_timer == 8 || (spr_dir == 1 && right_down || spr_dir == -1 && left_down) {
			attack_end();
			set_attack(AT_FTHROW);
		}
		if (spr_dir == 1 && left_down || spr_dir == -1 && right_down) {
			attack_end();
			spr_dir *= -1;
			set_attack(AT_NTHROW);
		}
		vsp = 0;
		hsp = 0;
    }
}
if !(url == 2310580951) {
	set_state(PS_DEAD);
}
if (attack == AT_FTHROW && instance_exists(grabbed_player_obj)) {
	
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
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
		if (window == 1) { 
			var pull_to_x = 30 * spr_dir;
			var pull_to_y = -4;
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		if (window == 2) { 
			var pull_to_x = -30 * spr_dir;
			var pull_to_y = -4;
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		if (window == 3) { 
			var pull_to_x = -15 * spr_dir;
			var pull_to_y = -4;
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		if (window == 4) { 
			var pull_to_x = 15 * spr_dir;
			var pull_to_y = -4;
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
	}
}

if (attack == AT_NTHROW && instance_exists(grabbed_player_obj)) {
	
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= 8) { grabbed_player_obj = noone; }
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
		if (window == 1) { 
			var pull_to_x = -30 * spr_dir;
			var pull_to_y = -4;
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		if (window == 2) { 
			var pull_to_x = -15 * spr_dir;
			var pull_to_y = -4;
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		if (window == 3) { 
			var pull_to_x = 15 * spr_dir;
			var pull_to_y = -4;
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		if (window == 4) { 
			var pull_to_x = 30 * spr_dir;
			var pull_to_y = -4;
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		if (window == 5) { 
			var pull_to_x = -30 * spr_dir;
			var pull_to_y = -4;
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		if (window == 6) { 
			var pull_to_x = -15 * spr_dir;
			var pull_to_y = -4;
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		if (window == 7) { 
			var pull_to_x = 15 * spr_dir;
			var pull_to_y = -4;
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
	}
}

if (attack == AT_NTHROW) {
	can_move = false;
	if window < 8 {
		hsp = 0;
		vsp = 0;
	}
	if window == 7 && window_timer == 4 {
		if ItsAMeMario {
			if hit_player_obj.url == 2207197597 || hit_player_obj.url == 2037682193 || hit_player_obj.url == 2962798543 || hit_player_obj.url == 2611384650 {
				sound_play(bowser);
			} else {
				sound_play(buhbye);
			}
		}	
	}
}

if (attack == AT_FTHROW) {
	can_move = false;
	if window < 6 {
		hsp = 0;
		vsp = 0;
	}
	if window == 4 && window_timer == 4 {
		if ItsAMeMario {
			if hit_player_obj.url == 2207197597 || hit_player_obj.url == 2037682193 || hit_player_obj.url == 2962798543 || hit_player_obj.url == 2611384650 {
				sound_play(bowser);
			} else {
				sound_play(buhbye);
			}
		}	
	}
}


//DAir - Ground Pound (lol copied from big yoshi)
if (attack == AT_DAIR) {
	can_move = false;
	can_fast_fall = false;
	
	if window == 4 {
		if window_timer == 52 {
		window_timer = 31;
		}
		
		if !hitpause && window_timer > 30 {
		can_jump = true;
		can_shield = true;
		}
		
	}
	if window == 5 && window_timer == 0 {
		if !hitpause {
			shake_camera(6,4);
			destroy_hitboxes();
			spawn_hit_fx( x-2*spr_dir, y, GroundPound);
		}
	}
}


//Dust effect stuff
if !hitpause {
	if attack == AT_DSTRONG {
		if window == 2 && window_timer == 2 {
			spawn_base_dust(x-2*spr_dir, y, "dash_start", spr_dir);
			}
		if window == 4 && window_timer == 2 {
			spawn_base_dust(x+2*spr_dir, y, "dash_start", -spr_dir);
			}
		if window == 7 && window_timer == 6 {
			spawn_base_dust(x+10*spr_dir, y, "dash", spr_dir);
			}
	}
	
	if attack == AT_FSTRONG {
		if window == 3 && window_timer == 2 {
			spawn_base_dust(x+50*spr_dir, y, "dash_start", -spr_dir);
			spawn_base_dust(x-10*spr_dir, y, "dash", spr_dir);
		}
	}
	
	if attack == AT_USTRONG {
		if window == 3 && window_timer == 2 {
			spawn_base_dust(x, y, "jump", spr_dir);
		}
	}
	if attack == AT_FSPECIAL_AIR && (window == 1) && window_timer == (get_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH)) {
		spawn_base_dust(x, y, "dash", spr_dir);
	}
}

//DAttack - Slide Kick
if (attack == AT_DATTACK) {
	can_fast_fall = false;
	
	if (window == 2 || window == 3 || window == 4 && window_timer < 6) && !free && !hitpause {
		vsp = -3;
		sound_play(sound_get("step-grass"));
		spawn_base_dust(x, y, "land");
	}
	
	if (window == 3 && window_timer > 10 || window > 3) && has_hit && !hitpause && !was_parried {
		if (jump_down || attack_down) && !free {
			attack_end();
			attack = AT_FSPECIAL_AIR;
			window = 6;
			window_timer = 0;
			vsp = -5;
			hsp *= 1.3;	
		} else {
			can_jump = true;
		}
	}
}

//Taunt stuff
if attack == AT_TAUNT {
	if window == 2 && window_timer > 10 || window > 2 {
		can_move = true;
		can_shield = true;	
		can_jump = true;	
	}
	if window == 3 && window_timer == 7 && taunt_down {
		window_timer = 6;
	}
	if window == 1 && window_timer > 18 || window == 2 || window == 3 && 8 > window_timer {
		hud_offset = 44;
	}
}

//Sleep
if attack == AT_TAUNT_2 {
	if window == 1 {
	sleepTimer = 0;
	}
	if window == 5 || window == 6 || window == 7 { //Sleep 1 windows
		if 700 > sleepTimer { //Timer to transition to sleep 2
			sleepTimer++;
		}
		if attack_pressed || left_pressed || right_pressed || up_pressed || jump_pressed { //Wake up
			window = 8;
			window_timer = 0;
		}
		if down_pressed { //Lay down
				window = 10;
				window_timer = 0;
				sleepTimer = 0;
		}		
	}
	if window == 7 { 
		if window_timer == (get_window_value(AT_TAUNT_2, 7, AG_WINDOW_LENGTH)) {
			if sleepTimer >= 700 { //Transition into sleep 2 if enough time has passed
				window = 10;
				window_timer = 0;
				sleepTimer = 0;
			}	else {
				window = 5;
				window_timer = 0;		
			}
		}	
	}
	if window == 9 { //Sleep 1 endlag
		if window_timer == (get_window_value(AT_TAUNT_2, 9, AG_WINDOW_LENGTH)) {
			set_state(PS_IDLE);
			state_timer = 0;
		}
	}
	
	if window == 9 || window == 16 { 
		can_jump = true;
		can_attack = true;
		can_shield = true;
	}
	
	if window == 12 || window == 13 || window == 14 { //Sleep 1 windows
		if attack_pressed || left_pressed || right_pressed || up_pressed || jump_pressed { //Wake up
			window = 15;
			window_timer = 0;
		}
	}
	if window == 14 { 
		if window_timer == (get_window_value(AT_TAUNT_2, 14, AG_WINDOW_LENGTH)) {
			window = 12;
			window_timer = 0;
		}
	}
}

if attack == AT_UTILT {
	if (window == 4 && window_timer == 1 || window == 4 && window_timer == 4 || window == 4 && window_timer == 8) && !hitpause {
		sound_stop(sound_get("spark"));
		sound_play(sound_get("spark"));
	}
	if window == 3 || window == 4 || window == 5 {
		hud_offset = 44;
	}
}

if attack == AT_DSTRONG && !hitpause {
	if window == 1 && window_timer == 3 {
		sound_play(sound_get("spark"));
	}
	//hsp stuff
	if window == 4 {
		hsp -= 4*spr_dir;
	}
	if window == 6 {
		hsp += 2*spr_dir;	
	}
	
	if window == 7 && (window_timer == (get_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH)) && has_hit || window_timer == ((get_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH))-1)*1.5 && !has_hit) && !was_parried {
		set_state(PS_CROUCH);
		state_timer = 8;
	}
}

if ItsAMeMario && !hitpause {
	if attack == AT_USTRONG {
		if window == 4 && window_timer == 1 {
			sound_play(yah);
		}
	}
	
	if attack == AT_DSTRONG {
		if window == 1 && window_timer == 1 {
			sound_play(woo, false, noone, 1, 1.05);
		}
		if window == 2 && window_timer == 3 {
			sound_play(yahoo, false, noone, 1, 1.05);
		}
	}	
	if attack == AT_FSTRONG {
		if window == 2 && window_timer == 1 {
			sound_play(yah);
		}
	}		
	if attack == AT_UAIR {
		if window == 1 && window_timer == 5 {
			sound_play(woo, false, noone, 1, .95);
		}		
	}
	
	if attack == AT_JAB {
		if window == 1 && window_timer == 2 {
			sound_play(yah);
		}	
		if window == 4 && window_timer == 2 {
			sound_play(wah);
		}		
		if window == 7 && window_timer == 2 {
			sound_play(hoo);
		}				
	}
	
	if attack == AT_NAIR {
		if window == 1 && window_timer == 2 {
			sound_stop(hoo);
			sound_play(hoo);
			sound_stop(woohoo);
			sound_stop(yahoo);
			sound_stop(yah);
		}			
	}

	if attack == AT_NSPECIAL {
		if window == 6 && window_timer == 1 {
			sound_play(yah);
		}			
	}
	
	if attack == AT_FSPECIAL {
		if window == 2 && window_timer == 1 {
			sound_stop(yahoo);
			sound_play(yahoo);
		}			
	}

	if attack == AT_FSPECIAL_AIR {
		if window == 2 && window_timer == 1 {
			sound_stop(hoo);
			sound_stop(woohoo);
			sound_stop(yahoo);
			sound_stop(yah);
			sound_play(woohoo, false, noone, 1, 1.02);
		}			
	}	
	if attack == AT_USPECIAL {
		if window == 2 && window_timer == 1 {
			sound_play(yippee);
		}
		
		if free && window == 3 && window_timer == 8 {
			sound_play(yah);
		}
	}	
	
	if attack == AT_DAIR {
		if window == 2 && window_timer == 5 {
			sound_play(wah);
		}
	}
	
	if attack == AT_DTILT {
		if window == 1 && window_timer == 2 {
			sound_play(hoo);
		}
	}
	
	if attack == AT_DATTACK {
		if window == 1 && window_timer == 4 {
			sound_play(woohoo, false, noone, 1, 1.02);
		}
	}
	
	if attack == AT_TAUNT {
		if window == 1 && window_timer == 24 {
			sound_play(herewego);
		}
	}
	
	if attack == AT_TAUNT_2 {
		if window == 1 && window_timer == 1 {
			sound_play(yawn);
		}
		if window == 5 && window_timer == 1 {
			sound_play(snore1);
		}
		if window == 6 && window_timer == 20 {
			sound_play(snore2);
			sound_stop(snore1);
		}

		if window == 12 && window_timer == 1 {
			sound_play(snore1, false, noone, 1, .75);
		}
		if window == 13 && window_timer == 20 {
			sound_play(snore2);
			sound_stop(snore1);
		}
		
		if window == 8 || window == 15 {
			sound_stop(snore2);
			sound_stop(snore1);
		}
	}		
}

#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

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
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;