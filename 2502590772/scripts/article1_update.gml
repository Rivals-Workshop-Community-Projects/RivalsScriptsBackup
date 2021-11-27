//article1_update
//baton

state_timer++;


//while this instance exists, put nspecial on cooldown
sending_unit_id.move_cooldown[AT_NSPECIAL] = 2;
receiving_unit_id.move_cooldown[AT_NSPECIAL] = 2;

switch (state) {
    case 0: //newly spawned
    	//move above the player's head
        x = sending_unit_id.x + spr_dir * 10;
        y = sending_unit_id.y - 80;
        
        //drop if ko'd
        if (sending_unit_id.state == PS_DEAD || sending_unit_id.state == PS_RESPAWN) {
        	vsp = -4;
        	go_to_state(3);
        	break;
        }
        
        
        
        //transition + animation
        var state_length = 5;
        
        if (state_timer >= state_length) { 
        	go_to_next_state();
        	image_index = 4;
        	sound_play(sound_get("baton_travel"));
        }
        else { 
        	image_index = floor(state_timer / state_length * 5);
        }
        
    break;
    
    case 1: //travel to partner
        //cancel if the partner or leader currently doesn't exist (or if it somehow takes >5 seconds to reach the partner)
        if (!instance_exists(sending_unit_id.teammate_player_id) || !instance_exists(sending_unit_id) || sending_unit_id.state == PS_RESPAWN || state_timer > 300) {
            go_to_state(3);
            break;
        }
        image_index += 0.5;
        if (image_index >= 12) image_index -= 8;
        
        move_speed += 2;

        partner_distance = point_distance(x, y, receiving_unit_id.x, receiving_unit_id.y - 40);
        //if the baton reaches the partner, activate it
        if (partner_distance < move_speed) {
             x = receiving_unit_id.x;
            y = receiving_unit_id.y - 40;
            hsp = 0;
            vsp = -4;
            sending_unit_id.trigger_leader_swap = true;
            
            
            with (receiving_unit_id) {
            	//refresh the receiver's double-jump
            	djumps = 0;
            	//play sound effect
            	if (species_id == 0) sound_play(sound_get("baton_plusle"));
    			else sound_play(sound_get("baton_minun"));
    			if (state_cat != SC_HITSTUN && state != PS_TUMBLE) {
    				if (hitpause) old_vsp = min(old_vsp, 0);
    				else vsp = min(vsp, 0);
    			}
            }
            
            
            //swap_leader();
            go_to_next_state();
            //instance_destroy();
            exit;
            break;
        }
        partner_dir = point_direction(x, y, receiving_unit_id.x, receiving_unit_id.y - 40);
        hsp = lengthdir_x(move_speed, partner_dir);
        vsp = lengthdir_y(move_speed, partner_dir);
    break;
    
    case 2: //successful; despawn
    	if (instance_exists(receiving_unit_id)) {
    		hsp = receiving_unit_id.hsp;
    		y = clamp(y, receiving_unit_id.y - 80, receiving_unit_id.y - 40);
    	}
    	else hsp = clamp(hsp, -4, 4);
    	vsp += 0.25;
    	image_index -= (0.5 * (1 - state_timer / 30));
	    if (image_index <= 4) image_index += 8;
	    
	    if (state_timer >= 30) {
	    	spawn_hit_fx(x, y, 14);
	    	instance_destroy();
	    }

	    
	    
    break;
    
    case 3: //interrupted; despawn
	    vsp += 0.25;
	    vsp *= 0.9;
	    hsp *= 0.9;
	    image_index -= 1;
	    if (image_index <= 4) image_index += 8;
	    if (state_timer >= 30) {
	    	spawn_hit_fx(x, y, 14);
	    	instance_destroy();
	    }
    break;
    
}

#define go_to_next_state
state++;
state_timer = 0;
return;


#define go_to_state(state_num)
state_num = argument0;
state = state_num;
state_timer = 0;
return;


#define swap_leader
sending_unit_id.trigger_leader_swap = true;
return;
var old_player_id = sending_unit_id;
var new_player_id = receiving_unit_id;

with (old_player_id) {
    custom_clone = false;
    partner_instance_id = new_player_id;
}
with (new_player_id) {
	custom_clone = false;
	partner_instance_id = old_player_id;
	
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

var old_player_id = player_id;
var new_player_id = receiving_unit_id;



//player_id = receiving_unit_id;

//update all articles to reference the new leader
//with (obj_article1) {
//    if (player_id == old_player_id) player_id = new_player_id;
//}
return;