if (attack == AT_DAIR){
    window = 4;
    dairbounce = false;
}

if (attack == AT_USTRONG){
	sound_play(sound_get("SFXCoinBling"));
}
if (attack == AT_NSPECIAL){
	sound_play(sound_get("SFXHelmetClang"));
}

if (attack == AT_NSPECIAL){
    waft_timer = waft_timer + 300;
}

//Shoulder Bash Shenanigans

if attack == AT_FSPECIAL{
	fspecial_hit = true;
}

//Up Special Command Grab stuff

if (my_hitboxID.attack == AT_USPECIAL) {
	
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
		
		//transition to the 'throw' part of the attack.
		destroy_hitboxes();
		attack_end();
		set_attack(AT_USPECIAL_2);
		
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

if attack == AT_USPECIAL_2 && window == 3{
	set_attack(AT_USPECIAL);
	window = 5;
	window_timer = 1
	set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 6);
}