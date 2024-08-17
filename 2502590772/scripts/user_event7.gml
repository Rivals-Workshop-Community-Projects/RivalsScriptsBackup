//user_event7.gml
//for solo plusle/minun






//checks whether there is one other solo plusle/minun on the same team, and assigns them as a teammate.
if (!get_match_setting(SET_TEAMS) || instance_exists(teammate_player_id)) exit;
var this_player_team = get_player_team(player);
var found_player_id = noone;
var found_player_counter = 0;



with (oPlayer) {
	
    if (id == other.id || get_player_team(player) != this_player_team || custom_clone || ("this_character_is_plusle_and_minun" in other) == false || get_player_color(player) < 30) continue; //url != other.url 
    //("this_character_is_plusle_and_minun" in other) == false ||
     
    found_player_id = id;
    found_player_counter++;
}



//print("found " + string(found_player_counter) + " players")
if (found_player_counter != 1) exit;




//found exactly one teammate; go ahead and add them
teammate_player_id = found_player_id;


//set helping hand damage arrays (it's a copypaste from the one in update.gml, with small edits)
set_hh_arrays();

//undo master player id
is_master_player = false;

//do the same thing with the teammate
with (teammate_player_id) {
    
    teammate_player_id = other.id;
    
    //fren_hitbox = create_hitbox(AT_EXTRA_3, 1, teammate_player_id.x, teammate_player_id.y - 4);
    
    //i = 1;
    //repeat (4) {
    //   fren_hitbox.can_hit[i] = (i == teammate_player_id.player);
    //   i++;
    //}
    
    //attack_base_damage = other.attack_base_damage;
	//attack_base_hitpause = other.attack_base_hitpause;
	//attack_base_damage_boosted = other.attack_base_damage_boosted;
	//attack_base_hitpause_boosted = other.attack_base_hitpause_boosted;
	
	//undo master player id
	is_master_player = false;
}

//spawn a hitbox on the new teammate, which will permanently hit-lockout them for the rest of the game
//var fren_hitbox = create_hitbox(AT_EXTRA_3, 1, teammate_player_id.x, teammate_player_id.y - 4);
//make sure this hitbox can only hit the new teammate
//
//var i = 1;
//repeat (4) {
//   fren_hitbox.can_hit[i] = (i == teammate_player_id.player);
//   i++;
//}



#define set_hh_arrays

return;

var i = 0;
var n = 0;
var player_array = [id, teammate_player_id];

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

i = 0;
repeat (50) {
	n = 1;
	
	print("testing [i=" + string(i) + ", n = " + string(n) + "]")
	//choose which unit to take move data from.
	//if the move has no hitboxes in plusle's data, check minun's data instead.
	var unit_to_check = 0;
	with (player_array[0]) {
		if (get_num_hitboxes(i) <= 0) unit_to_check = 1;
	}
	with (player_array[unit_to_check]) {
		
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
