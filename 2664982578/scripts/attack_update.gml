//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}


// per-attack logic

switch(attack){
	
	// give your moves some "pop" by spawning dust during them!
	
	case AT_JAB:
		was_parried = false; // easy method for single-hit jabs
		break;
	case AT_FSTRONG:
		if window == 2 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x + spr_dir * 70, y, "dash_start", -spr_dir]);
		}		if window == 4 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x + spr_dir * 90, y, "dash_start", -spr_dir]);
		}
		break;
	case AT_USTRONG:
		if window == 2 && window_timer == 1 && !hitpause{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash_start", -spr_dir]);
		}
		break;
	case AT_DAIR:
		if window == 8 && window_timer == 2{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash_start", -spr_dir]);
		}
		break;
	case AT_DSTRONG:
		if window == 5 && window_timer == 1{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash_start", -spr_dir]);
		}
		break;
}

if(attack == AT_UTILT){
	if(window == 2){
		hud_offset = 120;
	}
}

if(attack == AT_UAIR){
	if(window == 2){
		hud_offset = 100;
	}
}

if(attack == AT_DATTACK){
	hud_offset = 38;
	if(window == 3 || window == 4){
	if(window_timer % 1 == 0 && !hitpause){
    	var afterimage = spawn_hit_fx(x + spr_dir * -10, y, vfx_afterimage);
    	afterimage.depth = 1;
       }
	}if(window == 2){
		if(window_timer = phone_window_end){
			spawn_hit_fx(x,y -20, 21 );
		}
	}if(hatch_amount < 3000){
if(hsp > 2 || hsp < -2){
	hatch_amount += 1 + hatch_increase;
}
}
}

if(attack == AT_NAIR){
	hud_offset = 30;
	if(window == 1 && window_timer == phone_window_end){
		spawn_hit_fx(x,y -20, 139);
	}
}

if(attack == AT_FAIR){
	if(window != 4){
	hud_offset = 35;
	}
}

if(attack == AT_DAIR){
	can_fast_fall = false;
	can_wall_jump = true;
	hud_offset = 20;
	if(window == 3 || window == 4 || window == 5){
		if(!free){
			destroy_hitboxes();
			window = 8;
			window_timer = 0;
		}
	}if(window == 6){
		if(window_timer == phone_window_end){
			window = 7;
			window_timer = 0;
		}
	}if(window == 7){
		if(window_timer = 1){
			vsp_type = 2;
			vsp = -7;
		}
	}
}

if(attack == AT_DSTRONG){
	can_fast_fall = false;
	if(window == 1 && window_timer = 1){
	    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;	
	}
	if(window == 4){
		if(!free){
			destroy_hitboxes();
			window = 5;
			window_timer = 0;
			sound_play(asset_get("sfx_ori_stomp_hit"));
		}if(window_timer = 30 && free){
			window = 7;
			window_timer = 0;
			sound_play(sound_get("grab_fail"));
		}
	}if(window == 6 && window_timer = phone_window_end && !was_parried){
		set_state(PS_IDLE);
	}if(window == 6 && window_timer = phone_window_end && was_parried){
		set_state(PS_PRATLAND);
	}     
	if(window > 3 && instance_exists(grabbed_player_obj)){
    //first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer > 3) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//on the first window, pull the opponent into the grab.
		if (window == 4) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 0 * spr_dir;
			var pull_to_y = 30;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
	}
	}if(window == 5 && window_timer > 6){
			    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
	}
}

if(attack == AT_FSTRONG){
	hud_offset = 65;
	if(window == 3){
		if(window_timer = 3 && !hitpause){
			sound_play(asset_get("sfx_swipe_medium2"));
			array_push(phone_dust_query, [x + spr_dir * 70, y, "dash_start", -spr_dir]);
		}		if(window_timer = 7 && !hitpause){
			sound_play(asset_get("sfx_swipe_medium2"));
			array_push(phone_dust_query, [x + spr_dir * 70, y, "dash_start", -spr_dir]);
		}		if(window_timer = 11 && !hitpause){
			sound_play(asset_get("sfx_swipe_medium2"));
			array_push(phone_dust_query, [x + spr_dir * 70, y, "dash_start", -spr_dir]);
		}
	}
}

if(attack == AT_USTRONG){
	can_fast_fall = false;
	if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    }
    if(window != 1){
    	hud_offset = 60;
    }
    if(window == 4 && window_timer = 18 && !was_parried){
    	set_state(PS_IDLE);
    }if(window == 4 && window_timer = 18 && was_parried){
    	set_state(PS_PRATLAND);
    }
    if(window > 4 && instance_exists(grabbed_player_obj)){
    //first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 4) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//on the first window, pull the opponent into the grab.
		if (window == 5) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 0 * spr_dir;
			var pull_to_y = -40;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
	}
	}if(window == 5){
		if(!free){
			window = 6;
			window_timer = 0;
		}if(window_timer = 60 && free){
			window = 7;
			window_timer = 0;
			sound_play(sound_get("grab_fail"));
		}
	}if(window == 6){
		if(window_timer = 20 && !free){
			window = 7;
			window_timer = 9;
		}
	}if(window == 6 && window_timer > 6){
			    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
	}
}

if(attack == AT_NSPECIAL){
	can_fast_fall = false;
	hsp = clamp(hsp,-2.5,2.5);
	if(window == 1){ 
	if(window_timer = 4){
		vsp_type = 1;
		vsp = 0;
		hsp_type = 1;
		hsp = 0;
		}	if(window_timer = 5){
		vsp_type = 0;
		hsp_type = 0;
		}
	}
	if(window == 4 && window_timer = phone_window_end && !hitpause){
		instance_create(x + spr_dir * 60, y, ("obj_article2"));
		move_cooldown[AT_NSPECIAL] = 240;
	}
}

if(attack == AT_FSPECIAL){
	can_fast_fall = false;
	can_wall_jump = true;
	if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    	move_cooldown[AT_FSPECIAL] = 99999;
    }
	if(window == 4){
		hud_offset = 45;
	}
}

if (attack == AT_FSPECIAL_2 && instance_exists(grabbed_player_obj)) {
	if (window == 1 && window_timer == 1) { 
		hsp = 0;
		vsp_type = 2;
			vsp = -10;
    }
    //first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x -20 * spr_dir;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//on the first window, pull the opponent into the grab.
		if (window == 1) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = -40 * spr_dir;
			var pull_to_y = -10;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}		if (window == 2) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 50 * spr_dir;
			var pull_to_y = 0;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + 50 * spr_dir;
			grabbed_player_obj.y = y + 0;
		}if (window == 4) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 50 * spr_dir;
			var pull_to_y = -50;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + 50 * spr_dir;
			grabbed_player_obj.y = y - 50;
		}if (window == 6) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 30 * spr_dir;
			var pull_to_y = 0;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + 30 * spr_dir;
			grabbed_player_obj.y = y + 0;
		}
		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
	}if(window == 1){
		if(!free){
			if(window_timer > 10){
			window = 2;
			window_timer = 0;
			}
		}if(window_timer = 90 && free){
			window = 3;
			window_timer = 0;
			sound_play(sound_get("grab_fail"));
		}
	}if(hatch_amount < 3000){
if(hsp > 2 || hsp < -2){
	hatch_amount += 1 + hatch_increase;
}
}
}

if (attack == AT_FSPECIAL_2 && grabbed_orb == true) {
	if (window == 1 && window_timer == 1) { 
		hsp = 0;
		vsp_type = 2;
			vsp = -9;
    }
if(window == 1){
		if(!free){
			if(window_timer > 10){
			window = 2;
			window_timer = 0;
			}
		}if(window_timer = 90 && free){
			window = 3;
			window_timer = 0;
			sound_play(sound_get("grab_fail"));
		}
	}if(window = 3 && window_timer = phone_window_end && !was_parried){
			set_state(PS_IDLE);
		}if(window = 3 && window_timer = phone_window_end && was_parried){
			set_state(PS_PRATLAND);
		}if(hatch_amount < 3000){
if(hsp > 2 || hsp < -2){
	hatch_amount += 1 + hatch_increase;
	}
}
}

if (attack == AT_FSPECIAL_2) {
	if(window == 4){
		can_fast_fall = false;
		can_move = false;
		if(window_timer = phone_window_end){
			window = 5;
			window_timer = 0;
		}
	}
	//windows being cancelled moment
	if(window = 3 && window_timer = phone_window_end && !was_parried){
			set_state(PS_IDLE);
		}if(window = 3 && window_timer = phone_window_end && was_parried){
			set_state(PS_PRATLAND);
		}if(window = 5 && window_timer = phone_window_end && !was_parried){
			set_state(PS_IDLE);
		}if(window = 5 && window_timer = phone_window_end && was_parried){
			set_state(PS_PRATLAND);
		}if(window = 7 && window_timer = phone_window_end && !was_parried){
			set_state(PS_IDLE);
		}if(window = 7 && window_timer = phone_window_end && was_parried){
			set_state(PS_PRATLAND);
		}
		
		if(window == 2 && window_timer > 6){
			    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
	}if(window == 4 && window_timer > 6){
			    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
	}if(window == 6 && window_timer > 4){
			    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
	}if(window == 7 && window_timer > 4){
    	move_cooldown[AT_FSPECIAL] = 30;
	}
	if(window == 1 && window_timer > 20){
		if(special_pressed){
			window = 6;
			window_timer = 0;
		}
	}
}
if(attack == AT_USPECIAL){
	if(window == 1 && window_timer = 4){
	sound_play(asset_get("sfx_ori_charged_flame_charge2"));	
	}
	if(window == 2){
		can_fast_fall = false;
		can_move = false;
		teleport_outline = true;
		if(window_timer = 1){
			instance_create(x, y-10, ("obj_article1"));
		}if(window_timer = 70 || special_pressed){
			teleport = true;
			window = 3;
			window_timer = 0;
		}if(shield_pressed){
			window = 3;
			window_timer = 0;
			tele_cancel = true;
		}
	}if(window == 3){
		if(window_timer = 1){
			sound_stop(asset_get("sfx_ori_charged_flame_charge2"));
			vsp_type = 2;
			vsp = -4;
		}if(window_timer = phone_window_end && was_parried){
			set_state(PS_PRATLAND);
		}
	}
}

if(attack == AT_DSPECIAL){
	can_fast_fall = false;
	can_move = false;
	if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    	enemy_knockback = 0;
        enemy_knockback_scaling = 0;
        enemy_damage = 0;
        counter_drop = 0;
        set_window_value(AT_DSPECIAL, 2, AG_WINDOW_INVINCIBILITY, 1);
    }	if (window == 1 && window_timer == 6) { 
    	spawn_hit_fx(x + spr_dir * 30,y -40, 19);
    }if(window == 2){
    	if(window_timer = 1){ //create counter articles
    		counterbox = 0;
    		super_armor = true;
    		instance_create(x + spr_dir * 35, y, ("obj_article3"));
    		counterbox = 1;
    		instance_create(x + spr_dir * -35, y, ("obj_article3"));
    	}if(window_timer = 17){
    		super_armor = false;
    		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_INVINCIBILITY, 0);
    	}
    }if(window == 3){
    	super_armor = false;
    }if(window == 4 && window_timer = 15){
    	window = 5;
    	window_timer = 0;
    }
}
if(attack == AT_DSPECIAL_2){
	soft_armor = 9999;
	super_armor = false;
	if(window == 1 && window_timer = 6){
		set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_KNOCKBACK, enemy_knockback * 1.2); 
		set_hitbox_value(AT_DSPECIAL_2, 2, HG_KNOCKBACK_SCALING, enemy_knockback_scaling * 1.2); 
		set_hitbox_value(AT_DSPECIAL_2, 2, HG_DAMAGE, enemy_damage * 1.5); 

	}
	if(window == 3 && window_timer = 12 && !was_parried){
		set_state(PS_IDLE);
	}	if(window == 3 && window_timer = 12 && was_parried){
		set_state(PS_PRATLAND);
	}
	
	if(window == 3 || window == 4 || window == 5){
    //first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x -20 * spr_dir;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//on the first window, pull the opponent into the grab.
		if (window == 1) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = -40 * spr_dir;
			var pull_to_y = -10;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}		if (window == 4) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 50 * spr_dir;
			var pull_to_y = 0;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + 50 * spr_dir;
			grabbed_player_obj.y = y + 0;
		}if (window == 5) { 
			if(window_timer < 4){
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 40 * spr_dir;
			var pull_to_y = -20;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + 40 * spr_dir;
			grabbed_player_obj.y = y + -20;
			}if(window_timer >= 4){
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = -50 * spr_dir;
			var pull_to_y = 0;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + -40 * spr_dir;
			grabbed_player_obj.y = y + 0;
			}
		}
		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
	}
	}if(window == 6 && window_timer = 8){
		spr_dir = spr_dir * -1;
	}if(window == 6){
			    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
	}
}

if(attack == AT_EXTRA_1){
	can_fast_fall = false;
	can_move = false;
	if(hatch_amount > 0){
		hatch_amount -= 30;
	}
	if(window == 1){
		super_armor = true;
	}	if(window == 3){
		super_armor = false;
	shake_camera(3, 5);
	if(window_timer % 15 == 0 && !hitpause){
				snd_rng = random_func(0, 8, true);
				        if (snd_rng == 0) {
            spawn_hit_fx(x + spr_dir * 10,y -10, 19);
    }if (snd_rng == 1) {
            spawn_hit_fx(x + spr_dir * 20,y, 19);
    }if (snd_rng == 2) {
            spawn_hit_fx(x + spr_dir * -18,y -15, 19);
    }if (snd_rng == 3) {
            spawn_hit_fx(x + spr_dir * -25,y -25, 19);
    }if (snd_rng == 4) {
            spawn_hit_fx(x + spr_dir * 24,y -29, 19);
    }if (snd_rng == 5) {
            spawn_hit_fx(x + spr_dir * 15,y -20, 19);
    }if (snd_rng == 6) {
            spawn_hit_fx(x + spr_dir * -15,y -22, 19);
    }if (snd_rng == 7) {
            spawn_hit_fx(x + spr_dir * -22,y -16, 19);
    }
			}
	}	if(window == 2 && window_timer = 3){
		spawn_hit_fx(x,y -20, 112);
	}if(window == 4 || window == 5){
	shake_camera(3, 5);
	if(!hitpause){
		if(window_timer % 4 == 0){
		var explode = create_hitbox(AT_EXTRA_1, 7, x + spr_dir, y);
			}if(window_timer % 10 == 0 && !hitpause){
				snd_rng = random_func(0, 8, true);
				        if (snd_rng == 0) {
            spawn_hit_fx(x + spr_dir * 10,y -10, 19);
    }if (snd_rng == 1) {
            spawn_hit_fx(x + spr_dir * 20,y, 19);
    }if (snd_rng == 2) {
            spawn_hit_fx(x + spr_dir * -18,y -15, 19);
    }if (snd_rng == 3) {
            spawn_hit_fx(x + spr_dir * -25,y -25, 19);
    }if (snd_rng == 4) {
            spawn_hit_fx(x + spr_dir * 24,y -29, 19);
    }if (snd_rng == 5) {
            spawn_hit_fx(x + spr_dir * 15,y -20, 19);
    }if (snd_rng == 6) {
            spawn_hit_fx(x + spr_dir * -15,y -22, 19);
    }if (snd_rng == 7) {
            spawn_hit_fx(x + spr_dir * -22,y -16, 19);
    }
			}
		}
	}if(window == 5 && window_timer = 22 && !hitpause){
		spawn_hit_fx(x,y -10, MB_finish);
	}
}
//training cheat lol
if(attack == AT_TAUNT){
	hud_offset = 40;
	if(phone_practice == true){
	hatch_amount = 3000;
	}
}

if(attack == AT_PHONE){
	hud_offset = 30;
}

//cancel into magic burst
if(hatch_amount >= 3000){
	if(attack == AT_JAB){
		if(window == 1 && window_timer = 1){
			if(special_pressed || special_down){
						destroy_hitboxes();
		                attack_end();
						set_attack(AT_EXTRA_1);
			}if(taunt_pressed || taunt_down){
						destroy_hitboxes();
		                attack_end();
						set_attack(AT_EXTRA_1);
			}
		}
	}	if(attack == AT_NAIR){
		if(window == 1 && window_timer = 1){
			if(special_pressed || special_down){
						destroy_hitboxes();
		                attack_end();
						set_attack(AT_EXTRA_1);
			}if(taunt_pressed || taunt_down){
						destroy_hitboxes();
		                attack_end();
						set_attack(AT_EXTRA_1);
			}
		}
	}	if(attack == AT_NSPECIAL){
		if(window == 1 && window_timer = 1){
			if(attack_pressed || attack_down){
						destroy_hitboxes();
		                attack_end();
						set_attack(AT_EXTRA_1);
			}
		}
	}	if(attack == AT_TAUNT){
		if(window == 1 && window_timer = 1){
			if(attack_pressed || attack_down){
						destroy_hitboxes();
		                attack_end();
						set_attack(AT_EXTRA_1);
			}
		}
	}
}
#define spawn_base_dust // written by supersonic
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;

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
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;


