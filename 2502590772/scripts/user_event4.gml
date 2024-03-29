//user_event4.gml
//swaps the leader and partner.


if ((!instance_exists(teammate_player_id)) || custom_clone || master_player_id.initialize_unit_players == false) return;

//swap health values
damage_percent_as_teammate = get_player_damage(player);
set_player_damage(player, teammate_player_id.damage_percent_as_teammate);



//teammate_player_id.damage_percent_as_teammate = get_player_damage(player);
//make the leader a follower
if (!is_solo_player && !is_test_player) {
	custom_clone = true;
	//give the leader's aerials a short delay - prevents instant-buffered aerials from occuring before the AI attempts a recovery
	put_aerials_on_cooldown();
	
	//copy the partner's buffer
	repeat (partner_input_buffer_delay) {
	
	    buffer_ai_inputs[i] = teammate_player_id.buffer_ai_inputs[i];
	    
	    buffer_joy_dir[i] = teammate_player_id.buffer_joy_dir[i]
	    buffer_joy_pad_idle[i] = teammate_player_id.buffer_joy_pad_idle[i]
	    
	    buffer_x_position[i] = x;
	    buffer_y_position[i] = y;
	    
	    buffer_sync_state[i] = teammate_player_id.buffer_sync_state[i];
	    
	    i++;
	}
	
}
//else if (is_solo_player && nspecial_buffer_into_dspecial) {
	
//}

//reset buff aesthetic variables
visual_hh_powerup_counter = 0;

//make the follower a leader
with (teammate_player_id) {
	
	if (!is_solo_player && !is_test_player) {
	
	    custom_clone = false;
		
		//clean buffered inputs
		var i = 0;
	    repeat (partner_input_buffer_delay) {
	    
	        buffer_ai_inputs[i] = 0;
	        
	        buffer_joy_dir[i] = joy_dir; 
	        buffer_joy_pad_idle[i] = joy_pad_idle;
	        
	        buffer_x_position[i] = x;
	        buffer_y_position[i] = y;
	        
	        buffer_sync_state[i] = state;
	        
	        i++;
	    }
	}
    //if using an attack:
    if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
    	switch (attack mod 50) {
    		//exit dspecial if currently using that
    		case AT_DSPECIAL:
    			safely_set_state(PS_IDLE);
    			//make the new leader use DSpecial
    			with (teammate_player_id) {
    				var use_dspec = 0;
    				if (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL) use_dspec = 1;
    				else {
    					switch (state) {
    						case PS_DASH:
    						case PS_DASH_TURN:
    						case PS_DASH_START:
    						case PS_DASH_STOP:
    						case PS_WALL_JUMP:
    						case PS_LAND:
    						case PS_LANDING_LAG:
    						case PS_WALK_TURN:
    						case PS_JUMPSQUAT:
    							use_dspec = 1;
    						break;
    					}
    				}
    				if (use_dspec) {
	    				attack_end();
						destroy_hitboxes();
						move_cooldown[AT_DSPECIAL] = 0;
						set_attack(AT_DSPECIAL);
    				}
    			}
    		break;
    		//exit uspecial and clamp momentum
    		case AT_USPECIAL:
    		case AT_USPECIAL_2:
    			if (!was_parried) safely_set_state(PS_IDLE);
    			vsp = clamp(vsp, -4, 0);
    			hsp = clamp(hsp, -4, 4);
    		break;
    	}
    }
    //if in pratfall, exit pratfall
    else if (state == PS_PRATFALL && !was_parried) {
    	safely_set_state(PS_IDLE);
    }
    
    //slow fall
    if (!hitpause) vsp = min(vsp, 2);
    
    //spawn_hit_fx(x, y - 30, vfx_batoncaught);
    visual_batonpass_counter = 0;
    
}

#define safely_set_state
attack_end();
destroy_hitboxes();
set_state(argument0);
return;


#define put_aerials_on_cooldown
move_cooldown[AT_NAIR] = 2;
move_cooldown[AT_UAIR] = 2;
move_cooldown[AT_DAIR] = 2;
move_cooldown[AT_FAIR] = 2;
move_cooldown[AT_BAIR] = 2;
return;