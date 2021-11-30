// code for kamehameha

if(my_hitboxID.attack == AT_DAIR){
	if(my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2){
		destroy_hitboxes();
		window = 6;
		window_timer = 0;
	}
}

if(my_hitboxID.attack == AT_USPECIAL){
	if(my_hitboxID.hbox_num == 1){
		other.x = x;
		other.y = y;
		spawn_hit_fx(other.x - spr_dir, other.y, 112);
	}
}
if(my_hitboxID.attack == AT_NSPECIAL){
	if(my_hitboxID.hbox_num == 1){
		if(hatch_amount < 3000){
	   hatch_amount += 200 * hatch_mult;
      }
	}
}
if(my_hitboxID.attack == AT_FSPECIAL_2){
	if(my_hitboxID.hbox_num == 2){
		if(hatch_amount < 3000){
	   hatch_amount += 400 * hatch_mult;
      }
	}
}
if(my_hitboxID.attack == AT_DSPECIAL){
	if(my_hitboxID.hbox_num == 1){
		if(hatch_amount < 3000){
	   hatch_amount += 200 * hatch_mult;
      }
      create_hitbox(AT_NSPECIAL, 2, other.x, other.y -15);
	}
}

//hit_player.gml
if (my_hitboxID.attack == AT_USTRONG) {
	if(my_hitboxID.hbox_num == 1){
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) && was_parried == false && hit_player_obj.clone == false) {
		
		//transition to the 'throw' part of the attack.
		destroy_hitboxes();
			window = 5;
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
}

if (my_hitboxID.attack == AT_DSTRONG) {
	if(my_hitboxID.hbox_num == 1){
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) && was_parried == false && hit_player_obj.clone == false) {
		
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
}

if (my_hitboxID.attack == AT_FSPECIAL) {
	
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
		set_attack(AT_FSPECIAL_2);
		
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


//hit_player.gml
if (my_hitboxID.attack == AT_DSPECIAL_2) {
	if(my_hitboxID.hbox_num == 1){
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) && was_parried == false && hit_player_obj.clone == false) {
		
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
	}if(my_hitboxID.hbox_num == 2){
		spawn_hit_fx(other.x - spr_dir, other.y, 112);
		sound_play(asset_get("mfx_star"));
		sound_play(asset_get("sfx_ori_energyhit_heavy"));
		charm_timer = 600;
	}
}
