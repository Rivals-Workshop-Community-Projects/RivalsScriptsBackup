//grab codes
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
if (my_hitboxID.attack == AT_FSPECIAL) {
	// FSPEC COOLDOWN NO MORE WOBBLING 
    move_cooldown[AT_FSPECIAL] = 40;
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
	    //window
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
if (my_hitboxID.attack == AT_FSPECIAL || my_hitboxID.attack == AT_DAIR) {
	move_cooldown[AT_NSPECIAL] = 55;
}

if (my_hitboxID.attack == AT_NSPECIAL) {
	// FSPEC COOLDOWN NO MORE WOBBLING 
    move_cooldown[AT_NSPECIAL] = 70;
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
	  	set_attack_value(AT_NSPECIAL,AG_NUM_WINDOWS,5);
	    //window
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

if (my_hitboxID.attack == AT_USPECIAL) {
	
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.
	if !can_use_uspecial { //now you get uspecial back whenever you hit em
	   can_use_uspecial = true;
	}
	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false){
	    //window
	    set_attack_value(AT_USPECIAL,AG_NUM_WINDOWS,5);
	    //make launcher spike if target is above 50%
	    if get_player_damage(hit_player_obj.player) >= 50 {
	    	set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 270);
	    }
	    if window == 2 {
	    	destroy_hitboxes();
	    	window = 4;
	    	window_timer = 0;
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
if (my_hitboxID.attack == AT_DAIR) {
	move_cooldown[AT_DAIR] = 50;
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
	    //window
	    destroy_hitboxes();
	      
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

//dspecial flower grab code
if (my_hitboxID.attack == AT_DSPECIAL) {
	if ((dros_flower.state == 3)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
	  	//change flower  state to hold
	  	dros_flower.state = 5;
	  	dros_flower.state_timer = 0;
	  	
		if (!instance_exists(dros_flower.fly_grabbed_player_obj)) { dros_flower.fly_grabbed_player_obj = hit_player_obj; }
		
		//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
		else {
			var old_grab_distance = point_distance(dros_flower.x, dros_flower.y, dros_flower.fly_grabbed_player_obj.x, dros_flower.fly_grabbed_player_obj.y);
			var new_grab_distance = point_distance(dros_flower.x, dros_flower.y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { dros_flower.fly_grabbed_player_obj = hit_player_obj; }
		}
		//change grab duration based on grabbed player %
		with (dros_flower) {
			fly_hold_time = fly_hold_time_base + floor(get_player_damage(fly_grabbed_player_obj.player)/3)
		}
	}
}else {
	if instance_exists(dros_flower) && dros_flower.fly_grabbed_player_obj == hit_player_obj {
		dros_flower.fly_grabbed_player_obj = noone;
	}
}

if my_hitboxID.attack == AT_TAUNT {
	create_deathbox(x - 15 * spr_dir,y - 35,35,45,hit_player_obj.player,true,0,3,2);
}





