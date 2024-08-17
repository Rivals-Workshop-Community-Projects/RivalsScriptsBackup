//update.gml


if (is_solo_player && !initialize_unit_players) {
    user_event(8); //user_event8.gml - establish buff damage arrays
	user_event(7); //user_event7.gml - team up with any other solo plusle/minun players.
	initialize_unit_players = true;
	exit;
}

if (is_master_player) {

	//initiate
    if (!initialize_unit_players) {
    	user_event(3); //user_event3.gml - initialize master player instance.
    }
	
	//don't draw the HUD
	draw_indicator = false;
	
	//determine the leader.
	var leader_unit_index = noone;
	if (instance_exists(unit_player_id_array[0]) && unit_player_id_array[0].custom_clone == false) {
		leader_unit_index = 0;
	}
	else if (instance_exists(unit_player_id_array[1]) && unit_player_id_array[1].custom_clone == false) {
		leader_unit_index = 1;
	}
	
	//reactivate the partner instance on respawn
	if (leader_unit_index != noone) {
		var leader_unit = unit_player_id_array[leader_unit_index];
		
		//make the master player follow one of the players at any time. update which one the master player follows every few seconds. 
		//this really only exists so that CPUs know who to attack.
		leader_update_mimic(leader_unit);
		
		
		
		
		
		//lock in full invincibility and hitpause for the master player.
		hitstop = 9999;
		invince_time = 9999;
			
		if (leader_unit.state == PS_RESPAWN) {
			visible = true;
			//print(string(leader_unit.species_id) + " has respawned as leader")
			if (!instance_exists(leader_unit.teammate_player_id)) {
				//fetch the other unit and restore it
				
				var restore_teammate_id = unit_player_id_array[!leader_unit_index];
				//print(string(restore_teammate_id.species_id) + " was restored")
				leader_unit.teammate_player_id = restore_teammate_id;
				
				with (restore_teammate_id) {
					teammate_player_id = leader_unit;
					custom_clone = 1;
					damage_percent_as_teammate = get_player_damage(player);
					set_state(PS_RESPAWN);
					state_timer = leader_unit.state_timer;
					visible = leader_unit.visible;
					attack = AT_JAB; //reset so it no longer equals AT_EXTRA_3
					spr_dir = leader_unit.spr_dir;
					x = leader_unit.x + leader_unit.spr_dir * 10;
					y = leader_unit.y;
					has_been_knocked_out = false;
					invincible = teammate_player_id.invincible;
					invince_time = teammate_player_id.invince_time;
					initial_invince = teammate_player_id.initial_invince;
				}
			}
		}
		//update the airdodge hud
		has_airdodge = leader_unit.has_airdodge;
		
		//keep track of the special button being held
		if (special_down || special_pressed || (leader_unit.attack == AT_TAUNT_2 && leader_unit.state == PS_ATTACK_GROUND)) {
			special_held_counter = max(0, special_held_counter + 1);
			if (special_held_counter > 7) special_held = true;
		}
		else {
			special_held_counter = min(0, special_held_counter - 1);
			if (special_held_counter < -20) special_held = false;
		}
	}

	exit;
}


//at_extra_3 is the despawn attack state. do nothing until respawned.
if (attack == AT_EXTRA_3) {
	hitpause = true;
	hitstop = 2;
	invincible = true;
	invince_time = max(invince_time, 2);
	x = master_player_id.x;
	y = master_player_id.y;
	exit;
}

//if knocked out, transition to at_extra_3.
if (has_been_knocked_out) {
	//go invincible and invisible, and follow the master player around.
    set_state(PS_ATTACK_AIR);
    state_timer = 0;
    window = 0;
    window_timer = 0;
    attack = AT_EXTRA_3;
    //set_attack(AT_EXTRA_3); 
    visible = false;
    hitstun = 0;
    hitstop = 2;
    hitpause = true;
    invincible = true;
	invince_time = max(invince_time, 2);
	x = master_player_id.x;
	y = master_player_id.y;
    //x = round(room_width / 2);
    //y = -1000;
    custom_clone = true;
    if (instance_exists(teammate_player_id)) {
    	//update their health percent, in case the stock loss reset it
    	set_player_damage(player, teammate_player_id.damage_percent_as_teammate);
    	//mark the teammate as having no teammate for now
    	teammate_player_id.teammate_player_id = noone;
    }
    //mark this instance as having no teammate
    teammate_player_id = noone;
    exit;
}


// input values
#macro INP_ATTACK 1 << 0
#macro INP_SPECIAL 1 << 1
#macro INP_JUMP 1 << 2
#macro INP_SHIELD 1 << 3

#macro INP_LEFT 1 << 4
#macro INP_RIGHT 1 << 5
#macro INP_UP 1 << 6
#macro INP_DOWN 1 << 7

#macro INP_LEFT_HARD 1 << 8
#macro INP_RIGHT_HARD 1 << 9
#macro INP_UP_HARD 1 << 10
#macro INP_DOWN_HARD 1 << 11

#macro INP_LEFT_STRONG 1 << 12
#macro INP_RIGHT_STRONG 1 << 13
#macro INP_UP_STRONG 1 << 14
#macro INP_DOWN_STRONG 1 << 15

#macro INP_TAUNT 1 << 16

#macro INP_ATTACK_PRESSED 1 << 17
#macro INP_SPECIAL_PRESSED 1 << 18
#macro INP_JUMP_PRESSED 1 << 19
#macro INP_SHIELD_PRESSED 1 << 20

#macro INP_LEFT_STICK 1 << 21
#macro INP_RIGHT_STICK 1 << 22
#macro INP_UP_STICK 1 << 23
#macro INP_DOWN_STICK 1 << 24

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



// ==============================
// leader code
// ==============================
if (!custom_clone) {

	//swap leader
	swap_leader_if_triggered();
	
	//input buffer for partner
	leader_cycle_buffer();
	
	
	//the leader can't use nspecial if they have no baton
	if (!nspecial_can_use_baton) {
		//get the baton back by landing on the ground
		//solo players can only get the baton back if their partner doesn't have it
		if (!free && (!is_solo_player || !instance_exists(teammate_player_id) || teammate_player_id.nspecial_can_use_baton == 0)) nspecial_can_use_baton = 1;
		else move_cooldown[AT_NSPECIAL] = 2;
	}
	
	//the leader can't use dspecial; if solo then they can.
	if (!is_solo_player) { 
		move_cooldown[AT_DSPECIAL] = 2; 
		//dspecial is handled by this script instead
		leader_dspecial_handler();
	}
	
	//nspecial is handled by this script during spawns and respawns
	leader_spawn_nspecial_handler();
	
	
	//state handler
	switch (state) {
		case PS_DASH_START:
			//if teammate is using helping hand, increase dashstart speed.
			if (state_timer >= 1 && !hitpause && (left_down - right_down != spr_dir) && is_teammate_using_helping_hand()) {
				hsp = spr_dir * (initial_dash_speed + 1.25);
				if (state_timer == 1) { spawn_hit_fx(x + hsp, y, teammate_player_id.vfx_hh_dashboost); sound_play(sfx_hh_dashboost, false, noone, 0.2, 0.75); }
		    }
		break;
		
		case PS_RESPAWN:
			//reset helping hand charge level on respawn.
    		master_player_id.hh_charge_level = 0;
    		//don't draw the hud until respawned
    		if (state_timer < 40) draw_indicator = false;
    	break;
	}
	
	//update health variable every frame
	//damage_percent_as_teammate = get_player_damage(player);
}

// ==============================
// partner code
// ==============================
else {

	//partner can't use specials or taunt
	move_cooldown[AT_NSPECIAL] = 2;
	move_cooldown[AT_FSPECIAL] = 2;
	move_cooldown[AT_USPECIAL] = 2;
	move_cooldown[AT_DSPECIAL] = 2;
	move_cooldown[AT_TAUNT] = 2;
	
	//get the baton back by landing on the ground - even as a partner
	if (!free) nspecial_can_use_baton = 1;
	
	//don't draw the HUD
	draw_indicator = false;
	
	//if (!visual_low_quality) {
		//change outline color
		outline_color = [ 40, 40, 40 ];
		init_shader();
		outline_color = [ 0, 0, 0 ];
	//}
	
	//state handler 
	switch (state) {
		case PS_DASH_STOP: 
			//slow down if the leader is right ahead
			if (!master_player_id.special_held && instance_exists(teammate_player_id) ) {
				if (teammate_player_id.state_cat == SC_GROUND_NEUTRAL) {
					var teammate_distance = abs(teammate_player_id.x - x);
		            if (spr_dir == sign(teammate_player_id.x - x) && teammate_distance <= 40) {
		                //hsp = -spr_dir * ((40 - teammate_distance) / max(state_timer, 1));
		                hsp = 0;
		                x -= spr_dir * ((40 - teammate_distance) / max(state_timer, 1));
		            }
				}
				else if (teammate_player_id.state == PS_ATTACK_GROUND && teammate_player_id.attack == AT_DATTACK && teammate_player_id.state_timer < partner_input_buffer_delay) {
					var teammate_distance = abs(teammate_player_id.x - x);
					if teammate_distance <= 300 {
						set_attack(AT_DATTACK);
					}
		            if (spr_dir == sign(teammate_player_id.x - x) && teammate_distance <= 40) {
		                //hsp = -spr_dir * ((40 - teammate_distance) / max(state_timer, 1));
		                hsp = 0;
		                x -= spr_dir * ((40 - teammate_distance) / max(state_timer, 1));
		            }
				}
			}
            //draw the partner behind the leader
            force_depth = true;
			depth = -3.5;
		break;
		
		case PS_HITSTUN_LAND:
			//auto-tech.
			//print("state " + get_state_name(state) + " prev state " + get_state_name(prev_state));
			if (state_timer <= 1 && (prev_state == PS_HITSTUN || prev_state == PS_TUMBLE) && !free && !master_player_id.special_held && !hitpause) {
				//print("trigger")
				set_state(PS_TECH_GROUND);
				var teammate_distance = (teammate_player_id.x - x) * spr_dir;
				//print(string(teammate_distance));
				if (teammate_distance > 100) { set_state(PS_TECH_FORWARD); }
				else if (teammate_distance < -100) { set_state(PS_TECH_BACKWARD); }
				sound_play(asset_get("sfx_tech"));
			}
			force_depth = true;
			depth = -3.5;
		break;
		
		case PS_TECH_GROUND:
		case PS_TECH_FORWARD:
		case PS_TECH_BACKWARD:
			if (state_timer <= 1 && (prev_state == PS_HITSTUN || prev_state == PS_TUMBLE) && !master_player_id.special_held && !hitpause) {
				//print("trigger 2")
				var teammate_distance = (teammate_player_id.x - x) * spr_dir;
				//if (teammate_distance > 100) state = PS_TECH_FORWARD;
				//else if (teammate_distance < -100) state = PS_TECH_BACKWARD;
				//else state = PS_TECH_GROUND;
				if (teammate_distance > 100) { set_state(PS_TECH_FORWARD); }
				else if (teammate_distance < -100) { set_state(PS_TECH_BACKWARD); }
				else { set_state(PS_TECH_GROUND); }
				sound_play(asset_get("sfx_tech"));
			}
			force_depth = true;
			depth = -3.5;
		break;
		
		case PS_ATTACK_GROUND:
		case PS_ATTACK_AIR:
			//draw the partner behind the leader if they're not using dspecial2.
			switch (attack) {
				case AT_DSPECIAL_2:
				break;
				case AT_DSPECIAL:
					force_depth = true;
					depth = -4.5;
				break;
				default:
					force_depth = true;
					depth = -3.5;
				break;
			}
		break;
		
		case PS_RESPAWN:
			//share invincibility time
			if (state_timer > 40 && instance_exists(teammate_player_id)) {
				if (teammate_player_id.state == PS_RESPAWN) {
					//share respawn invulnerability
					invincible = 1;
					invince_time = 90;
					initial_invince = teammate_player_id.initial_invince;
				}
				else if (teammate_player_id.state != PS_ATTACK_AIR || teammate_player_id.attack != AT_NSPECIAL) {
                    //get off of the respawn platform
                    set_state(PS_IDLE_AIR);
                }
			}
			force_depth = true;
			depth = -3.5;
		break;
								
		
		case PS_ROLL_FORWARD:
        //case PS_TECH_FORWARD:
        case PS_ROLL_BACKWARD:
        //case PS_TECH_BACKWARD:
        	//if the leader is at a lower altitude than the partner, roll towards the partner
        	if (state_timer <= 0 && instance_exists(teammate_player_id) && y < teammate_player_id.y && !(master_player_id.special_held) && x != teammate_player_id.x) {
        		spr_dir = sign(x - teammate_player_id.x);
        	}
        	//draw the partner behind the leader
			force_depth = true;
			depth = -3.5;
        break;
		
		case PS_PARRY:
			//skip parry active frames if the leader gets attacked during them.
			if (state_timer < 2 || state_timer > 9) break;
			if (instance_exists(teammate_player_id) && teammate_player_id.state_cat == SC_HITSTUN && teammate_player_id.state_timer == 0) {
				force_depth = true;
				depth = -3.5;
				spawn_hit_fx(x, y, vfx_parrycancel).depth = depth - 1;
				
				parry_lag = 28 - state_timer;
				was_parried = true;
				set_state(PS_PRATLAND);
			}
		break;
		
		case PS_FIRST_JUMP:
        case PS_DOUBLE_JUMP:
        	//artificially change the jump trajectory so that the partner doesn't stray too far from the player
        if (state_timer <= 0) {
            var holding_dir = right_down - left_down;//(ai_inputs & INP_RIGHT != 0) - (ai_inputs & INP_LEFT != 0);
            if ( !(master_player_id.special_held) && instance_exists(teammate_player_id) && sign(teammate_player_id.x - x) == -holding_dir && sign(hsp) == holding_dir && !hitpause ) {
                hsp += sign(teammate_player_id.x - x) * jump_change;
                //if (sign(hsp) == holding_dir) hsp = 0;
            }
        }
        

        
		//don't break
		default:
			//draw the partner behind the leader
			force_depth = true;
			depth = -3.5;
		break;
		//dashstop: don't cancel into dattack in certain circumstances
		//
	}
}

// ==============================
// universal code
// ==============================


//waveland fix (because oplayer clones are weird)
waveland_handler();

//hud
hud_handler();

//aesthetics
aesthetics_handler();

//check for leading-teammate parries
leading_teammate_got_parried_handler();

//check for hh buffs
deactivate_helping_hand_buff_when_teammate_stops_using_helping_hand();



#define waveland_handler
//for some reason, one clone being in the middle of an airdodge stops the other one from performing any shield options.
//shield_pressed stops updating entirely, but shield_down can still be checked.
//this is a hard-coded workaround for such a situation, that allows all shield options.

if (shield_down == true && shield_down_prev == false) {
	manual_input_wavedash = 6;
}
else {
	manual_input_wavedash = max(0, manual_input_wavedash - 1);
}

if (!free && free_prev && state != PS_JUMPSQUAT && state != PS_FIRST_JUMP) {
	manual_input_wavedash = 0;
}

shield_down_prev = shield_down;
free_prev = free;

if (shield_pressed) return;

if ((manual_input_wavedash) &&  ( (has_airdodge && (state_cat == SC_AIR_NEUTRAL || state_cat == SC_GROUND_NEUTRAL)) || (state == PS_FIRST_JUMP && state_timer == 0) ) ) {
	set_state(PS_AIR_DODGE);
	//if (!shield_pressed) spawn_hit_fx(x, y, 3) //debug
}







#define leader_cycle_buffer
//user_event(7);
if (custom_clone) return;
var this_frame_inputs = 0;
if (left_down) this_frame_inputs |= INP_LEFT;
if (right_down) this_frame_inputs |= INP_RIGHT;
if (up_down) this_frame_inputs |= INP_UP;
if (down_down) this_frame_inputs |= INP_DOWN;


//attack_pressed = ;
  //special_pressed = special_counter < 7;
  //jump_pressed = jump_counter < 7;
  //shield_pressed = shield_counter < 7;



if (attack_down) this_frame_inputs |= INP_ATTACK;
if (special_down) this_frame_inputs |= INP_SPECIAL;
if (jump_down || (tap_jump_counter <= 0 && can_tap_jump())) this_frame_inputs |= INP_JUMP;
if (shield_down) this_frame_inputs |= INP_SHIELD;


if (left_hard_pressed) this_frame_inputs |= INP_LEFT_HARD;
if (right_hard_pressed) this_frame_inputs |= INP_RIGHT_HARD;
//if (up_hard_pressed) this_frame_inputs |= INP_UP_HARD;
//if (down_hard_pressed) this_frame_inputs |= INP_DOWN_HARD;
if (up_hard_counter <= 0) this_frame_inputs |= INP_UP_HARD;
if (down_hard_counter <= 0) this_frame_inputs |= INP_DOWN_HARD;

if (left_strong_pressed) this_frame_inputs |= INP_LEFT_STRONG;
if (right_strong_pressed) this_frame_inputs |= INP_RIGHT_STRONG;
if (up_strong_pressed) this_frame_inputs |= INP_UP_STRONG;
if (down_strong_pressed) this_frame_inputs |= INP_DOWN_STRONG;

if (taunt_pressed) this_frame_inputs |= INP_TAUNT;


if (attack_counter <= 0) this_frame_inputs |= INP_ATTACK_PRESSED;
if (special_counter <= 0) this_frame_inputs |= INP_SPECIAL_PRESSED;
if (jump_counter <= 0 || (tap_jump_counter <= 0 && can_tap_jump()) ) this_frame_inputs |= INP_JUMP_PRESSED;
//if (shield_counter <= 0) this_frame_inputs |= INP_SHIELD_PRESSED;

//if (jump_pressed || (tap_jump_pressed && can_tap_jump()) ) this_frame_inputs |= INP_JUMP_PRESSED;
if (shield_pressed) this_frame_inputs |= INP_SHIELD_PRESSED;

/*
if (attack_pressed) this_frame_inputs |= INP_ATTACK_PRESSED
if (special_pressed) this_frame_inputs |= INP_SPECIAL_PRESSED
if (jump_pressed) this_frame_inputs |= INP_JUMP_PRESSED
if (shield_pressed) this_frame_inputs |= INP_SHIELD_PRESSED
*/

if (left_stick_pressed) this_frame_inputs |= INP_LEFT_STICK
if (right_stick_pressed) this_frame_inputs |= INP_RIGHT_STICK
if (up_stick_pressed) this_frame_inputs |= INP_UP_STICK
if (down_stick_pressed) this_frame_inputs |= INP_DOWN_STICK;// && (free || state == PS_JUMPSQUAT || state == PS_FIRST_JUMP || master_player_id.special_held)

buffer_ai_inputs[buffer_counter] = this_frame_inputs;

var bxoffset = round(hsp * 6 - spr_dir * (40 * (state != PS_WALK_TURN)));// && state != PS_DASH_TURN)));
//var bxoffset = round(-spr_dir * (40 * (state != PS_WALK_TURN && state != PS_DASH_TURN)));

var bx; //round(hsp * 6 - spr_dir * (40 * (state != PS_WALK_TURN && state != PS_DASH_TURN)));
if (!free) {//(!free) {
    bx = x + sign(bxoffset) * 2;
    var bxoffset_half = bxoffset / 2;
    if (ground_type == 1) {
        var i = 0;
        repeat (2) {
            i++;
            var bxx = bx + sign(bxoffset) * 19 + bxoffset_half;
            //var result = (!place_meeting(bxx, y + 1, solid_asset) || place_meeting(bxx, y, solid_asset));
            //print("result "+string(i) + ": " + string(result));
            if (!place_meeting(bxx, y + 1, solid_asset) || place_meeting(bxx, y, solid_asset)) break;
            bx += bxoffset_half;
        }
     }
    else {
        repeat (2) {
            var bxx = bx + sign(bxoffset) * 19 + bxoffset_half;
            if (!place_meeting(bxx, y + 1, platform_asset) || place_meeting(bxx, y, solid_asset)) break;
            bx += bxoffset_half;
        }
    }
}
else {
    bx = x + bxoffset;
}


buffer_x_position[buffer_counter] = round(bx);

buffer_y_position[buffer_counter] = y;

buffer_joy_dir[buffer_counter] = joy_dir; 
buffer_joy_pad_idle[buffer_counter] = joy_pad_idle;

//states are synced in animation.gml.

buffer_counter = (buffer_counter + 1) mod (partner_input_buffer_delay);



#define swap_leader_if_triggered
if (!trigger_leader_swap) return;
trigger_leader_swap = 0;

//user_event4.gml
//swaps the leader and partner.
user_event(4);

return;




#define leader_dspecial_handler
if (state == PS_SPAWN || !is_special_pressed( DIR_DOWN ) || !instance_exists(teammate_player_id)) return;
//print ("current_state: "+ get_state_name(state))
//print ("current_attack: "+ string(attack) + " / " + string(AT_NSPECIAL));
//if the leader is in the middle of using nspecial, schedule that to use dspecial instead.
if (attack == AT_NSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) {
	if (!nspecial_buffer_into_dspecial) {
		nspecial_buffer_into_dspecial = true;
		sound_play(sound_get("trick"));
		clear_button_buffer(PC_SPECIAL_PRESSED);
	}
	return;
}

var success = false;
var target_id = teammate_player_id;
//if a baton is in transit, dspecial affects the leader instead.
if (instance_exists(baton_article_id)) target_id = id;



with (target_id) {
		
	//if the partner can use a special move right now, make it do so.
	//cancelling out of nspecial is also allowed.
	//if (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL) {
	if (can_special || can_attack) {
		if (free) set_state(PS_ATTACK_AIR);
		else set_state(PS_ATTACK_GROUND);
		attack = AT_DSPECIAL;
		window = 0;
		window_timer = 0;
		hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
		success = true;
		//set_attack(AT_DSPECIAL);
	}
	//if the partner is in the middle of using dspecial, stop using dspecial.
	//else, if the partner is in an attack state...
	else if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
		//if they are using dspecial, stop using dspecial.
		
		
		switch (attack) {
			//if they are using dspecial, stop using dspecial.
			case AT_DSPECIAL:
				var last_window = get_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS);
				if (window > 1 && window < last_window) {
					window = get_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS);
					window_timer = 0;
					success = true;
				}
			break;
			//if they are using a normal AND the normal hits, they can cancel out of the last window.
			case AT_JAB:
			case AT_FTILT:
			case AT_DTILT:
			case AT_UTILT:
			case AT_DATTACK:
			case AT_NAIR:
			case AT_FAIR:
			case AT_FTHROW: //just in case
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
				if (has_hit && !hitpause && window == get_attack_value(attack, AG_NUM_WINDOWS)) {
					if (free) set_state(PS_ATTACK_AIR);
					else set_state(PS_ATTACK_GROUND);
					attack = AT_DSPECIAL;
					window = 0;
					window_timer = 0;
					hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
					success = true;
				}
			break;
		}
	}
}
//on success: clear the button buffer, as if it was a real special press
if (success) clear_button_buffer(PC_SPECIAL_PRESSED);
//if the special wasn't successful, prevent using other specials for this frame
else {
	move_cooldown[AT_NSPECIAL] = max(move_cooldown[AT_NSPECIAL], 1);
	move_cooldown[AT_FSPECIAL] = max(move_cooldown[AT_FSPECIAL], 1);
	move_cooldown[AT_USPECIAL] = max(move_cooldown[AT_USPECIAL], 1);
}
return;


#define leader_spawn_nspecial_handler
//'spawn nspecial' can only be used while spawning or while on a respawn platform.
if ( !is_special_pressed( DIR_NONE ) || (state != PS_SPAWN && !(state == PS_RESPAWN && state_timer >= 40)) || instance_exists(baton_article_id)) return;

//user_event(1); //user_event1.gml - spawn a baton.

if (!instance_exists(teammate_player_id)) return;

trigger_leader_swap = true;
clear_button_buffer(PC_SPECIAL_PRESSED);
sound_play(sound_get("baton_spawn"));

with (teammate_player_id) {
	if (species_id == 0) sound_play(sound_get("baton_plusle"));
    else sound_play(sound_get("baton_minun"));
}
/*
//on success: clear the button buffer, as if it was a real special press
if (instance_exists(baton_article_id)) {
	
	//sfx
	sound_play(sound_get("baton_spawn"));
	//skip the baton startup
	baton_article_id.state = 1;
}*/

return;





#define hud_handler
if (visual_hud_icon_hurt && state_cat != SC_HITSTUN && state != PS_RESPAWN && state != PS_DEAD) visual_hud_icon_hurt = 0;
if (!custom_clone) visual_hud_icon_offset_x = min(0, visual_hud_icon_offset_x + 4);
else visual_hud_icon_offset_x = max(-20, visual_hud_icon_offset_x - 4);
return;


#define is_teammate_using_helping_hand
if (!instance_exists(teammate_player_id)) return false;
with (teammate_player_id) return attack == AT_DSPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);


#define deactivate_helping_hand_buff_when_teammate_stops_using_helping_hand
if (!has_been_buffed_by_helping_hand) {
	with (master_player_id) {
		if (hh_charge_expiry_timer > 0) {
			hh_charge_expiry_timer--;
			if (hh_charge_expiry_timer == 0) {
				hh_charge_level = 0;
				hh_charge_percent = 0;
			}
		}
	}
	return;
}
if (is_teammate_using_helping_hand()) return;
has_been_buffed_by_helping_hand = false;

var i = 0;
repeat (50) {
	var n = 1;
	repeat (get_num_hitboxes(i)) {
		set_hitbox_value(i, n, HG_DAMAGE, master_player_id.attack_base_damage[i, n]);
		set_hitbox_value(i, n, HG_BASE_HITPAUSE, master_player_id.attack_base_hitpause[i, n]);
		set_hitbox_value(i, n, HG_BASE_KNOCKBACK, master_player_id.attack_base_knockback[i, n]);
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
		set_hitbox_value(array_index, n, HG_DAMAGE,         master_player_id.ha_attack_base_damage[i, n]   );
		set_hitbox_value(array_index, n, HG_BASE_HITPAUSE,  master_player_id.ha_attack_base_hitpause[i, n] );
		set_hitbox_value(array_index, n, HG_BASE_KNOCKBACK, master_player_id.ha_attack_base_knockback[i, n]);
		n++;
	}
	i++;
}
*/
return;


#define leading_teammate_got_parried_handler

if (leading_teammate_got_parried_trigger == 0) return;

leading_teammate_got_parried_trigger--;
if (leading_teammate_got_parried_trigger != 0) return; 
//at the end of the countdown, make this teammate get parried.
switch (state) {
	//if attacking, just set 'was_parried' to true.
	case PS_ATTACK_GROUND:
	case PS_ATTACK_AIR:
		if (attack != AT_DSPECIAL && attack != AT_EXTRA_3 && attack != AT_TAUNT && attack != AT_TAUNT_2) {
			set_parry_lag_to_maximum();
		}
	break;
	//don't do anything for these states.
	case PS_DEAD:
	case PS_SPAWN:
	case PS_RESPAWN:
	case PS_WALL_TECH:
	break;
	//if already in pratfall or pratland, just set 'was_parried' to true.
	case PS_PRATFALL:
	case PS_PRATLAND:
		set_parry_lag_to_maximum();
	break;
	//any neutral state, set the state to pratfall or pratland.
	case PS_IDLE:
	case PS_IDLE_AIR:
	case PS_WALK:
	case PS_CROUCH:
	case PS_WALK_TURN:
	case PS_WAVELAND:
	case PS_LANDING_LAG:
	case PS_LAND:
	case PS_FIRST_JUMP:
	case PS_DOUBLE_JUMP:
	case PS_DASH:
	case PS_DASH_START:
	case PS_DASH_STOP:
	case PS_DASH_TURN:
	    set_parry_lag_to_maximum();
	    if (free) set_state(PS_PRATFALL);
	    else set_state(PS_PRATLAND);
	break;
	//anything else, wait until next frame.
	default:
		leading_teammate_got_parried_trigger = 1;
	break;
}
return;

#define set_parry_lag_to_maximum
was_parried = true;
parry_lag = max(parry_lag, 40);
if (instance_exists(teammate_player_id)) parry_lag = max(parry_lag, teammate_player_id.parry_lag);
return;


#define aesthetics_handler

if (!custom_clone) {
	visual_batonpass_counter = min(7, visual_batonpass_counter + 0.25);
	if (has_been_buffed_by_helping_hand) {
		visual_hh_buff_counter = (visual_hh_buff_counter + 0.25) mod 10;
		if (visual_hh_buff_counter == 0) {
			visual_hh_buff_x = -sign(visual_hh_buff_x) * (random_func(player, 10, true) * 2 + 10);
			//visual_hh_buff_x += sign(visual_hh_buff_x) * 10;
			visual_hh_buff_y = random_func(player + 4, 20, true) * 2 - 20;
		}
		if (visual_hh_powerup_counter == 0) {
			sound_play(sound_get("stat_up"), false, noone, 0.35, 1);
		}
		if (visual_hh_powerup_counter < 60) {
			if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
				visual_hh_powerup_counter = clamp(visual_hh_powerup_counter + 1, 40, 60);
			}
			else visual_hh_powerup_counter++;
		}
	}
	else {
		visual_hh_powerup_counter = max(visual_hh_powerup_counter - 1, 0);
	}
}

#define leader_update_mimic
var last_interaction_player_obj = argument0.hit_player_obj;

update_mimic_counter++;

if (update_mimic_counter >= 120) {
	update_mimic_counter = 0;
	//see if the last-interacted player exists
	if (instance_exists(last_interaction_player_obj) && instance_exists(unit_player_id_array[0]) && instance_exists(unit_player_id_array[1])) {
		//see which clone is closest to it
		var xx = last_interaction_player_obj.x;
		var yy = last_interaction_player_obj.y;
		var plusle_distance = point_distance(xx, yy, unit_player_id_array[0].x, unit_player_id_array[0].y);
		var minun_distance  = point_distance(xx, yy, unit_player_id_array[1].x, unit_player_id_array[1].y);
		if (plusle_distance <= minun_distance) mimic_clone_id = 0;
		else mimic_clone_id = 1;
	}
	x = clamp(unit_player_id_array[mimic_clone_id].x, blastzone_l, blastzone_r);
	y = clamp(unit_player_id_array[mimic_clone_id].y, blastzone_t, blastzone_b);
}
else if (instance_exists(unit_player_id_array[mimic_clone_id]))  {
	x = clamp(unit_player_id_array[mimic_clone_id].x, blastzone_l, blastzone_r);
	y = clamp(unit_player_id_array[mimic_clone_id].y, blastzone_t, blastzone_b);
}


