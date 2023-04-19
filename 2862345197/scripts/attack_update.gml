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
//stinky megaman zone
//------------------------------------------------------------------------------
	case AT_JAB:
	
		if window = 3 && (attack_down) {
		window = 1;
		window_timer = 0;
		}
		if window == 5 && window_timer == 5{
		window = 1;
		window_timer = 0;
		}
		//cancel into ftilt/turning
		    if right_down || (right_stick_down && !right_strong_down){
			    if spr_dir = -1{
				    if has_rune("L") {
					spr_dir = 1;
					} else {
					window = 5;
				    window_timer = 0;
				    spr_dir = 1;
					}
				} else {
				attack = AT_FTILT;
				}
			} else if right_down && !attack_down && window = 3 {
			    if spr_dir = 1{
				set_state(PS_WALK);
				} else {
				set_state(PS_WALK_TURN);
				}
			}
			if left_down || (left_stick_down && !left_strong_down){
			    if spr_dir = 1{
					if has_rune("L") {
						spr_dir = -1;
						} else {
						window = 5;
					    window_timer = 0;
					    spr_dir = -1;
						}
				} else {
				attack = AT_FTILT;
				}
			} else if left_down && !attack_down && window = 3 {
			    if spr_dir = 1{
				set_state(PS_WALK_TURN);
				} else {
				set_state(PS_WALK);
				}
			}
		if ((jump_pressed) || (tap_jump_pressed && can_tap_jump() )){
		state = PS_JUMPSQUAT;
		state_timer = 0;
		pshoot_carry = true;
		}
		if ground_type = 2 && down_down {
		fall_through = true;
		free = true;
		}
		break;
	case AT_FTILT:
	
		switch (window) {
		
		case 3:
		//I KNOW THESE SHOULD BE IN 1 BIG OR STATEMENT DO NOT FUCKING ASK ME WHY IT DOESNT WORK THAT WAY BLAME DAN NOT ME
		if attack_down {
		window = 1;
		window_timer = 0;
		}
		if right_stick_down && !right_strong_down {
		window = 1;
		window_timer = 0;
		}
		if left_stick_down && !left_strong_down {
		window = 1;
		window_timer = 0;
		}
		break;
		
		case 1:
		if window_timer == phone_window_end{
			array_push(phone_dust_query, [x - 16 * spr_dir, y, "dash", spr_dir]);
		}
		break;
		
		case 5:
		if window_timer == 5 {
		window = 1;
		window_timer = 0;
		}
	    break;
	    }
	    
		//cancel into jab
		if hsp == 0 && window != 5{
		attack = AT_JAB;
		}
		
		//turning
		    if spr_dir == 1{
			    if right_down || (right_stick_down && !right_strong_down){
			    hsp = 4;
				} else if left_down || (left_stick_down && !left_strong_down){
				    if has_rune("L") {
						spr_dir = -1;
						} else {
						window = 5;
					    window_timer = 0;
					    spr_dir = -1;
						}
				}
			} else if spr_dir = -1{
			    if left_down || (left_stick_down && !left_strong_down){
			    hsp = -4;
				} else if right_down || (right_stick_down && !right_strong_down){
					if has_rune("L") {
						spr_dir = 1;
						} else {
						window = 5;
					    window_timer = 0;
					    spr_dir = 1;
						}
				}
			}
		if (jump_pressed) || (tap_jump_pressed){
		state = PS_JUMPSQUAT;
		state_timer = 0;
		pshoot_carry = true;
		}
		
		if ground_type = 2 && down_down {
		fall_through = true;
		free = true;
		}
		break;
		
	case AT_NAIR:
	    if window = 3 && (attack_down || left_stick_down || right_stick_down || left_strong_down || right_strong_down ){
		window = 1;
		window_timer = 0;
		}
		if down_down {
		fall_through = true;
		}
		if free && ((jump_pressed) || (tap_jump_pressed && can_tap_jump() )) && (djumps < max_djumps && state_timer > 5 && !hitpause){
		state = PS_DOUBLE_JUMP;
		state_timer = 0;
		pshoot_carry = true;
		vsp = -djump_speed;
		array_push(phone_dust_query, [x, y, "doublejump", spr_dir]);
		sound_play(djump_sound);
		djumps++;
		if (has_rune("J") && djumps > 1){
		spawn_hit_fx( x, y, jump_arrow );
		}
		}	
	    break;
//------------------------------------------------------------------------------

    case AT_DAIR:
	case AT_UAIR:
	if window = 1 && window_timer = 1 && !hitpause {
	cluster_num++;
	}
		if window = 2 && window_timer < 4 && !hitpause{
		shootsfxnum = random_func( 0, 5, true ) + 1;
	    sound_play(sound_get("pshooter_" + string(shootsfxnum)));
		}
        break;
	case AT_BAIR:	
	    if window == 2 && window_timer == phone_window_end{
		sound_play(sound_get("spike_appear"));
		}
		break;
	case AT_DTILT:
		if window == 1 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x - 16 * spr_dir, y, "dash", spr_dir]);
		}
		break;
	case AT_UTILT:
		if window == 1 {
		    if window_timer = 1 && !hitpause {
			sound_play(sound_get("firework_whistle"));
			}
		    if window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "n_wavedash", spr_dir]);
			sound_play(sound_get("fireworks"));
			}
		}
		break;
	case AT_FAIR:
	    if window = 2 && !hitpause {
			switch window_timer{
			    case 4:
				sound_play(sound_get("block_chip1"));
				break;
				case 6:
				sound_play(sound_get("block_chip2"));
				break;
				case 8:
				sound_play(sound_get("block_chip3"));
				break;
			}
		}
	    break;
	case AT_FSTRONG:
		if window == 2 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash_start", -spr_dir]);
			sound_play(asset_get("sfx_swipe_heavy2"));
		}
		break;
	case AT_USTRONG:
	    if window == 1 && window_timer == 1 && !hitpause{
		    sound_play(sound_get("laser_charge"));
			}
		if window == 2 && !hitpause{
		    if window_timer == 1{
			array_push(phone_dust_query, [x - 16, y, "dash_start", spr_dir]);
			array_push(phone_dust_query, [x + 16, y, "dash_start", -spr_dir]);
			}
			if window_timer == 3{
			sound_play(sound_get("laser_fire"));
			}
		}
		break;
	case AT_DSTRONG:
	    if ground_type == 2 {
	    sprite_change_offset("dstrong_indicator_spawn", 24, 22);
        sprite_change_offset("dstrong_indicator_loop", 24, 22);
        sprite_change_offset("dstrong_spike", 24, 22);
		sprite_change_offset("dstrong_indicator_spawn_dys", 24, 22);
        sprite_change_offset("dstrong_indicator_loop_dys", 24, 22);
        sprite_change_offset("dstrong_spike_dys", 24, 22);
		} else {
	    sprite_change_offset("dstrong_indicator_spawn", 24, 24);
        sprite_change_offset("dstrong_indicator_loop", 24, 24);
        sprite_change_offset("dstrong_spike", 24, 24);
		sprite_change_offset("dstrong_indicator_spawn_dys", 24, 24);
        sprite_change_offset("dstrong_indicator_loop_dys", 24, 24);
        sprite_change_offset("dstrong_spike_dys", 24, 24);
	    }
	
	    if window == 1 && !hitpause{
		    if !has_rune("H") {
		    //SPIKE SET 1
		    if window_timer == 1{
			create_hitbox(AT_DSTRONG, 2, x + 56, y - 22);
			create_hitbox(AT_DSTRONG, 2, x - 56, y - 22);
			spike_count = 1;
			}
			//SPIKE SET 2
			if strong_charge == 8{
			create_hitbox(AT_DSTRONG, 2, x + 104, y - 22);
			create_hitbox(AT_DSTRONG, 2, x - 104, y - 22);
			spike_count = 2;
			sound_play(sound_get("spike_warn_2"));
			}
			//SPIKE SET 3
			if strong_charge == 32{
			create_hitbox(AT_DSTRONG, 2, x + 152, y - 22);
			create_hitbox(AT_DSTRONG, 2, x - 152, y - 22);
			spike_count = 3;
			sound_play(sound_get("spike_warn_3"));
			}
			//SPIKE SET 4
			if strong_charge == 56{
			create_hitbox(AT_DSTRONG, 2, x + 200, y - 22);
			create_hitbox(AT_DSTRONG, 2, x - 200, y - 22);
			spike_count = 4;
			sound_play(sound_get("spike_warn_4"));
			}
			} else {
			if window_timer == 1{
			create_hitbox(AT_DSTRONG, 2, x + 56, y - 22);
			create_hitbox(AT_DSTRONG, 2, x - 56, y - 22);
			
			create_hitbox(AT_DSTRONG, 2, x + 104, y - 22);
			create_hitbox(AT_DSTRONG, 2, x - 104, y - 22);
			
			create_hitbox(AT_DSTRONG, 2, x + 152, y - 22);
			create_hitbox(AT_DSTRONG, 2, x - 152, y - 22);
			
			create_hitbox(AT_DSTRONG, 2, x + 200, y - 22);
			create_hitbox(AT_DSTRONG, 2, x - 200, y - 22);
			spike_count = 4;
			sound_play(sound_get("spike_warn_4"));
			}
			}
		}
		
		if window == 2 && window_timer == 1{
			array_push(phone_dust_query, [x - 16, y, "dash_start", 1]);
			array_push(phone_dust_query, [x + 16, y, "dash_start", -1]);
		}
		break;
	case AT_DATTACK:
	
	    if has_rune("N") {
		set_num_hitboxes(AT_DATTACK, 1);
		set_hitbox_value(AT_DATTACK, 1, HG_HIT_LOCKOUT, 10);
		
		if window = 1 {
		set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
		} else if window = 2 {
		set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 3);
		}
		
		    if (left_down || right_down) && attack_down {
			rune_dattacking = 4;
			}
			if rune_dattacking > 0 {
			rune_dattacking--;
			set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 9);
			set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 10);
            set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 1);
			    if window = 3 && window_timer = 5{
			    attack_end();
			    }
			} else {
			set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 0);
			set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 0);
            set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 0);
			}
		}
	
	    if phone_cheats[CHEAT_SPEEP] =  0 {
        move_cooldown[AT_DATTACK] = 30;
		}
		if !hitpause{
		    if (left_down && spr_dir == 1){ spr_dir = -1; hsp *= -1 }
			if (right_down && spr_dir == -1){ spr_dir = 1; hsp *= -1 }
		}
		break;
		
	
	// ========== NORMAL NODES ==========	
	case AT_NSPECIAL:
	
		if window == 1 && window_timer == 9 {
			// count nodes and find oldest one
			var oldest_node = noone;
			var oldest_bday = -1;
			var num_of_nodes = 0;
			with obj_article1 if player_id == other.id {
			    // find oldest node
			    if type == 0 { // excludes power node
			    	num_of_nodes += 1;
			        if bday < oldest_bday || oldest_bday == -1 {
			        	oldest_bday = bday;
			        	oldest_node = id;
			        }
			    }
			}
			
			// kill oldest node if necessary
			if num_of_nodes >= nodes_max {
				oldest_node.state = PS_DEAD;
				if num_of_nodes > nodes_max {
					print("hey where did this extra article come from");
				}
			}
			
			// create new node
			var n_x = x - 10 * spr_dir;
			var n_y = y - 56;
			var new_node = instance_create(n_x, n_y, "obj_article1");
			if free {
				new_node.sprite_index = spr_node_air;
				new_node.mask_index = spr_node_air;
			}
			
			// disconnect from previous node
			user_event(3);
		}
		break;
	
	// ========== POWER NODES ==========
	case AT_DSPECIAL:
	
	    if free {
		if !has_rune("E") {
	    	set_attack( AT_DSPECIAL_AIR );
		} else if (window = 1 && window_timer > 7 && special_down) {
		    attack = AT_DSPECIAL_AIR;
		}
		}
	
		if (!hitpause && !was_parried && has_hit){
			can_jump = true;
		}
		can_fast_fall = false;
		can_move = false;
		
		// create node
		if window == 1 && window_timer == 9 {
			if instance_exists(node_power) {
				node_power.state = PS_DEAD;
			}
			
			var n_x = x - 10 * spr_dir;
			var n_y = y - 56;
			node_power = instance_create(n_x, n_y, "obj_article1");
			node_power.type = 1;
			if free {
			node_power.sprite_index = spr_node_power_air;
			} else {
			node_power.sprite_index = spr_node_power;
			}
			
			// disconnect from previous node
			user_event(3);
		}
		break;
	// =================================
	
	case AT_FSPECIAL:
		can_move = false;
		can_fast_fall = false;
	
	//stole from lemons thank u lemones
	var homingspeed = 15;
	//var maxdist = 600;
	lock_x = 9999;
	lock_y = 9999;
		
	if (window == 1 && window_timer > 6 ) || (window == 2) {
		danfslaser_targid = noone;
		danfslaser_angle = point_direction(x, y, x + spr_dir, y);
		//danfslaser_dist = maxdist;
		
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 10);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, 10);
		
		set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_HSPEED, 10);
		set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, 10);
		
		set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_HSPEED, 10);
		set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_VSPEED, 10);
		
		var closest_dist = -1;
		
		with (asset_get("oPlayer")) {
			if (player != other.player){
				var sameteam = false;
				if get_match_setting(SET_TEAMS) && get_player_team(other.player) == get_player_team(player) {
					var sameteam = true;
				}
				
				var donttarget = (sameteam || state == PS_SPAWN || state == PS_RESPAWN || state == PS_DEAD);
					
				// targetting
				if !donttarget { //curr_dist <= maxdist && (curr_dist <= other.danfslaser_dist || other.danfslaser_targid == noone)
					var curr_dist = point_distance(x, y, other.x, other.y - 56);
					
					if other.danfslaser_targid == noone || curr_dist <= closest_dist {
						closest_dist = curr_dist;
						other.danfslaser_targid = id;
						other.danfslaser_angle = point_direction(other.x, other.y - 56, (abs(hsp) < abs(old_hsp) ? x : x+hsp), (abs(vsp) < abs(old_vsp) ? (y - 10) : (y - 10 - vsp) ));
						//other.danfslaser_dist = curr_dist;
						other.lock_x = x;
				        other.lock_y = y;
					}
				}
			}
		}
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, homingspeed * cos(degtorad(danfslaser_angle)) * spr_dir);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -homingspeed * sin(degtorad(danfslaser_angle)));
		
		set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_HSPEED, homingspeed * cos(degtorad(danfslaser_angle)) * spr_dir);
		set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, -homingspeed * sin(degtorad(danfslaser_angle)));
		
		set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_HSPEED, homingspeed * cos(degtorad(danfslaser_angle)) * spr_dir);
		set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_VSPEED, -homingspeed * sin(degtorad(danfslaser_angle)));
	}
		
		break;

	case AT_USPECIAL:
		can_fast_fall = false;
		can_wall_jump = true;
		fall_through = true;
		
		if window != 5{
		    if (x + hsp < get_stage_data(SD_LEFT_BLASTZONE_X)) {
			hsp = 0;
			x += 1;
			}
			if (x + hsp > get_stage_data(SD_RIGHT_BLASTZONE_X)) {
			hsp = 0;
			x -= 1;
			}
		}
		
		switch(window){
			case 1: // startup
			    popportunity = true;
			    clear_button_buffer(PC_SPECIAL_PRESSED);
				clear_button_buffer(PC_JUMP_PRESSED);
				//avoid the void
				if y + vsp >= get_stage_data(SD_BOTTOM_BLASTZONE_Y) {
				vsp = 0;
				}
				break;
			case 2: // bob downward
			    if has_rune("D") {
			    super_armor = true;
				}
			    vsp--;
				if vsp < 5 {
				window = 3;
				window_timer = 0;
				}
				if (special_pressed) || (jump_pressed){
				window = 5;
				window_timer = 0;
				}
				//avoid the void
				if y + vsp >= get_stage_data(SD_BOTTOM_BLASTZONE_Y) {
				vsp = 0;
				}
				break;
			case 3: // leveling out
			    vsp--;
			    if vsp < -3 {
				window = 4;
				window_timer = 0;
				}
				if (special_pressed) || (jump_pressed){
				window = 5;
				window_timer = 0;
				}
				break;
			case 4: // rise my creation
			    if !hitpause && ((y <= SD_TOP_BLASTZONE_Y + 128) || (vsp = 0) || (special_pressed) || (jump_pressed)){
				window = 5;
				window_timer = 0;
				}
			    if vsp >= -4{
			    vsp--;
				} else {
				vsp = -4;
				}
				break;
			case 5: // pop out
			    if has_rune("D") {
			    super_armor = false;
				}
			    if window_timer == 1 && !hitpause {
				sound_play(sound_get("bubble_leave"));
				spawn_hit_fx( x, y, pop_fx);
				vsp = -8;
				popportunity = false;
				}
				break;
		}
		break;
	
	case AT_TAUNT:
	if window == 2 && taunt_down{
		set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 9);
		} else if window == 2 && !taunt_down{
		set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 0);
		}
		if window_timer == 1{
			clear_button_buffer(PC_SHIELD_PRESSED);
		}
		if get_player_color(player) = 9 {
		    if window == 1 && window_timer = 1 && !hitpause {
			mistake = 0;
			annoyingplaying = true;
			sound_stop(sound_get("AnnoyingRageGameMusic"));  
			sound_play(sound_get("AnnoyingRageGameMusic"), true, 0, 1, 1);
			} else if window == 3 && window_timer = 1 && !hitpause {
			annoyingplaying = false;
			sound_stop(sound_get("AnnoyingRageGameMusic"));  
			}
		}
	
	
	//alts + reversing--------------------------------------------------------------------------
	if hat != "none" {
		switch (hat) {
			case "top":
			set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, (spr_dir = 1 ? 12 : 18 ));
			set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, (spr_dir = 1 ? 15 : 21 ));
			set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, (spr_dir = 1 ? 16 : 22 ));
			break;
			case "man":
			set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, (spr_dir = 1 ? 24 : 30 ));
			set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, (spr_dir = 1 ? 27 : 33 ));
			set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, (spr_dir = 1 ? 28 : 34 ));
			break;
			case "ice":
			set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, (spr_dir = 1 ? 36 : 42 ));
			set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, (spr_dir = 1 ? 39 : 45 ));
			set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, (spr_dir = 1 ? 40 : 46 ));
			break;
			case "uni":
			set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, (spr_dir = 1 ? 48 : 54 ));
			set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, (spr_dir = 1 ? 51 : 57 ));
			set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, (spr_dir = 1 ? 52 : 58 ));
			break;
		}
	} else if sprite_index = sprite_get("taunt") {
	set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, (spr_dir = 1 ? 0 : 6 )); //ni
	set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, (spr_dir = 1 ? 3 : 9 )); //ce
	set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, (spr_dir = 1 ? 4 : 10 ));
	}
	//------------------------------------------------------------------------------------------
	break;
	
	case AT_TAUNT_2:
	move_cooldown[AT_TAUNT_2] = 60;
		create_deathbox(x, y, 10, 10, player, true, 1, 1, 0);
	break;
	
	case AT_EXTRA_1:
	    if window = 1 && window_timer < 4 {
	    create_hitbox(AT_EXTRA_1, 1, x, y - 10);
	    }
		move_cooldown[AT_EXTRA_1] = 30;
	break;
	
	case 49:
	    trailoffset = random_func( 1, 10, true );
	    trailoffset2 = random_func( 2, 10, true );
		glitchnum = (random_func( 3, 4, true ) +1);
		    switch (glitchnum) {
			case 1:
            spawn_hit_fx( x - 5 + trailoffset2, y - 5 + trailoffset, glitch1);
			break;
			case 2:
            spawn_hit_fx( x - 5 + trailoffset2, y - 5 + trailoffset, glitch2);
			break;
			case 3:
            spawn_hit_fx( x - 5 + trailoffset2, y - 5 + trailoffset, glitch3);
			break;
			case 4:
            spawn_hit_fx( x - 5 + trailoffset2, y - 5 + trailoffset, glitch4);
			break;
			}
	break;
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
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

