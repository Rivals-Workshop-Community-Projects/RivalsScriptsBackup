//hit_player

if (my_hitboxID.attack != AT_DAIR && my_hitboxID.attack != AT_DTILT && my_hitboxID.attack != AT_FTILT && 
    my_hitboxID.attack != AT_NAIR && !(my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 1) && 
    !(my_hitboxID.attack == AT_FAIR && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2) ) &&
    !(my_hitboxID.attack == AT_USPECIAL && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 3) ) ) {
    sound_play( sound_get("hit_sound") );
    if (my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 1) {
        //sound_play( asset_get("sfx_waterhit_weak") );
    }
}

if ( my_hitboxID.attack == AT_FTILT || (my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 2) || (my_hitboxID.attack == AT_USTRONG && (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4 || my_hitboxID.hbox_num == 6) ) ) {
    sound_play( sound_get("crit_hit_sound") );
}

if (my_hitboxID.attack == AT_NSPECIAL) {
	if (my_hitboxID.explosion) hit_player_obj.inkling_nspecial_hitmarker += 10;
}

if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num > 1 && my_hitboxID.hbox_num <= 4) {
	
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
		sound_play(asset_get("sfx_hod_ustrong_whip"))
		//window = 5;
        //window_timer = 0;
        //saved_hand_pos_x = x+18*spr_dir+10*spr_dir+10*spr_dir*uspecial_loops 
        //saved_hand_pos_y = y-68-20-20*uspecial_loops
		
		//if this attack hasn't grabbed a player yet, grab the player we just hit.
		if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }

		//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
		else {
			var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
			var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
		}

		grabbed_player_relative_x = grabbed_player_obj.x - x;
		grabbed_player_relative_y = grabbed_player_obj.y - y;
	}
}

if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 5) {
	move_cooldown[AT_USPECIAL] = 80;
}