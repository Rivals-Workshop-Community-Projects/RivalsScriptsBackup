//old AI script I would finish if I had infinite time.

//ai_update - called every frame for this character as a CPU

xdist = abs(ai_target.x - x);
ydist = abs(ai_target.y - y);



mawral_ai_target_dist = point_distance(x, y, ai_target.x, ai_target.y); 
mawral_ai_target_dist_predict = point_distance(x, y, ai_target.x + ai_target.hsp * temp_level, ai_target.y + ai_target.vsp * temp_level);
ai_target_angle = point_direction(x, y, ai_target.x, ai_target.y);
ai_target_xdir = sign(ai_target.x - x + spr_dir / 2);
ai_target_weighted_damage = (2 - min(ai_target.knockback_adj, 1.8) ) * get_player_damage( ai_target.player );

scr_mawral_ai_predict_target_position();

if (epinel_move_positions_loaded == false) {
	
	epinel_move_positions_loaded = true;
	
	mawral_ai_defensive_aggressive = 0;
	mawral_ai_reactive_predictive = 0;
	mawral_ai_opponent_reach = 150;
	mawral_ai_opponent_speed = 6.5;
	mawral_ai_resource_meter = 0;
	
	for(i = 1; i <= 41; i += 1) {
		epinel_move_reach_x[i] = get_hitbox_value(i, 1, HG_HITBOX_X) * 1.5; 
		epinel_move_reach_x[i] += round(sign(epinel_move_reach_x[i]) * get_hitbox_value(i, 1, HG_WIDTH) * 0.75);
		epinel_move_reach_y[i] = get_hitbox_value(i, 1, HG_HITBOX_Y) * 1.5;
		epinel_move_reach_y[i] += round(sign(epinel_move_reach_y[i]) * get_hitbox_value(i, 1, HG_HEIGHT) * 0.75);
	}
	//spawn_hit_fx(round(x), round(y), 16);
	//manual adjustments
	epinel_move_reach_y[AT_UAIR] -= 20;
	epinel_move_reach_x[AT_FAIR] += 40;
	epinel_move_reach_x[AT_DAIR] += 60;
	epinel_move_reach_y[AT_DAIR] += 60;
	epinel_move_reach_x[AT_BAIR] -= 10;
	epinel_move_reach_x[AT_NAIR] += 10;
	epinel_move_reach_y[AT_NAIR] += 20;
	epinel_move_reach_x[AT_FTILT] += 15;
	//epinel_move_reach_x[AT_UTILT] += 5;
	epinel_move_reach_y[AT_UTILT] -= 5;
	epinel_move_reach_x[AT_DSPECIAL] += 80;
	epinel_move_reach_x[AT_FSPECIAL] += 100;
	epinel_move_reach_x[AT_FSPECIAL_AIR] += 50;
	epinel_move_reach_y[AT_FSPECIAL_AIR] += 50;
	epinel_move_reach_x[AT_FSTRONG] += 30;
	epinel_move_reach_y[AT_USTRONG] += 10;
	
	
	//get recovery times for each attack
	with (oPlayer) {
		for(var i = 1; i <= 41; i += 1) {
			
			if (get_num_hitboxes(i) <= 0) {
				other.mawral_ai_move_final_attack_window[player, i] = 0;
				other.mawral_ai_move_final_attack_end_frame[player, i] = 0;
				continue;	
			}
			
			var slowest_hitbox = 0;
			var slowest_hitbox_window = 0;
			var slowest_hitbox_end_frame = 0;
			var slowest_hitbox_score = 0;
			var this_attack_window_count = get_attack_value(i, AG_NUM_WINDOWS);
			for (var n = 1; n <= get_num_hitboxes(i); n++) {
				
				var hb_window = get_hitbox_value(i, n, HG_WINDOW)
				
				if (hb_window > this_attack_window_count) continue;
				
				var hb_window = get_hitbox_value(i, n, HG_WINDOW)
				var hb_crea_frame = get_hitbox_value(i, n, HG_WINDOW_CREATION_FRAME);
				var hb_lifetime = get_hitbox_value(i, n, HG_LIFETIME);
				if (get_hitbox_value(i, n, HG_HITBOX_TYPE) == 2) hb_lifetime = min(hb_lifetime, 7);
				var hb_score = hb_window * 100 + hb_crea_frame + hb_lifetime;
				if (hb_score > slowest_hitbox_score) {
					slowest_hitbox = n;
					slowest_hitbox_window = hb_window;
					slowest_hitbox_end_frame = hb_crea_frame + hb_lifetime;
					slowest_hitbox_score = hb_score;
				}
			}
			
			for (var n = slowest_hitbox_window; n <= this_attack_window_count; n++) {
				var this_window_length = get_window_value(i, n, AG_WINDOW_LENGTH);
				if (slowest_hitbox_end_frame > this_window_length) {
					slowest_hitbox_end_frame -= this_window_length;
					slowest_hitbox_window++;
				}
				else {
					break;
				}
			}
			
			other.mawral_ai_move_final_attack_window[player, i] = slowest_hitbox_window;
			other.mawral_ai_move_final_attack_end_frame[player, i] = slowest_hitbox_end_frame;
		}
		
	}
}



if (get_training_cpu_action() == CPU_FIGHT) {


switch (state_cat) {


case SC_HITSTUN:
	//drift away from the opponent if it doesn't kill us.
	if (state_timer > (8 - temp_level)) break;
	if (!hitpause && free && temp_level > 4) {
		scr_mawral_ai_hitstun_drift();
	}
break;

case SC_GROUND_NEUTRAL:
case SC_AIR_NEUTRAL:
	
	var tempvar_delay = max(0, ceil(4 - temp_level / 2));
	//if (state_timer < tempvar_delay) {attack_down = 0; break; } 
	
	
	//was our target hit, and should we go for a followup?
	if (state_timer < tempvar_delay + 5
	 && (has_hit_player || prev_state == PS_FIRST_JUMP || prev_state == PS_ATTACK_AIR || prev_state == PS_ATTACK_GROUND || prev_state == PS_LANDING_LAG || ai_target.state_cat == SC_HITSTUN) ) {
		scr_mawral_ai_select_followup_move();
	}
	else if ((abs(hsp > 4) && sign(round(hsp)) == sign(x - ai_target.x)) || mawral_ai_target_dist_predict <= 40 ) {
		scr_mawral_ai_select_approach_move();
	}
	else if (!scr_mawral_ai_attempt_to_platform_waveland()) {

	}

break;

case SC_GROUND_COMMITTED:
case SC_AIR_COMMITTED:
	switch (state) {
		case PS_ATTACK_AIR:
			if (hitstop > 0) {
				//spawn_hit_fx(x, y, 14);
				
				if (hitstop < 2 &&  ai_target.vsp > -20 && ai_target.old_vsp > -20 
				 && ( place_meeting(x + hsp, y + 60, asset_get("par_block")) 
				  ||  place_meeting(x + hsp, y + 60, asset_get("par_jumpthrough")) ) ) {
					scr_perform_fastfall_input();
				}
				
				break;
			}
			//hold towards the opponent during the first frame of the attack.
			if (state_timer < 1 && !ai_recovering) scr_input_hold_direction_towards_target();
			else {

				//drift towards the opponent unless the attack's first two windows missed.
				var targetwindow = get_hitbox_value(attack, 1, HG_WINDOW) + 1;
				if (window <= targetwindow && abs(ai_target.x - x) < 20 && !ai_recovering) {
					left_down = 0; right_down = 0; break;
				}
				var targetdirection = sign(ai_target.x - x);
				if (window <= targetwindow || has_hit_player) {
					left_down = (targetdirection == -1); right_down = (targetdirection == 1);
				}
				else if (!ai_recovering) {
					left_down = (targetdirection == 1); right_down = (targetdirection == -1);
				}
			}
			scr_mawral_ai_attack_update();
		break;

		case PS_ATTACK_GROUND:
			if (state_timer <= 1 && !hitpause && attack != AT_JAB && !ai_recovering && !free && ai_target_xdir != 0) spr_dir = ai_target_xdir;//scr_input_hold_direction_towards_target();
			if (!hitpause && can_attack && has_hit_player) { 
				scr_mawral_ai_select_followup_move();
			}
			scr_mawral_ai_attack_update();
		break;
		
		case PS_JUMPSQUAT:
			//if (!free && state_timer == 0 && ai_target_xdir != 0) spr_dir = ai_target_xdir;
		break;
		
		case PS_DASH:
			if (scr_mawral_ai_player_is_moving_away_from_stage_center() && scr_mawral_ai_is_target_offstage) {
				jump_pressed = true; jump_down = true;
			}
			else {
				if ((abs(hsp > 4) && sign(round(hsp)) == sign(x - ai_target.x)) || mawral_ai_target_dist_predict <= 40 ) {
					scr_mawral_ai_select_approach_move();
				}
			}
		break;
		
		case PS_WALK:
		case PS_CROUCH:
		case PS_IDLE:
			if (target.y > y && epinel_other_standing_on_platform_id <= 0) down_hard_pressed = true;
			if ((abs(hsp > 4) && sign(round(hsp)) == sign(x - ai_target.x)) || mawral_ai_target_dist_predict <= 40 ) {
				scr_mawral_ai_select_approach_move();
			}
			
		break;
		
		case PS_PRATFALL:
			scr_input_hold_direction_towards_center_stage();
		break;
			
		default:
		
		break;
	}
break;

} //end switch (state_cat)

scr_mawral_ai_strategy_logic();
scr_mawral_ai_maneuver_logic();

scr_mawral_ai_handle_buffers();
} //end if (get_training_cpu_action() == CPU_FIGHT)

if (state_timer == 1) {
	//begin state.

}







if (ai_recovering) {
	//lock certain moves while recovering.
	if (free) {
		move_cooldown[AT_DSPECIAL] = max(move_cooldown[AT_DSPECIAL], 2);
		move_cooldown[AT_DAIR] = max(move_cooldown[AT_DAIR], 2);
		if (y > room_height / 2) {
			move_cooldown[AT_FSPECIAL] = max(move_cooldown[AT_FSPECIAL], 2);
			move_cooldown[AT_FAIR] = max(move_cooldown[AT_FAIR], 2);
			move_cooldown[AT_NAIR] = max(move_cooldown[AT_NAIR], 2);
			if (!has_walljump) {
				move_cooldown[AT_NSPECIAL] = max(move_cooldown[AT_NSPECIAL], 2);
			}
		}
		
	}
	
	//consider using n-special if we have enough height and the target is close.
	if (has_walljump && y < room_height / 2 && mawral_ai_target_dist_predict < 300) {
		attack_down = 0; special_pressed = 1; up_down = 0; down_down = 0; left_down = 0; right_down = 0;
	}
	//use uspecial if we still have walljump and are right at the wall.
	else if (move_cooldown[AT_USPECIAL] <= 0 && has_walljump && place_meeting(x + sign(x - room_width / 2) * 2, y, asset_get("par_block"))) {
		scr_input_perform_move(AT_USPECIAL);
	}
	//always use u-air to recover where appropriate.
	else if (move_cooldown[AT_UAIR] <= 0 && y > 0 && (vsp > 3 || scr_mawral_ai_is_player_close_to_bottom_blastzone()) 
	  && (epinel_uair_jump_counter <= 0 || (epinel_uair_jump_counter + epinel_consecutive_uair_jumps < 2 && !scr_mawral_ai_is_player_close_to_bottom_blastzone()) ) ) {
		attack_pressed = 1; special_pressed = 0; up_down = 1; down_down = 0; 
		if (x > room_width / 2) { left_down = 1; right_down = 0; left_pressed = 1; right_pressed = 0; }
		else                    { left_down = 0; right_down = 1; left_pressed = 0; right_pressed = 1; }
	}
	
	//if (attack == AT_DSPECIAL_AIR) {
    //    if (y >= room_height * 0.8 && epinel_grabbed_player_object_id <= 0) { shield_pressed = true; shield_down = true;  }
    //}
    
    //walljump out of walljump-cancellable moves.
    if (state = PS_ATTACK_AIR && djumps > 0 && can_wall_jump && has_walljump) {
    	jump_down = true;
    	jump_pressed = true;
    }
}

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	if ((attack == AT_NSPECIAL || attack == AT_FSPECIAL_AIR || attack == AT_UAIR) && window == 1 && window_timer >= 1 && window_timer < 3) {
		var aimx;
		if (ai_recovering) { aimx = floor(room_width / 2); }
		else               { aimx = ai_target.x; }
		
		left_down = (x > aimx);
		left_pressed = left_down;
		right_down = (x < aimx);
		right_pressed = right_down;
	}

    
   else if (attack == AT_USPECIAL) {
		special_down = true;
    }
    
    else if (can_attack) {
    	scr_mawral_ai_select_followup_move();
    }
}



#define scr_mawral_ai_hitstun_drift
//drift away from both the opponent and the blast zones.
if ( mawral_ai_target_dist > 20 && mawral_ai_target_dist < mawral_ai_opponent_reach 
 && ((xdist == -1 && x > 50 && x > -10 * hsp)
  || (xdist ==  1 && x < room_width-50 && x < 10 * hsp) )) {
	left_down =  (xdist == -1);
	right_down = (xdist ==  1);
}
  //otherwise, drift in.
else {
	left_down  = (x >= room_width / 2);
	right_down = (x < room_width / 2);
}
return;

#define scr_mawral_ai_select_followup_move


//var mawral_ai_target_predict_x = ai_target.x + (ai_target.hsp - hsp) * 6 - x;
//var mawral_ai_target_predict_y = ai_target.y - (ai_target.char_height / 2) + (ai_target.vsp - vsp - 3) * 4 - y - (char_height/2);
scr_mawral_ai_predict_target_position();

//spawn_hit_fx(round(mawral_ai_target_predict_x + x), round(mawral_ai_target_predict_y + y), 305 );
var top_move_chosen = 0;
var top_move_score = 100;
var ff_needed = 0;
var jump_needed = 0;

var arraylength = array_length_1d(epinel_combo_move_array);
for(i = 0; i < arraylength; i += 1) {
	var n = epinel_combo_move_array[i];
	var flip = spr_dir;
	
	var own_y = y - char_height / 2;
	
	if (free && n == AT_FSPECIAL) continue;
	if (!free || n == AT_UAIR) flip = sign(mawral_ai_target_predict_x - x)
	if (get_hitbox_value(n, 1, HG_DAMAGE) == 0 || !scr_consider_move(n) || move_cooldown[n] > 0) continue;
	var move_score = 0;
	if (!free && djumps > 0 && get_attack_value( n, AG_CATEGORY ) == 1) {
		//test an aerial move while on the ground.
		move_score = scr_mawral_ai_get_move_score(flip, n, 1);
		if (move_score < top_move_score) { 
			top_move_chosen = n; top_move_score = move_score; ff_needed = 0; jump_needed = 3; 
			//spawn_hit_fx(x + flip * epinel_move_reach_x[n], own_y + epinel_move_reach_y[n], 14);
		}
		move_score = scr_mawral_ai_get_move_score(flip, n, 2);
		if (move_score < top_move_score) { 
			top_move_chosen = n; top_move_score = move_score; ff_needed = 0; jump_needed = 10; 
			//spawn_hit_fx(x + flip * epinel_move_reach_x[n], own_y + epinel_move_reach_y[n], 14);
		}
	}
	else
	{
		//test an aerial or grounded move
		
		move_score = scr_mawral_ai_get_move_score(flip, n, 0);
		if (move_score < top_move_score) { 
			top_move_chosen = n; top_move_score = move_score; ff_needed = 0; jump_needed = 0; 
			//spawn_hit_fx(x + flip * epinel_move_reach_x[n], own_y + epinel_move_reach_y[n], 14);
		}
		if (free && get_attack_value( n, AG_CATEGORY ) != 0 && n != AT_NSPECIAL) {
			if (mawral_ai_target_predict_y > own_y + 80) {
				move_score = scr_mawral_ai_get_move_score(flip, n, -2);
				if (move_score < top_move_score) { 
					top_move_chosen = n; top_move_score = move_score; ff_needed = 8; jump_needed = 0;
					//spawn_hit_fx(x + flip * epinel_move_reach_x[n], own_y + epinel_move_reach_y[n], 14);
				}
			}
		}
	}
}
scr_input_perform_move(top_move_chosen);
epinel_ai_buffer_fastfall = free * ff_needed;
epinel_ai_buffer_hold_jump = jump_needed;

return;



#define scr_mawral_ai_predict_target_position
mawral_ai_target_predict_x = ai_target.x + (ai_target.hsp - hsp / 2) * 8 - x;
mawral_ai_target_predict_y = ai_target.y - (ai_target.char_height / 2) + (ai_target.vsp - vsp/2 - 1) * 8 - y - (char_height/2);
return;


#define scr_mawral_ai_get_move_score
//assumes scr_mawral_ai_predict_target_position() has already been performed.
//var facing_direction = argument0;
//var simulate_attack = argument1;
//var simulate_jump = argument2; //0 = no jump, 1 = shorthop, 2 = full jump

return point_distance(argument0 * epinel_move_reach_x[argument1], epinel_move_reach_y[argument1] - argument2 * 40, mawral_ai_target_predict_x, mawral_ai_target_predict_y);


#define scr_mawral_ai_select_approach_move
scr_mawral_ai_predict_target_position();

//spawn_hit_fx(round(mawral_ai_target_predict_x + x), round(mawral_ai_target_predict_y + y), 305 );
var top_move_chosen = 0;
var top_move_score = 40; //need to score less than 40 to use a move at all
var ff_needed = 0;
var jump_needed = 0;

var own_y = y - char_height / 2;

var arraylength = 39;
for(i = 1; i < arraylength; i += 1) {
	var n = i;
	if (get_hitbox_value(n, 1, HG_DAMAGE) == 0 || !scr_consider_move(n) || move_cooldown[n] > 0) continue;
	var flip = spr_dir;
	if (!free) flip = sign(mawral_ai_target_predict_x - x)
	var move_score = 0;
	if (!free && get_attack_value( n, AG_CATEGORY ) == 1) {
		//test an aerial move while on the ground.
		move_score = scr_mawral_ai_get_move_score(flip, n, 1);
		if (move_score < top_move_score) { 
			top_move_chosen = n; top_move_score = move_score; ff_needed = 0; jump_needed = 3; 
			//spawn_hit_fx(x + flip * epinel_move_reach_x[n], own_y + epinel_move_reach_y[n], 14);
		}
		move_score = scr_mawral_ai_get_move_score(flip, n, 2);
		if (move_score < top_move_score) { 
			top_move_chosen = n; top_move_score = move_score; ff_needed = 0; jump_needed = 10; 
			//spawn_hit_fx(x + flip * epinel_move_reach_x[n], own_y + epinel_move_reach_y[n], 14);
		}
	}
	else
	{
		//test an aerial or grounded move
		
		move_score = move_score = scr_mawral_ai_get_move_score(flip, n, 0);
		if (move_score < top_move_score) { 
			top_move_chosen = n; top_move_score = move_score; ff_needed = 0; jump_needed = 0; 
			//spawn_hit_fx(x + flip * epinel_move_reach_x[n], own_y + epinel_move_reach_y[n], 14);
		}
		if (free && get_attack_value( n, AG_CATEGORY ) != 0 && n != AT_NSPECIAL) {
			if (mawral_ai_target_predict_y > own_y + 60) {
				move_score = move_score = scr_mawral_ai_get_move_score(flip, n, -1.5);
				if (move_score < top_move_score) { 
					top_move_chosen = n; top_move_score = move_score; ff_needed = 8; jump_needed = 0;
					//spawn_hit_fx(x + flip * epinel_move_reach_x[n], own_y + epinel_move_reach_y[n], 14);
				}
			}
		}
	}
}
scr_input_perform_move(top_move_chosen);
epinel_ai_buffer_fastfall = free * ff_needed;
epinel_ai_buffer_hold_jump = jump_needed;

return;


#define scr_mawral_ai_select_maneuver

switch (state)  {
	case PS_LANDING_LAG:
		if (ai_target.state_timer mod 2 == 0) scr_set_maneuver(10);
	break;
}


return;

#define scr_mawral_ai_attack_update

switch (attack) {
	case AT_JAB:
		if (has_hit_player && (window == 3 || window == 6) && window_timer >= get_window_value(AT_JAB, window, AG_WINDOW_CANCEL_FRAME)) {  
			attack_down = true; attack_pressed = true;
			
			//if (ai_target.y < y - char_height) { up_down = true; down_down = false; }
			if (abs(ai_target.vsp) > abs (ai_target.hsp * 1.5)) { up_down = true; down_down = false; }
			else if ( (!free && get_player_damage(ai_target.player) < 40) || (free && window == 6)) { up_down = false; down_down = true; }
		}
		else { attack_down = false; attack_pressed = false; }
	break;
	case AT_NSPECIAL:
		if ( (has_hit_player || (ai_recovering && spr_dir == sign(room_width / 2 - x))) 
		 && (window < 6 || djumps > 0 || ai_recovering || ai_target_weighted_damage > 90)) {  special_down = true; special_pressed = true; }
	break;
	case AT_BAIR:
		if (window >= 2 && window <= 3) {
			var bairkopercent = (ai_target_weighted_damage > 100);
			var bairinertia = (ai_target.epinel_other_weightless_timer > 0 || ai_target.epinel_other_weightless_inflicted > 0);
			var bairrecover = (ai_recovering && spr_dir != sign(x - room_width / 2));
			attack_down = (bairkopercent + bairinertia - bairrecover < 1);
		}

	break;
	case AT_FAIR:
	case AT_NAIR:
		if (window == 3 && !hitpause && (!has_hit_player) && (y < room_height - 500) ) {
			down_down = 1; down_hard_pressed = 1;
		}
	break;
	case AT_DAIR:
		if (y < ai_target.y && !has_hit_player) down_down = 1;
	break;
	case AT_DTILT:
		if (can_jump) { jump_down = true; jump_pressed = true; }
	break;
	case AT_DSPECIAL:
		var xdist = abs(x + spr_dir * 60 - ai_target.x);
		special_down = ( xdist > 70 && ( xdist < 180 || epinel_other_standing_on_platform_id != noone ) );
		if (special_down 
		  && instance_exists(epinel_other_standing_on_platform_id) 
		  && spr_dir * epinel_other_standing_on_platform_id.hsp > 2 
		  && mawral_ai_target_dist < abs(epinel_other_standing_on_platform_id.hsp)) {
			if (ai_target.y < y - 40) {
				jump_pressed = true;
				jump_down = true;
				if (ai_target.y < y - 90) epinel_ai_buffer_hold_jump = max(epinel_ai_buffer_hold_jump, 8);
				else epinel_ai_buffer_hold_jump = max(epinel_ai_buffer_hold_jump, 1);
			}
			else if (ai_target.y > y + 50) {
				down_hard_pressed = true;
				do_a_fast_fall = true;
				epinel_buffered_fastfall = max(epinel_buffered_fastfall, 2);
			}
		}
	break;
	case AT_DSPECIAL_AIR:
		if (window <= 1 || window == 4 && y > stage_height * 0.7) { shield_pressed = true; shield_down = true; } 
		var xdist = abs(x + spr_dir * 60 - ai_target.x);
		special_down = ( xdist > 70 && ( xdist < 180 || epinel_other_standing_on_platform_id != noone ) );
		if (special_down) {
			//if (ai_target.y )
		}
	break;
	
	case AT_FSPECIAL:
		var xdist = abs(x - ai_target.x);
		var inrange = abs(y + 50 - ai_target.y) < 100 && sign(x - ai_target.x) == spr_dir && xdist > 80 + (epinel_charge_timer * 6);
		special_down = inrange;
		if (window > 3 && !inrange && epinel_charge_timer > 30) {
			shield_pressed = true;
			
			if (xdist > 100 || instance_number(obj_article_platform) == 0) { //backroll if we don't have platforms or the other player is really far
				left_down = (spr_dir == 1); right_down = (spr_dir == -1);
			}
			else { //forward roll
				left_down = (spr_dir == -1); right_down = (spr_dir == 1);
			}
		}
	break;
	case AT_FSPECIAL_AIR:
		down_down = true;
}


return;




#define scr_perform_fastfall_input
//attack_down = 0; special_down = 0; up_down = 0; down_down = 0; down_hard_pressed = 1;
if (can_fast_fall && !(attack == AT_UTILT && hitpause && old_vsp < -5) && ai_target_weighted_damage < 40) { do_a_fast_fall = true; return true; }
return false;


#define scr_mawral_ai_attempt_to_platform_waveland
return 0; //WS cpus aren't able to directional airdodge with any input that I can find. No wavelanding for now.
if (!free || !can_shield || !has_airdodge || vsp < -4 || mawral_ai_maneuver_state > 0) return 0;

//var nearest_platform = instance_nearest(x, y, asset_get("par_jumpthrough"));
//if (nearest_platform != noone && abs(y - nearest_platform.y) > 16 || !place_meeting(x, y+12, nearest_platform)) return 0;

shield_pressed = true;
shield_down = true;
up_down = false;
down_down = true;
//if (joy_dir > 180) 
joy_pad_idle = false;
joy_dir = 270;

return 1;



#define scr_mawral_ai_handle_buffers
if (epinel_ai_buffer_hold_jump > 0) {
	epinel_ai_buffer_hold_jump--;
	jump_down = 1;
}
if (epinel_ai_buffer_fastfall > 0) {
	if (free) {
		epinel_ai_buffer_fastfall--;
		if (epinel_ai_buffer_fastfall == 0) { scr_perform_fastfall_input(); }
	}
	else {
		epinel_ai_buffer_fastfall = 0;
	}
}
return;


#define scr_reset_maneuver
mawral_ai_maneuver_state = 0;
mawral_ai_maneuver_state_timer = 0;
return;

#define scr_set_maneuver
mawral_ai_maneuver_state = argument[0];
mawral_ai_maneuver_state_timer = 0;
return;




#define scr_mawral_ai_maneuver_logic
if (!hitpause) mawral_ai_maneuver_state_timer += 1;
if (state_cat == SC_HITSTUN || state = PS_ATTACK_GROUND || state_cat == PS_ATTACK_AIR) { scr_reset_maneuver(); return; }


if (mawral_ai_maneuver_state == 0) {
	mawral_ai_maneuver_state = scr_mawral_ai_maneuver_queue_get_next();
	if (mawral_ai_maneuver_state == 0 && !ai_recovering && scr_mawral_ai_is_player_close_to_bottom_blastzone()) {
		scr_mawral_ai_select_approach_move();
		return;
	}
}

switch (mawral_ai_maneuver_state) {
	case 0://0: none
	break;
	case 10://wavedash forward;
	case 11://wavedash back;
		if (free || mawral_ai_maneuver_state_timer > 14) { 
			scr_reset_maneuver(); 
		}
		
		
		
		//attack_down = false;
		//attack_pressed = false;
		//special_down = false;
		//special_pressed = false;
		
		joy_pad_idle = false;
		joy_dir = 270;
		
		switch (state) {
			case PS_IDLE:
			case PS_CROUCH:
			case PS_WALK:
				jump_pressed = true; jump_down = true; shield_down = true; shield_pressed = true;
				if (mawral_ai_maneuver_state_timer < 5 && spr_dir != ai_target_xdir) { scr_input_hold_direction_towards_target(); }
				else {
					if (mawral_ai_maneuver_state mod 10 == 0) scr_input_hold_direction_forwards();
					else scr_input_hold_direction_backwards();
				}
			break;
			
			case PS_DASH:
				down_down = true; up_down = false; down_pressed = true;
			break;
			
			case PS_JUMPSQUAT:
				if (!free && state_timer >= jump_start_time - 2) set_state(PS_AIR_DODGE);
			//break;
			//case PS_FIRST_JUMP:
				//if (!free && has_airdodge) set_state(PS_AIR_DODGE);//{ shield_down = true; shield_pressed = true; }//
			
				//if (state_timer > 1) { shield_pressed = 1; shield_down = 1; }
			case PS_AIR_DODGE:
				if (mawral_ai_maneuver_state mod 10 == 0) scr_input_hold_direction_forwards();
				else scr_input_hold_direction_backwards();
				//joy_dir = 270 - (left_down - right_down) * 45;
				joy_dir = (270 - (left_down - right_down) * 90) mod 360;
				down_down = true; scr_mawral_ai_is_target_extremely_close();
				up_down = 0;
			break;
		}
	break;
	
	case 20: // dash forwards
	case 21: // dash backwards
	case 25: //dash left
	case 26: //dash right
		if (free || mawral_ai_maneuver_state_timer > 50 - temp_level) { scr_reset_maneuver(); break; }
	
		if (free && mawral_ai_maneuver_state_timer == 1 && !hitpause) {
			if (djumps < max_djumps && scr_mawral_ai_check_for_platforms_below_player_for_fastfalling() ) {
				do_a_fast_fall = true;
			}
		}
		
		switch (mawral_ai_maneuver_state mod 10) {
			case 0: scr_input_hold_direction_towards_target(); break;
			case 1: scr_input_hold_direction_away_from_target(); break;
			case 5: left_down = true; right_down = false;
			case 6: left_down = false; right_down = true;
		} 
		
		
		switch (state) {
			case PS_DASH:
				if (spr_dir = (right_down - left_down) ) {
					if ( (mawral_ai_maneuver_state mod 10 == 0 ^ mawral_ai_opponent_reach + temp_level * 2 > mawral_ai_target_dist_predict)) { scr_reset_maneuver(); break; }
				}
			
			case PS_IDLE:
			case PS_DASH_START:
			case PS_LAND:
			case PS_LANDING_LAG:

			if (state_cat == SC_GROUND_NEUTRAL || state == PS_LAND || state == PS_LANDING_LAG || state == PS_DASH_START || state == PS_DASH) {
				right_hard_pressed = right_down;
				left_hard_pressed = left_down;
			}
		}
		
		
	break;
	
	case 30: //shorthop forwards
	case 31: //shorthop backwards
	case 32: //shorthop neutral
		jump_down = (!free && state != PS_JUMPSQUAT); jump_pressed = jump_down;
		if (free && mawral_ai_maneuver_state_timer > 19 - temp_level) scr_reset_maneuver(); 
		
		switch (mawral_ai_maneuver_state mod 10) {
			case 0: scr_input_hold_direction_towards_target(); break;
			case 1: scr_input_hold_direction_away_from_target(); break;
			default: left_down = false; right_down = false; break;
		}
	break;
	
	case 40: //fullhop forwards
	case 41: //fullhop backwards
	case 42: //fullhop neutral
		jump_down = (!free); jump_pressed = jump_down;
		//if (free && mawral_ai_maneuver_state_timer > 20 && !ai_recovering && mawral_ai_maneuver_state_timer <= 22 
		//       && !hitpause  && has_airdodge && scr_mawral_ai_check_for_platforms_below_player_for_wavelanding()) {
		//	up_down = false; down_down = true; shield_pressed = true; shield_down = true;
		//}
		
		if (mawral_ai_maneuver_state_timer > 22) scr_reset_maneuver(); 
		
		switch (mawral_ai_maneuver_state mod 10) {
			case 0: scr_input_hold_direction_towards_target(); break;
			case 1: scr_input_hold_direction_away_from_target(); break;
			default: left_down = false; right_down = false; break;
		}
	break;
	
	
	case 50: //roll forwards
	case 51: //roll backwards
	case 52: //parry
		if (free) scr_reset_maneuver();
		if (state == PS_IDLE || state == PS_CROUCH || state == PS_DASH) {
			set_state(PS_PARRY_START); scr_reset_maneuver();
		}
		
		switch (mawral_ai_maneuver_state mod 10) {
			case 0: scr_input_hold_direction_towards_target(); break;
			case 1: scr_input_hold_direction_away_from_target(); break;
			default: left_down = false; right_down = false; break;
		}
	break;
	
	case 53: //airdodge
		if (!free) scr_reset_maneuver();
		if (can_airdodge && has_airdodge) {
			set_state(PS_AIR_DODGE); scr_reset_maneuver();
		}
		
	break;
	
	case 60: //dashdance
	case 61: //reverse dashdance
	case 62: //triple dashdance
		if (free) { scr_reset_maneuver(); break; }
		if (state == PS_WALK) set_state(PS_DASH_START);
		if (mawral_ai_maneuver_state_timer <= 1) {
			var tempvar_half_dash_time = floor(initial_dash_time / 2);
			mawral_ai_dash_dance_speed = tempvar_half_dash_time + random_func(player + 4, tempvar_half_dash_time, true);
		}
		if (mawral_ai_maneuver_state_timer < mawral_ai_dash_dance_speed) {
			scr_input_hold_direction_towards_target();
		}
		else if (mawral_ai_maneuver_state_timer < mawral_ai_dash_dance_speed * 2) {
			scr_input_hold_direction_away_from_target();
		}
		else {
			scr_input_hold_direction_towards_target();
			if (mawral_ai_maneuver_state != 62 || mawral_ai_maneuver_state_timer >= mawral_ai_dash_dance_speed * 3) scr_reset_maneuver();
		}
			
		if (mawral_ai_maneuver_state == 61) { left_down = !left_down; right_down = !right_down; }
		left_hard_pressed = left_down; right_hard_pressed = right_down;
	break;
	
	//40: fullhop
	//41: fullhop back
	//42: fullhop approach
	//50: waveland forward
	//51: waveland back
	//50: dash to opponent
	
	case 70: //reversal
		if (mawral_ai_maneuver_state_timer > 10) { scr_reset_maneuver(); break; }
		if (!can_attack) { break; }
		
		if (mawral_ai_target_dist <= 10) scr_input_perform_move(AT_NSPECIAL);
		else if (free) scr_input_perform_move(AT_NAIR);
		else scr_input_perform_move(AT_JAB);
		
		scr_reset_maneuver();
	break;
	
	default:
		scr_reset_maneuver();
	break;
}

return;

#define scr_reset_strategy
mawral_ai_strategy_state = 0;
mawral_ai_strategy_state_timer = 0;
return;

#define scr_set_strategy
mawral_ai_strategy_state = argument[0];
mawral_ai_strategy_state_timer = 0;
return;



#define scr_mawral_ai_calculate_strategy_category
//is the opponent respawning?
if (scr_mawral_ai_enemy_projectile_incoming_direction() != -1) return 8;
if (scr_mawral_ai_is_target_respawning()) return 9; //between stocks
if (scr_mawral_ai_is_target_invincible()) return 1; //stall

//if the opponent is in neutral:
if (scr_mawral_ai_is_target_in_neutral()) {
	if (scr_mawral_ai_is_target_extremely_close()) {
		return 6 - scr_mawral_ai_favor_aggressive_play_at_random();
		//choose between advantage (5) and disadvantage (6)
	}
	
	if (scr_mawral_ai_is_target_offstage()) return 4; //edgeguard

	return 2 + scr_mawral_ai_favor_aggressive_play_at_random(); //choose between aggressive (3), defensive (2) and stall (1)

}

if (scr_mawral_ai_is_target_in_hitstun()) return 5; //advantage
if (scr_mawral_ai_is_target_in_recovery_frames()) {
	if (true) return 7; //punish    //if target punish window is long enough
	else return 5; //advantage
}
if (scr_mawral_ai_is_target_performing_an_attack()) {
	if (scr_mawral_ai_is_target_able_to_reach_player_with_attacks()) return 6; //disadvantage
	return 2; //else, defensive
}
return 3; //aggressive by default




#define scr_mawral_ai_strategy_logic
mawral_ai_strategy_state_timer += 1;
if (mawral_ai_maneuver_state > 0 || !scr_mawral_ai_is_maneuver_queue_empty()) { return; }
if (state_cat == SC_HITSTUN) { 
	if (state_timer == 1) scr_mawral_ai_adjust_strategy_variables_when_hit(); 
	else if (state_timer == 2) scr_reset_maneuver();
	return; 
}

if (ai_recovering) { scr_reset_maneuver(); return; }
//aggressive_defensive
//predictive_reactive (include jabs for predictive)
//opponent_final_active_frame


scr_set_strategy( scr_mawral_ai_calculate_strategy_category() );

//scr_mawral_ai_maneuver_add_to_queue(scr_random_choose(10, 11));


//else if (ai_target.state)
//will a projectile hit us in the next 7 frames

switch (mawral_ai_strategy_state) {
	case 1: //stall
		scr_mawral_ai_maneuver_add_to_queue(scr_random_choose(11, 11, 11, 21, 21, 21, 31, 41, 51, 61, 62));
	break;
	
	case 2: //defensive
		scr_mawral_ai_maneuver_add_to_queue(scr_random_choose(11, 11, 11, 21, 21, 21, 32, 42, 52, 62));
	break;
	
	case 3: //aggressive
		scr_mawral_ai_maneuver_add_to_queue(scr_random_choose(10, 10, 10, 10, 10, 11, 11, 11, 20, 30, 40, 60, 62));
		if (!scr_mawral_ai_is_target_able_to_reach_player_with_attacks() && scr_random_coinflip()) {
			if (scr_random_coinflip()) {
				scr_mawral_ai_maneuver_add_to_queue(10);
			}
			else {
				scr_mawral_ai_maneuver_insert_at_top_of_queue(10);
			}
		}
	break;
	
	case 4: //edgeguard
	break;
	
	case 5: //advantage
		scr_mawral_ai_maneuver_add_to_queue(scr_random_choose(10, 10, 10, 10, 20, 20, 30, 40));
	break;
	
	case 6: //disadvantage
		scr_mawral_ai_maneuver_add_to_queue(scr_random_choose(11, 11, 21, 21, 31, 41, 50, 51, 52, 70, 70));
	break;
	
	case 7: //punish
	break;
	
	case 8: //dodge projectiles
		scr_mawral_ai_maneuver_add_to_queue(scr_random_choose(30, 40, 50, 51, 52, 70));
	break;
	
	case 9: //between stocks
		//scr_mawral_ai_maneuver_add_to_queue(scr_random_choose(30, 40));
	break;
	
	//0: undecided
	//1: lame
	// >> roll back
	// >> run back
	// >> retreating aerial
	// >> use a stalling attack
	// >> gather resources
	//2: defensive
	// >> defensive dash dance
	// >> roll
	// >> empty jump
	//3: aggressive
	// >> shorthop in
	// >> fullhop in
	// >> wavedash in
	// >> wavedash out and in
	//4: edgeguard
	// >> ledge camp
	// >> jump after
	// >> gather resources
	//5: advantage
	// >> follow-up attack
	// >> tech chase
	// >> parry punish
	//6: disadvantage
	// >> roll
	// >> parry
	// >> use a reversal attack
	//7: punish
	// >> KO confirm
	// >> claim center stage
	//9: dodge projectiles
	// >> parry
	// >> roll
	// >> attack
	//9: between stocks
	// >> taunt
	// >> gather resources
	// >> taunt again
	
	//2: gather resource
	// > move away
	//3: close distance
	// edgeguard - jump
	// edgeguard - ledge camp
	// edgeguard - gather resources
	// edgeguard - special - take platform to ledge
	
	
	default:
		scr_reset_strategy();
	break;
}



#define scr_mawral_ai_adjust_strategy_variables_when_hit
//adjust range to watch for
if (get_hitbox_value(last_attack, last_hbox_num, HG_HITBOX_TYPE) == 1 
 || (get_hitbox_value(last_attack, last_hbox_num, HG_PROJECTILE_IS_TRANSCENDENT) == 1 && mawral_ai_opponent_reach < xdist * 2) ) {
	mawral_ai_opponent_reach = (mawral_ai_opponent_reach * 3 + xdist) / 4;
}



switch (mawral_ai_strategy_state) {
	case 1: //stall
		mawral_ai_defensive_aggressive++;
	break;
	
	case 2: //defensive
		mawral_ai_defensive_aggressive++;
	break;
	
	case 3: //aggressive
		mawral_ai_defensive_aggressive--;
	break;
	
	case 4: //edgeguard
		mawral_ai_defensive_aggressive--;
	break;
	
	case 5: //advantage
		mawral_ai_defensive_aggressive--;
	break;
	
	case 6: //disadvantage
		mawral_ai_defensive_aggressive++;
	break;
	
	case 7: //punish
		mawral_ai_defensive_aggressive--;
	break;
	
	case 8: //dodge projectiles
		mawral_ai_defensive_aggressive++;
	break;
	
	case 9: //between stocks
		//scr_mawral_ai_maneuver_add_to_queue(scr_random_choose(30, 40));
	break;
}

clamp(mawral_ai_defensive_aggressive, -8, 8);

scr_reset_strategy();


#define scr_consider_move
var tempvar_consider_this_move = true;
switch (argument[0]){
	case AT_DSPECIAL_AIR:
	//don't consider this except if out of jumps / very high percent
		tempvar_consider_this_move = ( free && !ai_recovering && scr_mawral_ai_is_player_close_to_bottom_blastzone() && (djumps > 0 || ai_target_weighted_damage > 90 || epinel_consecutive_uair_jumps >= 2) );
	break;
	case AT_DSPECIAL:
		tempvar_consider_this_move = ( !free );
	break;
	//case AT_UTILT:
	//don't consider except if low percent
		//tempvar_consider_this_move = (ai_target_weighted_damage < 60);
	//break;
	case AT_FAIR:
		//don't use while recovering
		tempvar_consider_this_move = free && ((!ai_recovering && has_walljump) || vsp < -4.5);
	break;
	case AT_DTILT:
		//don't use twice in a row, don't use unless considerably close
		tempvar_consider_this_move = attack != AT_DTILT && mawral_ai_target_dist < 30;
	break;
	
	case AT_FSTRONG:
		tempvar_consider_this_move = (ai_target_weighted_damage > 75 || mawral_ai_strategy_state == 7);
	break;
	
	case AT_USTRONG:
		tempvar_consider_this_move = (ai_target_weighted_damage > 70 || mawral_ai_strategy_state == 7);
	break;
	
	case AT_DSTRONG:
		tempvar_consider_this_move = (ai_target_weighted_damage > 50 || mawral_ai_strategy_state == 7);
	break;
	
	case AT_UAIR:
		//don't use when jump power is too low.
		tempvar_consider_this_move = (epinel_uair_jump_counter + epinel_consecutive_uair_jumps < 2);
	break;
	
	case AT_DAIR:
		//don't use when jump power is too low.
		tempvar_consider_this_move = (epinel_uair_jump_counter + epinel_consecutive_dair_jumps < 3);
	break;
	
	case AT_FSPECIAL:
		tempvar_consider_this_move = !free;
	case AT_FSPECIAL_AIR:
		tempvar_consider_this_move *= (mawral_ai_target_dist_predict > 120 && !ai_recovering && has_walljump && random_func(player + 4, 4, true) = 0);
	break; 
	
	default: 
		tempvar_consider_this_move = true;
	break;
}
return tempvar_consider_this_move;


#define scr_input_hold_direction_towards_target
left_down = ai_target_xdir==-1; right_down = ai_target_xdir==1;
left_pressed = (left_down); right_pressed = (right_down);
return;

#define scr_input_hold_direction_away_from_target
left_down = ai_target_xdir==1; right_down = ai_target_xdir==-1;
left_pressed = (left_down); right_pressed = (right_down);
return;

#define scr_input_hold_direction_forwards
left_down = spr_dir==-1; right_down = spr_dir==1;
left_pressed = (left_down); right_pressed = (right_down);
return;

#define scr_input_hold_direction_backwards
left_down = spr_dir==1; right_down = spr_dir==-1;
left_pressed = (left_down); right_pressed = (right_down);
return;

#define scr_input_hold_direction_neutral
up_down = 0; down_down = 0; left_down = 0; right_down = 0;
return;

#define scr_input_hold_direction_towards_center_stage
var center_dir = sign(x - room_width / 2);
left_down = center_dir==-1; right_down = center_dir==1;
left_pressed = (left_down); right_pressed = (right_down);
return;

#define scr_input_perform_move

var towards = sign(x - ai_target.x);
if (towards == 0) towards = spr_dir;
switch (argument[0]) {
case 0: break;
case AT_JAB:
	scr_input_hold_direction_neutral();
	attack_down = 1; special_down = 0; strong_down = 0; 
	attack_pressed = 1; break;
case AT_DATTACK:
	up_down = 0; down_down = 0; scr_input_hold_direction_towards_target();
	left_hard_pressed = left_down; right_hard_pressed = right_down;
	attack_down = 1; special_down = 0; strong_down = 0;  
	attack_pressed = 1; break;
	
case AT_NSPECIAL:
	scr_input_hold_direction_neutral();
	attack_down = 0; special_down = 1; strong_down = 0;  
	special_pressed = 1; break;
case AT_FSPECIAL:
case AT_FSPECIAL_AIR:
	up_down = 0; down_down = 0; scr_input_hold_direction_towards_target();
	attack_down = 1; special_down = 0; strong_down = 0; special_pressed = 1; break;
case AT_USPECIAL:
	up_down = 0; down_down = 0; scr_input_hold_direction_towards_target();
	attack_down = 1; special_down = 0; strong_down = 0; special_pressed = 1; break;
case AT_DSPECIAL:
case AT_DSPECIAL_AIR:
	up_down = 0; down_down = 1; scr_input_hold_direction_towards_target();
	attack_down = 1; special_down = 0; strong_down = 0; special_pressed = 1; break;

case AT_FSTRONG:
	up_down = 0; down_down = 0; scr_input_hold_direction_towards_target();
	attack_down = 0; special_down = 0; strong_down = 1; strong_pressed = 1; break;
case AT_USTRONG:
	up_down = 1; down_down = 0; scr_input_hold_direction_towards_target();
	attack_down = 0; special_down = 0; strong_down = 1; strong_pressed = 1; break;
case AT_DSTRONG:
	up_down = 0; down_down = 1; scr_input_hold_direction_towards_target();
	attack_down = 0; special_down = 0; strong_down = 1; strong_pressed = 1; break;

case AT_FTILT:
	up_down = 0; down_down = 0; scr_input_hold_direction_towards_target();
	attack_down = 1; special_down = 0; strong_down = 0; attack_pressed = 1; 
	if (!free && ai_target_xdir != 0) spr_dir = ai_target_xdir; break;
case AT_UTILT:
	up_down = 1; down_down = 0; scr_input_hold_direction_towards_target();
	attack_down = 1; special_down = 0; strong_down = 0; attack_pressed = 1; break;
	if (!free && ai_target_xdir != 0) spr_dir = ai_target_xdir; break;
case AT_DTILT:
	up_down = 0; down_down = 1; scr_input_hold_direction_towards_target();
	attack_down = 1; special_down = 0; strong_down = 0; attack_pressed = 1; break;

case AT_NAIR:
	scr_input_hold_direction_neutral();
	attack_down = 1; special_down = 0; strong_down = 0; attack_pressed = 1; 
	if (!free) { jump_down = (y <= ai_target.y - ai_target.char_height); jump_pressed = jump_down; down_hard_pressed = (y > ai_target.y); } break;
case AT_FAIR:
	up_down = 0; down_down = 0; scr_input_hold_direction_forwards();
	attack_down = 1; special_down = 0; strong_down = 0; attack_pressed = 1; 
	if (!free) { jump_down = (y <= ai_target.y - ai_target.char_height); jump_pressed = jump_down; down_hard_pressed = (y > ai_target.y); } break;
case AT_DAIR:
	up_down = 0; down_down = 1; scr_input_hold_direction_towards_target();
	attack_down = 1; special_down = 0; strong_down = 0; attack_pressed = 1; 
	if (!free) { jump_down = (y <= ai_target.y - ai_target.char_height); jump_pressed = jump_down; down_hard_pressed = (y > ai_target.y); } break;
case AT_UAIR:
	up_down = 1; down_down = 0; scr_input_hold_direction_towards_target();
	attack_down = 1; special_down = 0; strong_down = 0; attack_pressed = 1; 
	if (!free) { jump_down = (y <= ai_target.y - ai_target.char_height); jump_pressed = jump_down; down_hard_pressed = (y > ai_target.y); } break;
case AT_BAIR:
	up_down = 0; down_down = 0; scr_input_hold_direction_backwards();
	
	if (!free) { jump_down = true; jump_pressed = true; scr_input_hold_direction_away_from_target(); epinel_ai_buffer_hold_jump = max(epinel_ai_buffer_hold_jump, 2); }
	else {  attack_down = 1; special_down = 0; strong_down = 0; attack_pressed = 1; 
		jump_down = (!free || (y <= ai_target.y - ai_target.char_height)); jump_pressed = jump_down; down_hard_pressed = (y > ai_target.y); 
	} break;
case AT_TAUNT:
taunt_down = true; break;
} //end switch
return;


#define scr_mawral_ai_is_target_in_neutral
return (ai_target.can_jump || ai_target.can_attack || ai_target.state_cat == SC_GROUND_NEUTRAL || ai_target.state_cat == SC_AIR_NEUTRAL)

#define scr_mawral_ai_is_target_in_hitstun
return (ai_target.hitstun >= 1 && (ai_target.state == PS_HITSTUN || ai_target.state == PS_HITSTUN_LAND));

#define scr_mawral_ai_is_target_approaching
var target_move_dir = point_direction(0, 0, target_move_dir.hsp, target_move_dir.vsp);
var target_to_player_dir = point_direction(0, 0, target_move_dir.hsp, target_move_dir.vsp);
return 1;
//return abs(angle_difference())

#define scr_mawral_ai_is_target_invincible
return (ai_target.invince_time > 20);

#define scr_mawral_ai_is_target_offstage
return 0;

#define scr_mawral_ai_is_target_respawning
return 0;

#define scr_mawral_ai_player_is_at_ledge 
var tempvar_stage_width = room_width - get_stage_data(SD_X_POS) * 2;
if (tempvar_stage_width < 400) tempvar_stage_width = 600;
return (abs(x - room_width / 2) > tempvar_stage_width * 0.4)

#define scr_mawral_ai_player_is_moving_away_from_stage_center
return (sign(hsp) == sign (x - room_width / 2));


#define scr_mawral_ai_enemy_projectile_incoming_direction
//returns the angle of attack, or -1 if no projectile is an immediate threat
return -1;

#define scr_mawral_ai_is_target_extremely_close
return (xdist + ydist / 2 < 50);

#define scr_mawral_ai_is_target_able_to_reach_player_with_attacks
return (xdist + ydist / 2 < mawral_ai_opponent_reach);

#define scr_mawral_ai_update_resource_level
if (!instance_exists(obj_article_platform)) return 0;

//count epinel platforms as his 'resource meter'.
var lvl = 0;
with (obj_article_platform) {
	if (instance_exists(player_id)) && (player_id.epinel_other_is_epinel) {
		lvl += 50;
	}
}
return lvl;

#define scr_mawral_ai_is_target_performing_an_attack
return (ai_target.state == PS_ATTACK_GROUND || ai_target.state == PS_ATTACK_AIR);

#define scr_mawral_ai_is_target_in_recovery_frames
//assumes that the opponent is not in neutral.
if (ai_target.invince_time > 10 || (!scr_mawral_ai_is_target_performing_an_attack())) return false;
if (ai_target.attack >= 41) return false;
var atkwindow = mawral_ai_move_final_attack_window[ai_target.player, ai_target.attack];

if (ai_target.window > atkwindow) return true;
else if (ai_target.window < atkwindow) return false;
else return (ai_target.window_timer > mawral_ai_move_final_attack_end_frame[ai_target.player, ai_target.attack]);

#define scr_mawral_ai_check_for_platforms_below_player_for_fastfalling
return (scr_mawral_ai_is_player_close_to_bottom_blastzone() && !scr_mawral_ai_player_is_at_ledge() 
&& (place_meeting(x, y + fast_fall * 4, asset_get("par_block")) || place_meeting(x, y + fast_fall * 4, asset_get("par_jumpthrough")))
&& !place_meeting(x, y, asset_get("par_block")));

#define scr_mawral_ai_check_for_platforms_below_player_for_wavelanding
return ( place_meeting(x, y + 32, asset_get("par_block")) || (place_meeting(x, y+32, asset_get("par_jumpthrough")) && !place_meeting(x, y-16, asset_get("par_jumpthrough"))));

#define scr_mawral_ai_maneuver_queue_get_next
var returnvalue = mawral_ai_maneuver_queue[0];
if (returnvalue != 0) {
	for (var n = 0; n < 4; n++) { mawral_ai_maneuver_queue[n] = mawral_ai_maneuver_queue[n+1]; }
	mawral_ai_maneuver_queue[4] = 0;
}
return returnvalue;

#define scr_mawral_ai_maneuver_add_to_queue
for (var n = 0; n < 5; n++) { 
	if (mawral_ai_maneuver_queue[n] == 0) { mawral_ai_maneuver_queue[n] = argument0; break; } 
}
return;

#define scr_mawral_ai_maneuver_insert_at_top_of_queue
for (var n = 0; n < 4; n++) { 
	mawral_ai_maneuver_queue[n+1] = mawral_ai_maneuver_queue[n]; 
}
mawral_ai_maneuver_queue[0] = argument0;
return;

#define scr_mawral_ai_is_player_close_to_bottom_blastzone
return y > room_height * 0.8;
#define scr_mawral_ai_is_maneuver_queue_empty
return (mawral_ai_maneuver_queue[0] == 0);


#define scr_random_choose
return argument[random_func(player + 4, argument_count, true)];

#define scr_random_coinflip
return random_func(player + 4, 2, true);
#define scr_mawral_ai_favor_aggressive_play_at_random
return (random_func(player + 4, 20, true) - 10 >= mawral_ai_defensive_aggressive);


#define scr_epinel_ai_nearest_platform_direction