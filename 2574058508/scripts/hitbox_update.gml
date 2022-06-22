if attack == AT_NSPECIAL {
	player_id.attack_cooldown[AT_NSPECIAL] = 90
}

if(attack == AT_DSPECIAL){
	if(player_id.state_cat == SC_HITSTUN){
		can_hit_self = true;
	} else {
		can_hit_self = false;
	}
}