//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if window == 1 && window_timer == 1 {
	beginning = 1;
} else {
	beginning = 0;
}

if attack == AT_FSPECIAL || attack == AT_DSPECIAL_AIR {
	can_wall_jump = true;
}

if burst = 1 && (((attack == AT_FSPECIAL || (attack == AT_NSPECIAL)) && has_hit)) {
	usingspecial = true;
	burststop = 240;
} 

if burst = 1 {
		set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 9.75);
		set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.1);
		
		set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.1);
} else {
		reset_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING);
		
		reset_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING);
}

// Hey rioku can you just set this to be the final window / frame of fspecial it sets a variable thanks
//I added "burst = 1" to fix this the fspecial issue
if (burst = 1 && (usingspecial = true && (attack == AT_NSPECIAL && window == 6) || (attack == AT_FSPECIAL && window == 4)) || state == PS_HITSTUN) {
	usingspecial = false;
	cooldownstart = true;
}


if attack == AT_FTILT && has_hit && window == 2 {
	window = 4;
	window_timer = 0;
	destroy_hitboxes();
}

if attack == AT_DATTACK && has_hit && window == 2 {
	window = 4;
	window_timer = 0;
	destroy_hitboxes();
}

if bloodmeter < bloodmetermin {
	bloodmeter = bloodmetermin;
}
else if (bloodmeter > bloodmetermax && !hitpause && (state != PS_ATTACK_GROUND || state != PS_ATTACK_AIR)) {
	bloodmeter = 0;
	burst = 1;
	burstmeter = 100;
	burstactive = true;
	attack_end();
	destroy_hitboxes();
	set_attack(AT_DSPECIAL_2);
	hurtboxID.sprite_index = get_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE);
	burstactive = false;
	djumps = 0;
	move_cooldown[AT_USPECIAL] = 0;
}

//====================================
//NSPECIAL

if attack == AT_NSPECIAL {
    if window == 2 && window_timer == 1 {
        sound_play(asset_get("sfx_swipe_heavy2"));
    }
    
if (attack == AT_NSPECIAL) {
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    }
    
    if (instance_exists(grabbed_player_obj)) {
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
			if (window == 4) { 
				//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
				var pull_to_x = 30 * spr_dir;
				var pull_to_y = -12;
				
				//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + ease_circOut( round(grabbed_player_relative_x), pull_to_x, window_timer, window_length);
				grabbed_player_obj.y = y + ease_circOut( round(grabbed_player_relative_y), pull_to_y, window_timer, window_length);
			}	//if this is the first frame of a window, store the grabbed player's relative position.
			if (window == 5) { 
				//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
				var pull_to_x = 32 * spr_dir;
				var pull_to_y = 0;
				
				//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + ease_circOut( round(grabbed_player_relative_x), pull_to_x, window_timer, window_length);
				grabbed_player_obj.y = y + ease_circOut( round(grabbed_player_relative_y), pull_to_y, window_timer, window_length);

			}
			//the above block can be copied for as many windows as necessary.
			//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
		}
    }
}

}

//====================================
//FSTRONG

if attack == AT_FSTRONG {
    if window == 2 && window_timer == 1 {
        sound_play(asset_get("sfx_swipe_heavy2"));
    }
    
if (attack == AT_FSTRONG) {
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    }
    
    if (instance_exists(grabbed_player_obj)) {
		//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
		if (window >= 7) { grabbed_player_obj = noone; }
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
			if (window == 5) { 
				//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
				var pull_to_x = -18 * spr_dir;
				var pull_to_y = -32;
				
				//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + ease_circOut( round(grabbed_player_relative_x), pull_to_x, window_timer, window_length);
				grabbed_player_obj.y = y + ease_circOut( round(grabbed_player_relative_y), pull_to_y, window_timer, window_length);
			}	//if this is the first frame of a window, store the grabbed player's relative position.
			if (window == 6) { 
				//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
				var pull_to_x = 32 * spr_dir;
				var pull_to_y = 0;
				
				//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + ease_circOut( round(grabbed_player_relative_x), pull_to_x, window_timer, window_length);
				grabbed_player_obj.y = y + ease_circOut( round(grabbed_player_relative_y), pull_to_y, window_timer, window_length);

			}
			//the above block can be copied for as many windows as necessary.
			//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
		}
    }
}

}

//====================================
//FSTRONG_2

if attack == AT_FSTRONG_2 {
    if window == 2 && window_timer == 1 {
        sound_play(asset_get("sfx_swipe_heavy2"));
    }
    
//attack_update.gml
if (attack == AT_FSTRONG_2) {
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    }
    
    if (instance_exists(grabbed_player_obj)) {
		//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
		if (window >= 7) { grabbed_player_obj = noone; }
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
			if (window == 5) { 
				//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
				var pull_to_x = -18 * spr_dir;
				var pull_to_y = -32;
				
				//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + ease_circOut( round(grabbed_player_relative_x), pull_to_x, window_timer, window_length);
				grabbed_player_obj.y = y + ease_circOut( round(grabbed_player_relative_y), pull_to_y, window_timer, window_length);
			}	//if this is the first frame of a window, store the grabbed player's relative position.
			if (window == 6) { 
				//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
				var pull_to_x = 32 * spr_dir;
				var pull_to_y = 0;
				
				//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + ease_circOut( round(grabbed_player_relative_x), pull_to_x, window_timer, window_length);
				grabbed_player_obj.y = y + ease_circOut( round(grabbed_player_relative_y), pull_to_y, window_timer, window_length);

			}
			//the above block can be copied for as many windows as necessary.
			//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
		}
    }
}

}

//===============================

if (attack == AT_FSPECIAL){
    if (window == 3 and window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		window = 5;
    }
    if(window == 1){
    	fspecial_grabbed_player = noone;
    }
    if(window < 4 and fspecial_grabbed_player!= noone and !hitpause){
    	window = 4;
    	window_timer = 0;
    } 
    if(window == 4){
    	if(window_timer < 12){
    		fspecial_grabbed_player.hitstop = 2;
    		fspecial_grabbed_player.hitstop_full = 2;
    	}
		if(window_timer < 4){
				fspecial_grabbed_player.x = x;
    			fspecial_grabbed_player.y = y-8;
		} else if (window_timer < 8){
			fspecial_grabbed_player.x = x-spr_dir*8;;
			fspecial_grabbed_player.y = y-16;
		} else if (window_timer < 12){
			fspecial_grabbed_player.x = x;
			fspecial_grabbed_player.y = y;
		} else if (window_timer == 12){
			fspecial_grabbed_player.x = x+spr_dir*64;
			fspecial_grabbed_player.y = y;
		}

    }
    can_fast_fall = false;
}

if attack == AT_USPECIAL {
	can_wall_jump = true;
		if (target != noone && !hitpause) {
		if (target.state == PS_DEAD || target.state == PS_RESPAWN || target.state == PS_WALL_TECH || target.state == PS_TECH_GROUND || target.state == PS_TECH_FORWARD || target.state == PS_TECH_BACKWARD) {
			target = noone;
		} else {
			if (window == 2) {	
				target.y = (target.y + (y - 20)) / 2;
				target.x = (target.x + (x + (30 * spr_dir))) / 2;
				if (window_timer == 15) {
					target.vsp = -4;
				}
			} else if (window == 3) {
				target.y = ((4*target.y) + (y + 40)) / 5;
				target.x = ((4*target.x) + (x + (35 * spr_dir))) / 5;
			} else {
				target = noone;			
			}

		}
	}
		if window == 2 && window_timer == 10 {
			if left_down {
				spr_dir = -1 
			} else if right_down {
				spr_dir = 1
			}
	}
}

if attack == AT_USPECIAL {
	if window == 2 && window_timer > 8 {
			if shield_down {
				window = 7;
				window_timer = 0;
		} 
}
}

if attack == AT_USPECIAL && !free {
	if window == 4 {
		destroy_hitboxes();
		window = 6;
		window_timer = 0;
		sound_play(asset_get("sfx_zetter_downb"));
		sound_play(asset_get("sfx_blow_heavy1"));
	}
}

	if attack = AT_DSPECIAL_AIR && window != 4 && !free {
		window = 4;
		window_timer = 0;
		destroy_hitboxes();
		sound_play(asset_get("sfx_zetter_downb"));
	}


if ((attack == AT_DSPECIAL && window == 2 && window_timer == 6) 
|| (attack == AT_DSPECIAL_AIR && window == 4 && window_timer == 6)){
	if burst = 0 && spikehitboxright = true {
	    create_hitbox( AT_DSPECIAL, 2, x, y - 40 );
		spikehitboxright = false;	
} else if burst = 1 && burstspikehitboxright = true {
	if numspikesright = 1 {
			set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, numspikesright * (50))
	set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, ((numspikesright * 30) + 40))
		    create_hitbox( AT_DSPECIAL, 4, x, y - 40 );
		burstspikehitboxright = false;
		numspikesright = 0;
	}	else if numspikesright = 2 {
			set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, numspikesright * (50))
	set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, ((numspikesright * 30) + 36))
		    create_hitbox( AT_DSPECIAL, 4, x, y - 40 );
		burstspikehitboxright = false;
		numspikesright = 0;
	}	else if numspikesright > 2 && numspikesright < 7{
	set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, numspikesright * (50))
	set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, ((numspikesright * 30) + numspikesright * 5))
		    create_hitbox( AT_DSPECIAL, 4, x, y - 40 );
		burstspikehitboxright = false;
		numspikesright = 0;
	}	else if numspikesright > 6 {
	set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, numspikesright * (50))
	set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, ((numspikesright * 30) + numspikesright * 1))
		    create_hitbox( AT_DSPECIAL, 4, x, y - 40 );
		burstspikehitboxright = false;
		numspikesright = 0;
}
}
}



if ((attack == AT_DSPECIAL && window == 2 && window_timer == 6) 
|| (attack == AT_DSPECIAL_AIR && window == 4 && window_timer == 6)) {
	if burst = 0 && spikehitboxleft = true {
	    create_hitbox( AT_DSPECIAL, 3, x, y - 40 );
	    spikehitboxleft = false;
} else if burst = 1 && burstspikehitboxleft = true {
	if numspikesleft < 3 {
	set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, numspikesleft * (-50))
	set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, ((numspikesleft * -20) + numspikesleft * -12))
		    create_hitbox( AT_DSPECIAL, 5, x, y - 40 );
		burstspikehitboxleft = false;
		numspikesleft = 0;
	} else if numspikesleft > 2 && numspikesleft < 6 {
	set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, numspikesleft * (-50))
	set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, ((numspikesleft * -28) ))
		    create_hitbox( AT_DSPECIAL, 5, x, y - 40 );
		burstspikehitboxleft = false;
		numspikesleft = 0;
	
	} else if numspikesleft > 6 {
	set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, numspikesleft * (-50))
	set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, ((numspikesleft * -28) + numspikesleft * 1))
		    create_hitbox( AT_DSPECIAL, 5, x, y - 40 );
		burstspikehitboxleft = false;
		numspikesleft = 0;
	
	}
}
}

if attack == AT_TAUNT && window == 2 && window_timer == 17 && taunt_down {
	window_timer = 2;
}


//gnome
switch(attack) {
	case AT_FAIR: 
		if window == 1 && window_timer == 5 sound_play(sound_get("swingmid"))
	break;
	case AT_BAIR: 
		if window == 1 && window_timer == 5 sound_play(sound_get("swingmid"), 0, noone, 1, .9)
	break;
	case AT_USPECIAL: {
		if window == 1 && window_timer == 1 {
			sound_play( asset_get("sfx_ell_uspecial_explode"), 0, noone, 1, 1.4)
		}
	}
	case AT_NSPECIAL: {
		can_fast_fall = false;
		fast_falling = false;
	}
	case AT_UTILT: 
		if window == 1 && window_timer == 5 sound_play(sound_get("swingmid"), 0, noone, 1, .9)
	break;
	case AT_DSTRONG: {
		if (window == 3 && window_timer == 10) || (window == 7 && window_timer == 10) {
						sound_play(sound_get("swingmid"))
		}
	}
}




if (attack == AT_JAB && (window == 1 || window == 4) && window_timer == 1) {
    clear_button_buffer(PC_ATTACK_PRESSED);
}


