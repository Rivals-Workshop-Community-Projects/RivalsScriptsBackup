//user_event3.gml - master initialization.
//called at the start of update.gml

//the game crashes when holding down at the start of the match, so let's try this:
down_down = false;

initialize_unit_players = true;

var player_type = "oPlayer";
//if (object_index == asset_get("oTestPlayer")) player_type = "oTestPlayer";
//else player_type = "oPlayer";

var edit_instance_id;
created_instance_index = 0; //since everything in load.gml and attacks happens instantly, we need to make a record of which character is being spawned beforehand.
unit_player_id_array[0] = instance_create( x + spr_dir * 320, y, player_type); //plusle
created_instance_index = 1;
unit_player_id_array[1] = instance_create( x - spr_dir * 320, y, player_type); //minun

unit_current_leader_index = 0;

edit_instance_id = unit_player_id_array[0];
edit_instance_id.master_player_id = id;
edit_instance_id.teammate_player_id = unit_player_id_array[1];
edit_instance_id.species_id = 0; //plusle
edit_instance_id.custom_clone = 0; //leader 
edit_instance_id.state = state;

edit_instance_id = unit_player_id_array[1];
edit_instance_id.master_player_id = id;
edit_instance_id.teammate_player_id = unit_player_id_array[0];
edit_instance_id.species_id = 1; //minun
edit_instance_id.custom_clone = 1; //follower 
edit_instance_id.state = state;

//this player doesn't take part in the match, so deactivate it
hitpause = true;
invincible = true;
gravity_speed = 0;
//set_state(PS_DEAD);
set_attack(AT_EXTRA_3);
visible = false;

//get arrays of each attack's damage and hitpause.

/*
attack_base_damage[0, 0] = 0;
attack_base_hitpause[0, 0] = 0;
attack_base_damage_boosted[0, 0] = 0;
attack_base_hitpause_boosted[0, 0] = 0;
*/
/*
with unit_player_id_array[0] {
    var index = 0
	i = 1;
	repeat (40) {
	    if (get_num_hitboxes(i) >= 1) {
	        other.ha_attack_index[index] = i;
    		n = 1;
    		repeat (get_num_hitboxes(i)) {
    			other.ha_attack_base_damage[index, n] = get_hitbox_value(i, n, HG_DAMAGE);
    			other.ha_attack_base_damage_boosted[index, n] = round(other.ha_attack_base_damage[index, n] * other.hh_damage_multiplier);
    			other.ha_attack_base_hitpause[index, n] = get_hitbox_value(i, n, HG_BASE_HITPAUSE);
    			other.ha_attack_base_hitpause_boosted[index, n] = (other.ha_attack_base_hitpause[index, n] + other.hh_hitpause_increment);
    			
    			var base_kb = get_hitbox_value(i, n, HG_BASE_KNOCKBACK);
    			other.ha_attack_base_knockback[index, n] = base_kb;
    			other.ha_attack_base_knockback_boosted[index, n] = base_kb + ( sign(base_kb) * other.hh_base_knockback_increment );
    			n++;
    		}
    		index++;
	    }
		i++;
	}
}

*/

var i = 0;
var n = 0;
repeat (50) {
	repeat (6) {
		attack_base_damage[i, n] = 0;
    	attack_base_hitpause[i, n] = 0;
    	attack_base_damage_boosted[i, n] = 0;
    	attack_base_hitpause_boosted[i, n] = 0;
    	n++;
	}
	
    i++;
}
/*
with unit_player_id_array[0] {
	i = 0;
	repeat (50) {
		n = 1;
		repeat (get_num_hitboxes(i)) {
			other.attack_base_damage[i, n] = get_hitbox_value(i, n, HG_DAMAGE);
			other.attack_base_damage_boosted[i, n] = round(other.attack_base_damage[i, n] * other.hh_damage_multiplier);
			other.attack_base_hitpause[i, n] = get_hitbox_value(i, n, HG_BASE_HITPAUSE);
			other.attack_base_hitpause_boosted[i, n] = (other.attack_base_hitpause[i, n] + other.hh_hitpause_increment);
			
			var base_kb = get_hitbox_value(i, n, HG_BASE_KNOCKBACK);
			other.attack_base_knockback[i, n] = base_kb;
			other.attack_base_knockback_boosted[i, n] = base_kb + ( sign(base_kb) * other.hh_base_knockback_increment );	
			
			n++;
		}
		i++;
	}
}
*/

i = 0;
repeat (50) {
	n = 1;
	//choose which unit to take move data from.
	//if the move has no hitboxes in plusle's data, check minun's data instead.
	var unit_to_check = 0;
	with (unit_player_id_array[0]) {
		if (get_num_hitboxes(i) <= 0) unit_to_check = 1;
	}
	with (unit_player_id_array[unit_to_check]) {
		
		repeat (get_num_hitboxes(i)) {
			other.attack_base_damage[i, n] = get_hitbox_value(i, n, HG_DAMAGE);
			other.attack_base_hitpause[i, n] = get_hitbox_value(i, n, HG_BASE_HITPAUSE);
			var base_kb = get_hitbox_value(i, n, HG_BASE_KNOCKBACK);
			other.attack_base_knockback[i, n] = base_kb;
			
			//don't buff the empowered strong attacks or jab
			if (i == AT_FSTRONG_2 || i == AT_DSTRONG_2 || i == AT_USTRONG_2 || i == AT_JAB || i == 0 ) {
				other.attack_base_damage_boosted[i, n] = other.attack_base_damage[i, n];
				other.attack_base_hitpause_boosted[i, n] = other.attack_base_hitpause[i, n];
				other.attack_base_knockback_boosted[i, n] = other.attack_base_knockback[i, n];
			}
			//buff everything else
			else {
				other.attack_base_damage_boosted[i, n] = round(other.attack_base_damage[i, n] * other.hh_damage_multiplier);
				if (other.attack_base_hitpause[i, n] > 0) other.attack_base_hitpause_boosted[i, n] = (other.attack_base_hitpause[i, n] + other.hh_hitpause_increment);
				other.attack_base_knockback_boosted[i, n] = base_kb + ( sign(base_kb) * other.hh_base_knockback_increment );
			}
	
			n++;
		}
	}
	i++;
}





