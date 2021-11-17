if (my_hitboxID.attack == AT_UTILT && my_hitboxID.hbox_num == 1) {
	
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false && !hit_player_obj.super_armor && !hit_player_obj.invincible) {
		
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

if (my_hitboxID.attack == AT_DAIR && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2)) {
	
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false && !hit_player_obj.super_armor && !hit_player_obj.invincible)  {
		
		//transition to the 'throw' part of the attack.
		destroy_hitboxes();
		attack_end();
		window = 5;
		window_timer = 0;
		wall_player_x = y;
		wall_player_xoffset = 0;
		
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

//FSpecial
if (my_hitboxID.attack == AT_FSPECIAL && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2)) {
	//Add to the mark
	var mark_times = my_hitboxID.hbox_num == 2 ? 2 : 1
	repeat(mark_times) {
		if ((!instance_exists(hit_player_obj.anthem_marked_id) || hit_player_obj.anthem_marked_id == id) && hit_player_obj.anthem_marked_amount < fspecial_amount_max && (hit_player_obj.anthem_marked_timer <= 0 || hit_player_obj.anthem_marked_timer > 60)) {
			hit_player_obj.anthem_marked = true;
			hit_player_obj.anthem_marked_amount += 1;
			
			var amount = hit_player_obj.anthem_marked_amount;
			var hbox = create_hitbox(AT_FSPECIAL, 3, round(hit_player_obj.x), round(hit_player_obj.y))
			hbox.anthem_track_dir = (amount / hit_player_obj.anthem_marked_amount) * 360;
			hbox.anthem_track_len = 64;
			hbox.anthem_marked_player = hit_player_obj;
			hbox.x = hit_player_obj.x + lengthdir_x(hbox.anthem_track_len, hbox.anthem_track_dir);
			hbox.y = hit_player_obj.y - (hit_player_obj.char_height / 2) + lengthdir_y(hbox.anthem_track_len, hbox.anthem_track_dir);
			hbox.anthem_hittime = hit_player_obj.anthem_marked_amount * 30;
			hbox.player = my_hitboxID.player;
			hit_player_obj.anthem_marked_hboxes[amount] = hbox;
			hit_player_obj.anthem_marked_amount = clamp(hit_player_obj.anthem_marked_amount, 0, fspecial_amount_max);
			hit_player_obj.anthem_marked_id = id;
			hit_player_obj.anthem_marked_timer = fspecial_timer_max;
			
			for (var i = 0; i < hit_player_obj.anthem_marked_amount; i++) {
				if (instance_exists(hit_player_obj.anthem_marked_hboxes[i]))
					hit_player_obj.anthem_marked_hboxes[i].anthem_track_dir = (i / hit_player_obj.anthem_marked_amount) * 360;
			}
		}
	}
	
	if (hit_player_obj.anthem_marked_amount == fspecial_amount_max) {
		orig_knock = 0;
	}
}

if (my_hitboxID.attack == 49 && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3)) {
	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false && !hit_player_obj.super_armor && !hit_player_obj.invincible)  {
		
		//transition to the 'throw' part of the attack.
		destroy_hitboxes();
		attack_end();
		window = 6;
		window_timer = 0;
		wall_player_x = y;
		wall_player_xoffset = 0;
		
		//if this attack hasn't grabbed a player yet, grab the player we just hit.
		if (ds_list_find_index(fs_players, hit_player_obj) <= -1) {
			ds_list_add(fs_players, hit_player_obj);
		}
	}
}