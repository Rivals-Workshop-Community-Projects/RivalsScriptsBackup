//hit_player - called when one of your hitboxes hits a player

if (my_hitboxID.attack == AT_EXTRA_2 && my_hitboxID.hbox_num == 3) {
	tapes -= 1;
}

if (hit_player_obj.taped == true) {
	if (my_hitboxID.attack == AT_JAB)
	|| (my_hitboxID.attack == AT_UTILT)
	|| (my_hitboxID.attack == AT_DTILT)
	|| (my_hitboxID.attack == AT_FAIR)
	|| (my_hitboxID.attack == AT_UAIR)
	|| (my_hitboxID.attack == AT_USTRONG)
	|| (my_hitboxID.attack == AT_FSPECIAL)
	
	|| (my_hitboxID.attack == AT_FTHROW)
	|| (my_hitboxID.attack == AT_DTHROW)
	|| (my_hitboxID.attack == AT_NTHROW)
	|| (my_hitboxID.attack == AT_UTHROW)
	|| (my_hitboxID.attack == AT_DSTRONG_2)
	|| (my_hitboxID.attack == AT_FSTRONG_2)
	|| (my_hitboxID.attack == AT_AT_EXTRA_2 && 2 >= my_hitboxID.hbox_num)
	|| (my_hitboxID.attack == AT_USPECIAL_2)
	|| (my_hitboxID.attack == AT_FSPECIAL_2) {
		take_damage( player, -1, -3);
		sound_play(sound_get("sfx-tape-3"));
	}
}

//taped
if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1)
	|| (my_hitboxID.attack == AT_EXTRA_2 && my_hitboxID.hbox_num >= 3)
	|| (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1) {
	hit_player_obj.taped = true;
	sound_play(sound_get("sfx-tape-1"));
}	else {
	hit_player_obj.taped = false;
}

//FSpecial
if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1) {
	take_damage( player, -1, 3);
}

if (my_hitboxID.attack == AT_FSPECIAL_2) {
	attack_end();
	move_cooldown[AT_USPECIAL_2] = 20;
}

if (my_hitboxID.attack == AT_USPECIAL) {
	if my_hitboxID.hbox_num == 1 {
			my_hitboxID.vsp = -6;
			my_hitboxID.hitbox_timer = my_hitboxID.length-10;
	}
}


//hit_player.gml
if (my_hitboxID.attack == AT_USTRONG) {
	
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
		set_attack(AT_USTRONG_2);
		
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