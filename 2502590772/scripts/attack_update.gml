
if (is_master_player) exit;

//minun attack indexes
#macro AT_MINUN_JAB 0
#macro AT_MINUN_FTILT 2
#macro AT_MINUN_DTILT 3
#macro AT_MINUN_UTILT 39
#macro AT_MINUN_FSTRONG 40
#macro AT_MINUN_DSTRONG 42
#macro AT_MINUN_USTRONG 43
#macro AT_MINUN_DATTACK 44
#macro AT_MINUN_FAIR 45
#macro AT_MINUN_BAIR 46
#macro AT_MINUN_DAIR 47
#macro AT_MINUN_UAIR 48
#macro AT_MINUN_NAIR 49


//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


//allow cancelling normals into nspecial
if (!custom_clone && is_special_pressed(DIR_NONE) && has_hit && !hitpause && window == get_attack_value(attack, AG_NUM_WINDOWS)) {
	switch (attack) {
		//if they are using a normal AND the normal hits, they can cancel out of the last window.
		case AT_JAB:
		case AT_FTILT:
		case AT_DTILT:
		case AT_UTILT:
		case AT_DATTACK:
		case AT_NAIR:
		case AT_FAIR:
		case AT_BAIR:
		case AT_DAIR:
		case AT_UAIR:
		case AT_MINUN_JAB:
		case AT_MINUN_FTILT:
		case AT_MINUN_DTILT:
		case AT_MINUN_UTILT:
		case AT_MINUN_DATTACK:
		case AT_MINUN_FAIR:
		case AT_MINUN_BAIR:
		case AT_MINUN_DAIR:
		case AT_MINUN_UAIR:
		case AT_MINUN_NAIR:
		//strongs too?
		case AT_FSTRONG:
		case AT_DSTRONG:
		case AT_USTRONG:
		case AT_MINUN_FSTRONG:
		case AT_MINUN_DSTRONG:
		case AT_MINUN_USTRONG:
		case AT_FSTRONG_2:
		case AT_DSTRONG_2:
		case AT_USTRONG_2:
			safely_set_attack(AT_NSPECIAL);
		break;
	}
}


switch (attack) {

case AT_FSTRONG:
case AT_DSTRONG:
case AT_USTRONG:
case AT_MINUN_FSTRONG:
case AT_MINUN_DSTRONG:
case AT_MINUN_USTRONG:
	if (!custom_clone || window != 1 || hitpause) break;
	//ai can't charge strongs.
	if (window_timer == 1) skip_strong_charge = 0;
	else if (is_end_of_window()) {
		skip_strong_charge++;
		if (skip_strong_charge >= 2) {
			window++;
			window_timer = 0;
			strong_charge = 0;
		}
	}
break;



case AT_DAIR:
case AT_MINUN_DAIR:
	//stall and fall
	if (window <= 3 && !hitpause) hsp = clamp(hsp, -2.5, 2.5);
//don't break

//all other aerials:
case AT_NAIR:
case AT_FAIR:
case AT_BAIR:
case AT_UAIR:
case AT_MINUN_JAB:
case AT_MINUN_FAIR:
case AT_MINUN_BAIR:
case AT_MINUN_UAIR:
case AT_MINUN_NAIR:
	//the partner can walljump cancel aerials
	if (custom_clone) can_wall_jump = 1;
break;


case AT_JAB:
case AT_MINUN_JAB:
	switch (window) {
		case 1:
			if (window_timer == 1 && !hitpause) {
				//only the leader's jab flinches
				set_hitbox_value(attack, 1, HG_FORCE_FLINCH, !species_id);
			}
		break;

		case 5:
			if (hitpause) break;
			if (window_timer == 1) sound_play(asset_get("sfx_absa_jab1"), 0, noone, 0.3);
			else if (window_timer == 13) sound_play(asset_get("sfx_absa_jab2"), 0, noone, 0.3);
		break;
		case 6:
			if (attack_down && !was_parried) {
				window = 5;
				window_timer = 0;
				attack_end();
				destroy_hitboxes();
			}
		break;
	}
break;

case AT_NSPECIAL:
	if (hitpause || window_timer != 1) break;
	switch (window) {
		case 1:
			//if dspecial is used during this move, the player will use dspecial after this move completes.
			nspecial_buffer_into_dspecial = false;
		break;
		
		case 2:
		user_event(5); //user_event5.gml - spawn a baton.
			//can only use one nspecial per airtime
			nspecial_can_use_baton = false;
		break;
		
		case 4:
			//transition to dspecial
			if (nspecial_buffer_into_dspecial) {
				move_cooldown[AT_DSPECIAL] = 0;
				safely_set_attack(AT_DSPECIAL);
				window = 1;
				window_timer = 1;
			}
		break;
	}
break;


case AT_FSPECIAL: //plusle projectile
case AT_FSPECIAL_2: //minun projectile
	if (window == 1) can_move = false;
	can_fast_fall = true;
	if (window_timer != 1 || hitpause) break;
    switch (window) {
    	case 1:
    		//clear the button buffer on the AI teammate
    		clear_teammate_special_inputs_as_leader();
    	break;
    	case 2:
    		if (attack == AT_FSPECIAL_2) {
    			//minun's fireball is fancy
    			//borrow the coordinates from the hitbox in fspecial_2.gml
    			var article_x_offset = get_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X);
    			var article_y_offset = get_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y);
    			var new_article = instance_create(x + spr_dir * article_x_offset, y + article_y_offset, "obj_article2");
    			new_article.spr_dir = spr_dir;
    			new_article.clone_player_id = id;
    		}
    		//slow fall and speed
    		vsp = min(vsp, 2);
    		//hsp = clamp(hsp, -2, 2);
    	break;
    	case 3:
    		move_cooldown[AT_FSPECIAL] = 40;
    	break;
    }
break;

   
case AT_USPECIAL_GROUND:

	//uspecial_ground = used when minun or plusle is following their partner's uspecial
	can_wall_jump = true;
	if (window != 1) break;
	can_fast_fall = false;
	
	//stop following the teammate when they are no longer using uspecial
	var stop_following_teammate = true;
	if instance_exists(teammate_player_id) {
		with (teammate_player_id) {
			if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_USPECIAL || attack == AT_USPECIAL_2) && window <= 4) {
				stop_following_teammate = false;
			}
		}
	}
	
	if (hitpause) break;
	
	if (stop_following_teammate) {
		//print("uspecial - stop following - state" + get_state_name(teammate_player_id.state) + " window " + string(teammate_player_id.window))
		var other_uspecial_angle = teammate_player_id.uspecial_angle;
		if (teammate_player_id.uspecial_used_angle == noone) {
			window = 2;
			window_timer = 0;
		}
		else {
			safely_set_state(PS_PRATFALL);
		}
		hsp = lengthdir_x(4, other_uspecial_angle);
		vsp = min(lengthdir_y(4, other_uspecial_angle), 0);
		break;
	}

	//otherwise, follow
	spr_dir = teammate_player_id.spr_dir;
	var follow_angle = uspecial_get_teammate_follow_direction();
	var follow_distance = uspecial_get_teammate_follow_distance();
	
	var teammate_window = teammate_player_id.window;
	var teammate_window_timer = teammate_player_id.window_timer;
	
	switch (teammate_player_id.window) {
		//case 1:
		case 2:
			follow_distance = ease_expoInOut(0, round(follow_distance), teammate_player_id.window_timer, get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH) );
			x += round(lengthdir_x(follow_distance, follow_angle));
			y += round(lengthdir_y(follow_distance, follow_angle));
			hsp = clamp(hsp + lengthdir_x(0.5, follow_angle), -4, 4);
			vsp = clamp(vsp + lengthdir_y(0.5, follow_angle), -4, 4);
		break;
		
		case 3:
			if (follow_distance > 10 || teammate_player_id.window <= 1) {
			//smaller scaling if the other player is on window 1
			
			var homing_speed = min( follow_distance, ease_circIn(uspecial_travel_speed * 2, 0, teammate_window_timer, get_window_value(AT_USPECIAL, teammate_window, AG_WINDOW_LENGTH) ));
			}
			else {
				uspecial_move_to_teammate_follow_point();
				homing_speed = 4;
				follow_angle = teammate_player_id.uspecial_angle;
			}
			hsp = lengthdir_x(homing_speed, follow_angle);
			vsp = lengthdir_y(homing_speed, follow_angle);
		break;
		case 4:
			var other_uspecial_angle = teammate_player_id.uspecial_angle;
			hsp = lengthdir_x(4, other_uspecial_angle);
			vsp = lengthdir_y(4, other_uspecial_angle);
			
		
	}
	
	//go behind the other character
	depth = max(depth, teammate_player_id.depth + 1)
	
break;

case AT_USPECIAL:
case AT_USPECIAL_2:
	//can walljump cancel
    can_wall_jump = true;
    //can't fastfall
    can_fast_fall = 0;
    if (hitpause) break;
    switch (window) {
    	case 1:
    		if (window_timer == 1) {
    			uspecial_used_angle = noone;
    			uspecial_angle = 90;
    		}
    	break;
    		
    	case 2:
    		//fly in the direction of the joypad
    		if (is_end_of_window()) {
    			
    			//default to up if a direction is not held
    			if (!joy_pad_idle) uspecial_angle = round(joy_dir / 45) * 45;
    			else uspecial_angle = 90;
    			
				//don't allow this move to be chained twice in the same direction. if the player attempts this, choose the next best angle.
				if (uspecial_angle == uspecial_used_angle) {
					uspecial_angle = uspecial_choose_next_best_angle(uspecial_angle);
				}
				//change facing direction
				if (spr_dir == -sign(lengthdir_x(1, uspecial_angle))) spr_dir *= -1;
				
				//sweetspot fx
				if (attack == AT_USPECIAL_2) spawn_hit_fx(x, y - 30, vfx_uspecial_sweetspot_marker);
				//trail fx
    			spawn_hit_fx(x, y - 30, vfx_uspecial_trail);
    		}
			uspecial_drag_teammate();
			
    	break;
    	
    	case 3:
    		//zoom
    		hsp = lengthdir_x(uspecial_travel_speed, uspecial_angle);
    		vsp = lengthdir_y(uspecial_travel_speed, uspecial_angle);
    		if (sign(hsp) != 0) spr_dir = sign(hsp);
    		
    		//trail fx
    		spawn_hit_fx(x, y - 30, vfx_uspecial_trail);
    		
    		//sweetspot_fx
    		if (window_timer == 6 && attack == AT_USPECIAL) {
    			spawn_hit_fx(round(x + hsp), round(y - 30 + vsp), vfx_uspecial_sweetspot_marker);
    		}
    		//drag teammate - final frame
    		else if (window_timer <= 1) uspecial_drag_teammate();
    	break;
    	
    	case 4:
    		
    		
			//if the teammate is still holding on and special is pressed again, use their special too
			if (!was_parried && uspecial_used_angle == noone && (special_pressed || special_down) 
			//&& window_timer >= 5
			&& instance_exists(teammate_player_id) && teammate_player_id.was_parried == false && teammate_player_id.attack == AT_USPECIAL_GROUND 
			&& (teammate_player_id.state == PS_ATTACK_AIR || teammate_player_id.state == PS_ATTACK_GROUND) ) {
				with (teammate_player_id) {
					move_cooldown[AT_USPECIAL] = 0;
					if (species_id == 0) safely_set_attack(AT_USPECIAL);
					else safely_set_attack(AT_USPECIAL_2);
					window = 2;
					window_timer = 0;
					uspecial_used_angle = other.uspecial_angle;
					spr_dir = other.spr_dir;
				}
				safely_set_attack(AT_USPECIAL_GROUND);
				window = 1;
				window_timer = 1;
				vsp = 0;
				hsp = 0;
			}
			else if (!was_parried && vsp > 0) && !free {
				hsp *= 0.6;
				safely_set_state(PS_LANDING_LAG);
			}
			
			else if (window_timer == 1) {
    			uspecial_ledge_mercy();
    		}
		break;
		
		case 5:
			if (window_timer == 1 && free) vsp -= 1;
			else if (is_end_of_window() && !free && !was_parried ) safely_set_state(PS_LANDING_LAG);
		break;
    }
break;
    
case AT_DSPECIAL:
	//can't move during dspecial
    can_move = false;
    //fall slowly
    vsp = clamp(vsp, -4, 2);
    
    if (state_timer == 30 && !hitpause && instance_exists(teammate_player_id)) {
    	with (teammate_player_id) { helping_hand_buff_activate(); }
    }
    else if (state_timer < 2) {
    	with (master_player_id.article_charge_zone) {
    		attached_to_unit_player_id = other;
    		sprite_index = spr_charge[other.species_id];
    	}
    } 
    
    //maintain charge level
    with (master_player_id) {
    	hh_charge_expiry_timer = hh_maximum_charge_expiry_timer;
    }
    
    if (!hitpause) {
    	
    	if (window == get_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS) && master_player_id.hh_charge_level > 0) {
    		safely_set_attack(AT_DSPECIAL_2);
    		break;
    	}
    	
    	var clap = false;
	    var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH) - 1;
	    var half_window_2_length = floor(get_window_value(attack, 2, AG_WINDOW_LENGTH) / 2) - 1;
	    switch (window) {
	    	case 1:
	    		if (window_timer == window_length) clap = true;
	    	break;
	    	case 2:
	    		if (window_timer == half_window_2_length || window_timer == window_length) clap = true;
	    	break;
	    }
	    if (clap) {
	    	var volume = clamp(5 - state_timer / 250, 0, 1); //fadeout volume
	    	//var volume = 0.9 + random_func(player + 5, 10, false) / 100; //random volume
	    	//var volume = 0.9;
	    	var pitch = 0.975 + random_func(player + 10, 10, false) / 200;
	    	sound_play(sound_get("hh"), 0, noone, volume, pitch);
	    }
    }

break;

case AT_DSPECIAL_2:
	//discharge.
	//can't move during dspecial
    can_move = false;
    //fall slowly
    vsp = clamp(vsp, -4, 2);
    if (hitpause) break;
    
    switch (window) {
    	
    	case 1:
    	    if (window_timer <= 1) {
    			local_hh_charge_level = master_player_id.hh_charge_level;
    			master_player_id.hh_charge_level = 0;
    			master_player_id.hh_charge_percent = 0;
    		}
    	break;
    	
    	case 2:
    		//have a window of superarmor
    		super_armor = true;
    	break;
    	
    	case 3:
    		super_armor = true;
    		
    		if (is_end_of_window()) {
    			super_armor = false;
    			window = (species_id * 3) + (local_hh_charge_level) + 3;
    			window_timer = 0;
    			//spend all charges
    			master_player_id.hh_charge_level = 0;
    			master_player_id.hh_charge_percent = 0;
    			
    			//spawn explosion article
    			var particle_article = instance_create(x, y - 30, "obj_article3");
    			particle_article.article_id = 1;
    			particle_article.sprite_index = spr_dspecial_chargeboom[(window - 4) mod 3];
    		}
    	break;
    	
    	case 4:
    	case 5:
    	case 6:
    	case 7:
    		//plusle's level 1, 2 and 3.
    		//minun's level 1.
    		//spawn hit fx
    		if (window_timer == 1) {
    			//spawn_hit_fx(x, y - 30, vfx_dspecial_discharge[ species_id, (window - 4) mod 3 ] );
    		}
    		//skip ahead to the final window at the end.
    		else if (is_end_of_window()) {
    			window = get_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS);
    			window_timer = 0;
    		}
    	break;
    	
    	case 8:
    	case 9:
    	    //minun's level 2 and 3.
    	    //spawn hit fx
    		if (window_timer == 1) {
    			//spawn_hit_fx(x, y - 30, vfx_dspecial_discharge[ species_id, window - 7 ] );

    		}
    		//go to the previous window. (e.g. if this is minun's level 3, perofrm minun's level 2 next.)
    		else if (is_end_of_window()) {
    			window--;
    			window_timer = 0;
    			
    			//spawn explosion article
    			var particle_article = instance_create(x, y - 30, "obj_article3");
    			particle_article.article_id = 1;
    			particle_article.sprite_index = spr_dspecial_chargeboom[(window - 4) mod 3];
    		}
    	break;
    }
    	
break;



case AT_FSTRONG_2:
	switch (window) {
		case 1: //startup: slow fall if sliding off the edge
			vsp = min(vsp, 4);
			if (free) can_move = false;
		break;
		
		
		case 3: //repeating window
		
			if (!hitpause && window_timer mod 4 == 0) {
				spawn_hit_fx(x, y, vfx_fstrong2_trail);
			}
		
			if ((has_hit && hitpause)) {
				window = 5;
				window_timer = 0;
				old_hsp = -spr_dir * 4;
				old_vsp = -7;
				break;
			}
			
			if (window_timer > 1 && hsp == 0 && !hitpause && place_meeting(x + spr_dir, y, asset_get("par_block"))) {
				window = 5;
				window_timer = 0;
				old_hsp = -spr_dir * 4;
				old_vsp = -7;
				has_hit = true;
				break;
			}
			

			
			//if (hitpause) break;
			hsp = get_window_value(attack, window, AG_WINDOW_HSPEED) * spr_dir  * (1 + strong_charge / 120);
			if (window_timer >= strong_charge / 3 + 10) {
				window = 4;
				window_timer = 0;
			}
		break;
		
		case 4: //didn't hit wall/player: recovery
			if (!free) can_move = 0;
			vsp = min(vsp, 2);
			if (!hitpause) {
				if (window_timer == 1) {
					destroy_hitboxes();
					hsp *= 0.5;
				}
				//if the hitbox hits on the very last frame, still transition to window 5
				if (has_hit) {
					window = 5;
					window_timer = 0;
					old_hsp = -spr_dir * 4;
					old_vsp = -7;
					break;
				}
			}
			if (is_end_of_window()) {
				window = 7;
				window_timer = 0;
			}
		break;
		
		case 5: //hit wall/player
			if (!hitpause) destroy_hitboxes();
		break;
		
		case 6:
			if (has_hit && !was_parried) iasa_script();
		break;

		case 7: //final frame
			if (is_end_of_window() && !has_hit && !was_parried) {
				if (free) {
					safely_set_state(PS_PRATFALL);
				}
				else safely_set_state(PS_PRATLAND);
			}
		break;
	}
break;

case AT_DSTRONG_2:
	if (window_timer == 1 && window == 1 && strong_charge == 0 && !hitpause) {
		var new_fx = spawn_hit_fx(x, y - 60, vfx_dstrong_thundertell);
		new_fx.spr_dir *= 2;
		new_fx.image_yscale = 2;
	}
break;


case AT_TAUNT_2:
	if (custom_clone) {
		//stop taunting when the leader stops taunting
		if (!instance_exists(teammate_player_id) || teammate_player_id.attack != AT_TAUNT_2 ||  teammate_player_id.state != PS_ATTACK_GROUND) {
			set_state(PS_IDLE);
		}
		break;
	}
	//make the teammate taunt.
	if (state_timer > 40) {
		if (!taunt_down && !special_down) safely_set_state(PS_IDLE);
		break;
	}
	
	if (window == 1 && instance_exists(teammate_player_id)) {
		with (teammate_player_id) {
			if (state == PS_IDLE && point_distance(x, y, other.x, other.y) <= 150) {
				move_cooldown[AT_TAUNT] = 0;
				safely_set_attack(AT_TAUNT);
				window = 1;
				window_timer = other.window_timer;
				spr_dir = other.spr_dir;
			}
		}
	}
	
break;

}



#define swap_leader
if (custom_clone) return;
custom_clone = true;
with (teammate_player_id) {
	custom_clone = false;
	teammate_player_id = other;
}
return;


#define safely_set_attack
attack_end();
destroy_hitboxes();
set_attack(argument0);
hurtboxID.sprite_index = get_attack_value(argument0, AG_HURTBOX_SPRITE);
return;

#define safely_set_state
attack_end();
destroy_hitboxes();
set_state(argument0);
return;




#define uspecial_get_teammate_follow_direction
return  point_direction(x, y, teammate_player_id.x, teammate_player_id.y + 6);
//return point_direction(x, y, teammate_player_id.x, teammate_player_id.y);
#define uspecial_get_teammate_follow_distance
 return point_distance(x, y, teammate_player_id.x, teammate_player_id.y + 6);
//return point_distance(x, y, teammate_player_id.x, teammate_player_id.y);
#define uspecial_move_to_teammate_follow_point
x = teammate_player_id.x;
y = teammate_player_id.y + 6;
return;
#define uspecial_choose_next_best_angle(previous_angle)

//the closest angle to the one the player tried to input:
var favor_direction = (!joy_pad_idle) * sign(previous_angle - joy_dir);
//var favor_direction
if (favor_direction == 0) {
	//or, the closest angle to straight up:
	favor_direction = sign(angle_difference(90, previous_angle));
	if (favor_direction == 0) {
		//or finally, the angle their character is facing in.
		favor_direction = -spr_dir;
	}
}
return previous_angle + favor_direction * 45;

#define clear_teammate_special_inputs_as_leader
//clear the button buffer on the AI teammate when the leader performs a special
if (!custom_clone && instance_exists(teammate_player_id)) {
	with (teammate_player_id) {
		clear_button_buffer(PC_SPECIAL_PRESSED);
	}
}
return;

#define uspecial_home_towards_uspecial_point

hsp = lengthdir_x(homing_speed, follow_angle);
	vsp = lengthdir_y(homing_speed, follow_angle);
return;


#define helping_hand_buff_activate
has_been_buffed_by_helping_hand = true;

var i = 0;
repeat (50) {
	var n = 1;
	repeat (get_num_hitboxes(i)) {
		set_hitbox_value(i, n, HG_DAMAGE, master_player_id.attack_base_damage_boosted[i, n]);
		set_hitbox_value(i, n, HG_BASE_HITPAUSE, master_player_id.attack_base_hitpause_boosted[i, n]);
		set_hitbox_value(i, n, HG_BASE_KNOCKBACK, master_player_id.attack_base_knockback_boosted[i, n]);
		n++;
	}
	i++;
}

/*
var i = 0;
repeat(array_length(master_player_id.ha_attack_index)) {
	var array_index = master_player_id.ha_attack_index[i];
	var n = 1;
	repeat (get_num_hitboxes(i)) {
		set_hitbox_value(array_index, n, HG_DAMAGE,         master_player_id.ha_attack_base_damage_boosted[i, n]   );
		set_hitbox_value(array_index, n, HG_BASE_HITPAUSE,  master_player_id.ha_attack_base_hitpause_boosted[i, n] );
		set_hitbox_value(array_index, n, HG_BASE_KNOCKBACK, master_player_id.ha_attack_base_knockback_boosted[i, n]);
		n++;
	}
	i++;
}
*/
return;


#define is_end_of_window
return (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1);


#define uspecial_ledge_mercy
//if uspecial almost reached the ledge, teleport up onto it anyway.
var xx = x + spr_dir;
var par_block = asset_get("par_block");
var step = 32;
if (!place_meeting(xx, y, par_block) || place_meeting(xx, y - step, par_block)) return;

x += spr_dir;
y -= step;
//after teleporting onto the step, move downwards as far as possible.
for (step /= 2; step < 1; step /= 2) {
	if (!place_meeting(x, y + step, par_block)) y += step;
}

#define uspecial_drag_teammate

if (!instance_exists(teammate_player_id)) return;
var teammate_dist = point_distance(x - spr_dir * 30, y + 30, teammate_player_id.x, teammate_player_id.y);
if (teammate_dist <= uspecial_maximum_team_up_distance) { // && y < teammate_player_id.y) {

	with (teammate_player_id) {
	
		var can_transition = true;
		
		switch (state) {
			//the teammate can't transition out of these states. everything else - even hitstun - is free game.
			case PS_DEAD:
			case PS_SPAWN:
			case PS_RESPAWN:
			case PS_FROZEN:
			case PS_WRAPPED:
			case PS_ROLL_FORWARD:
			case PS_ROLL_BACKWARD:
			case PS_TECH_GROUND:
			case PS_TECH_FORWARD:
			case PS_TECH_BACKWARD:
			case PS_PARRY:
				//never interrupt these states.
				can_transition = false;
			break;
			case PS_PARRY_START:
			case PS_AIR_DODGE:
				//only the teammate can be pulled out of these states.
				if (!custom_clone) can_transition = false;
			break;
			case PS_HITSTUN:
			case PS_HITSTUN_LAND:
				//don't pull the teammate out of hitstun instantly.
				if (hitpause || state_timer < 10) can_transition = false;
			break;
			
			case PS_ATTACK_GROUND:
			case PS_ATTACK_AIR:
				//the leader can pull the teammate out of uspecial, unless they're using dspecial.
				if (attack == AT_DSPECIAL || attack == AT_DSPECIAL_2) { can_transition = false; break; }
			break;
		}
		
		//the leader has to manually accept the team-up uspecial, by pressing or using up-special.
		if (can_transition && !custom_clone) {
			can_transition = ((is_special_pressed(DIR_UP) && (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL) ) || 
			( (attack == AT_USPECIAL || attack == AT_USPECIAL_2) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && window <= 1 && uspecial_used_angle == false) );
		}
		
		
		
		if (can_transition) safely_set_attack(AT_USPECIAL_GROUND);
	}
}


#define is_state_an_attack_state(check_state)
return (check_state == PS_ATTACK_AIR || check_state == PS_ATTACK_GROUND);


#define manual_landing_lag


if (!instance_exists(teammate_player_id) || teammate_player_id.attack != attack || !is_state_an_attack_state(teammate_player_id.state)) {
	attack_end();
}
#define spawn_hit_fx_2x(x_pos, y_pos, fx)
var new_fx = spawn_hit_fx(x_pos, y_pos, fx);
new_fx.spr_dir *= 2;
new_fx.image_yscale = 2;
new_fx.image_index = 3;
