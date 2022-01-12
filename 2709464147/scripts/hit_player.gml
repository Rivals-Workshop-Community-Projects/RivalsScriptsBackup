if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1) {
	
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false && !hit_player_obj.super_armor && hit_player_obj.soft_armor = 0 && !hit_player_obj.invincible) {
		
		//transition to the 'throw' part of the attack.
		destroy_hitboxes();
		var facing = (right_down - left_down) == -spr_dir;
		var facing_stick = (right_stick_down - left_stick_down) == -spr_dir;
		var facing_strong = (right_strong_down - left_strong_down) == -spr_dir;
		if (down_down || down_stick_down || down_strong_down) {
            set_attack(AT_DTHROW);
		}
		else if (up_down || up_stick_down || up_strong_down) {
            set_attack(AT_UTHROW);
		}
		else if (facing || facing_stick || facing_strong) {
            set_attack(AT_NTHROW);
		}
		else {
            set_attack(AT_FTHROW);
		}
		
		//if this attack hasn't grabbed a player yet, grab the player we just hit.
		if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
		
		//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
		else {
			var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
			var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
		}
	}
}