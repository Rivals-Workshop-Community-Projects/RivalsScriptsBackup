//hit_player - called when one of your hitboxes hits a player


if (my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 1) {
	window = 4;
	window_timer = 20;
}

if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1) {
	sound_play(sound_get("metal"));
	old_vsp = -1;
}

if (my_hitboxID.attack == AT_FSPECIAL) {
	destroy_hitboxes();
	attack_end();
	sound_play(sound_get("bounce"));
	old_vsp = -6;
}

//hit_player.gml
if (my_hitboxID.attack == AT_NSPECIAL) {
	
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
		//nah we staying here
			window = 6;
			window_timer = 0;

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

if (my_hitboxID.attack == AT_FTHROW || my_hitboxID.attack == AT_NTHROW) {
	move_cooldown[AT_NSPECIAL] = 50;
	destroy_hitboxes();
}