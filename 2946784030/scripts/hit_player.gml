//Down Strong Grab Code
if my_hitboxID.attack == AT_DSTRONG
&& my_hitboxID.hbox_num == 2
&& (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
&& hit_player_obj.super_armor == false
&& hit_player_obj.clone == false
&& was_parried == false{
    wario_fstrong_player_obj = hit_player_obj;
}

if my_hitboxID.attack == 49
&& my_hitboxID.hbox_num == 1
&& (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
&& hit_player_obj.super_armor == false
&& hit_player_obj.clone == false
&& was_parried == false{
	grabbed_player_obj = hit_player_obj;
	window_timer = 0;
	window = 3;
	old_vsp = -16;
}

if my_hitboxID.attack == 49
&& my_hitboxID.hbox_num >= 2{
	shake_camera(3, 5);
	if my_hitboxID.hbox_num == 8{
		sound_play(asset_get("sfx_abyss_explosion"));
	}
}

//Piledriver
if (my_hitboxID.attack == AT_USPECIAL){
	
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
	  && hit_player_obj.super_armor == false
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


//Neutral Special
if (my_hitboxID.attack == AT_NSPECIAL) && (attack == AT_NSPECIAL) {
	
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
	  && was_parried == false
	  && hit_player_obj.super_armor == false
	  && hit_player_obj.clone == false) {
		
		//transition to the 'throw' part of the attack.
		destroy_hitboxes();
		attack_end();
		set_attack(AT_NSPECIAL_2);
		
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

//Forward Special

if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 4{
	bike.hitstop = hit_player_obj.hitstop;
}

if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 5{
	bike.bike_hit_thing = true;
	bike.health -= 5;
}