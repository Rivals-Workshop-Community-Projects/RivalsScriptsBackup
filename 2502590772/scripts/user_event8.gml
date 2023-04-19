//user_event8.gml
//get arrays of each attack's damage and hitpause.

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


if (is_solo_player) {
	i = 0;
	repeat (50) {
		n = 1;
		//choose which unit to take move data from.
		//if the move has no hitboxes in plusle's data, check minun's data instead.
		
		repeat (get_num_hitboxes(i)) {
			attack_base_damage[i, n] = get_hitbox_value(i, n, HG_DAMAGE);
			attack_base_hitpause[i, n] = get_hitbox_value(i, n, HG_BASE_HITPAUSE);
			var base_kb = get_hitbox_value(i, n, HG_BASE_KNOCKBACK);
			attack_base_knockback[i, n] = base_kb;
			
			//don't buff the empowered strong attacks or jab
			if (i == AT_FSTRONG_2 || i == AT_DSTRONG_2 || i == AT_USTRONG_2 || i == AT_JAB || i == 0 ) {
				attack_base_damage_boosted[i, n] = attack_base_damage[i, n];
				attack_base_hitpause_boosted[i, n] = attack_base_hitpause[i, n];
				attack_base_knockback_boosted[i, n] = attack_base_knockback[i, n];
			}
			//buff everything else
			else {
				attack_base_damage_boosted[i, n] = round(attack_base_damage[i, n] * hh_damage_multiplier);
				if (attack_base_hitpause[i, n] > 0) attack_base_hitpause_boosted[i, n] = (attack_base_hitpause[i, n] + hh_hitpause_increment);
				attack_base_knockback_boosted[i, n] = base_kb + ( sign(base_kb) * hh_base_knockback_increment );
			}
	
			n++;
		}
		i++;
	}
}

else {
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
				
				
				switch (i) {
					//don't buff the empowered Strong attacks.
					case AT_FSTRONG_2:
					case AT_DSTRONG_2:
					case AT_USTRONG_2:
						other.attack_base_damage_boosted[i, n] = other.attack_base_damage[i, n];
						other.attack_base_hitpause_boosted[i, n] = other.attack_base_hitpause[i, n];
						other.attack_base_knockback_boosted[i, n] = other.attack_base_knockback[i, n];
					break;
					
					//for non-empowered Strongs, increase damage and hitpause, but not knockback.
					case AT_FSTRONG:
					case AT_DSTRONG:
					case AT_USTRONG:
						other.attack_base_damage_boosted[i, n] = round(other.attack_base_damage[i, n] * other.hh_damage_multiplier);
						if (other.attack_base_hitpause[i, n] > 0) other.attack_base_hitpause_boosted[i, n] = (other.attack_base_hitpause[i, n] + other.hh_hitpause_increment);
						other.attack_base_knockback_boosted[i, n] = other.attack_base_knockback[i, n];
					break;
					
					//for Jab, increase damage, but only increase hitpause by 2.
					case AT_JAB:
					case 0: //partner jab
						other.attack_base_damage_boosted[i, n] = round(other.attack_base_damage[i, n] * other.hh_damage_multiplier);
						other.attack_base_hitpause_boosted[i, n] = other.attack_base_hitpause[i, n] + 2;
						other.attack_base_knockback_boosted[i, n] = other.attack_base_knockback[i, n];
					break;
					
					//buff damage, hitpause and knockback of every other move.
					default:
						other.attack_base_damage_boosted[i, n] = round(other.attack_base_damage[i, n] * other.hh_damage_multiplier);
						if (other.attack_base_hitpause[i, n] > 0) other.attack_base_hitpause_boosted[i, n] = (other.attack_base_hitpause[i, n] + other.hh_hitpause_increment);
						other.attack_base_knockback_boosted[i, n] = base_kb + ( sign(base_kb) * other.hh_base_knockback_increment );
					break;
				}
		
				n++;
			}
		}
		i++;
	}
}




