//No shockwave hitboxes

if (my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 1) {
    hit_player_obj.should_make_shockwave = false;
}

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1) {
	
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
		
		window = 4;
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

if (my_hitboxID.attack == 49 && my_hitboxID.hbox_num == 1) {
	
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
		
		window = 4;
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


if (my_hitboxID.attack == 49 && my_hitboxID.hbox_num == 2) {
    hitstop = 90;
    hit_player_obj.hitstop = 90;
}

// //Hitstop changes while in Slow Start to be a little less.
// if (slowstart_state == SLOWSTART_STATE_ON) {
//     if hitstop >= 5 {
//         hitstop -= 3
//         hit_player_obj.hitstop -= 3
//     }

//      if hitstop >= 10 {
//         hitstop -= 3
//         hit_player_obj.hitstop -= 3
//     }

// }