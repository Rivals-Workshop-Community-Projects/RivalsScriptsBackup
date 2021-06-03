//hit_player.gml
//Grab
if (my_hitboxID.attack == AT_DAIR && next_dair_move == 0|| my_hitboxID.attack == AT_FSPECIAL) {
	
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
		//Make the enemy invisible
		destroy_hitboxes();
		attack_end();
		if (my_hitboxID.attack == AT_DAIR){
			set_attack(AT_EXTRA_1);
		} else{
			set_attack(AT_FSPECIAL_2);
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

//Grab 2
if (my_hitboxID.attack == AT_DAIR && next_dair_move == 1) {
	
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
		//Make the enemy invisible
		destroy_hitboxes();
		attack_end();
		set_attack(AT_EXTRA_2);
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

if (my_hitboxID.attack == AT_EXTRA_1 || my_hitboxID.attack == AT_EXTRA_2 || my_hitboxID.attack == AT_FSPECIAL_2 && window == 3){
		if(has_hit_player){
		    if (instance_exists(hit_player_obj && (!super_armor || !invincible))){
		        with(hit_player_obj){
		            visible = true
		        }
		    }
		}
}

//Fair 
if (my_hitboxID.attack == AT_FAIR){
	old_vsp = -8
}

//Dspecial
if (my_hitboxID.attack == AT_DSPECIAL){
	jackpot = false
	nspecial_number = 7;
	proj_stored = true;
}

if(has_hit_player){
    if (instance_exists(grabbed_player_obj && (!super_armor || !invincible))){
        with(grabbed_player_obj){
            visible = false
        }
    }
}