//Command Grab Stuff

if (my_hitboxID.attack == AT_FSPECIAL) {
	
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	&& (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
	&& was_parried == false
	&& hit_player_obj.clone == false)
	&& hit_player_obj.garnet_bubbled == false{
		
		//transition to the 'throw' part of the attack.
		destroy_hitboxes();
		attack_end();
		set_attack( AT_FSPECIAL_2 );
		
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

if (my_hitboxID.attack == AT_FSPECIAL_2){
	instance_create( grabbed_player_obj.x, grabbed_player_obj.y, "obj_article1");
	grabbed_player_obj.garnet_bubbled = true;
}

if(hit_player_obj.garnet_bubbled = true){
	hit_player_obj.should_make_shockwave = false;
}

if (my_hitboxID.attack == AT_FTILT){
	if(window == 2){
		hit_player_obj.vsp = hit_player_obj.old_vsp
		hit_player_obj.hsp = hit_player_obj.old_hsp
	}
}
