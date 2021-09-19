if (my_hitboxID.attack==AT_DTILT){
	dtilt_c_cooldown = 0;
}

/*if (my_hitboxID.attack==AT_DSTRONG){
	var otherhboxid = my_hitboxID.other_hbox
	otherhboxid.can_hit[hit_player] = 0;
}*/

if (my_hitboxID.attack==AT_DSTRONG||
	my_hitboxID.attack==AT_FSTRONG||
	(my_hitboxID.attack==AT_FAIR&&my_hitboxID.hbox_num==2)||
	my_hitboxID.attack==AT_NSPECIAL){
	if ((hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	&& was_parried == false
		&& hit_player_obj.clone == false){//copied from mawral's grab code, thanks!
		hit_player_obj.exp_custom_hurt = true;
		sound_play(sound_get("dying"))
	}else{sound_play(sound_get("pain"),false,noone,0.8)}
}else{hit_player_obj.visible = true;hit_player_obj.exp_custom_hurt = false;}

if (my_hitboxID.attack==AT_FAIR&&my_hitboxID.hbox_num==2){
	old_hsp = hsp;
	old_vsp = vsp;
	hitpause = true;
	hitstop = hit_player_obj.hitstop;
	hitstop_full = hit_player_obj.hitstop_full;
	
}
if (my_hitboxID.attack==AT_FSTRONG&&(my_hitboxID.hbox_num==1||my_hitboxID.hbox_num==2)){
	old_hsp = hsp;
	old_vsp = vsp;
	hitpause = true;
	hitstop = hit_player_obj.hitstop+3;
	hitstop_full = hit_player_obj.hitstop_full+3;
	hit_player_obj.y += sign(my_hitboxID.y-hit_player_obj.y)*6
	//print(string(sign(my_hitboxID.y-hit_player_obj.y)*6))
	
}
if (my_hitboxID.attack==AT_BAIR&&my_hitboxID.hbox_num==2){
	old_hsp = hsp;
	old_vsp = vsp;
	hitpause = true;
	hitstop = hit_player_obj.hitstop;
	hitstop_full = hit_player_obj.hitstop_full;
	
}
if (my_hitboxID.attack==AT_DSPECIAL){
	if (my_hitboxID.hbox_num==1){
		spawn_hit_fx( hit_player_obj.x, hit_player_obj.y, 193 )
	}
	if (my_hitboxID.hbox_num==3){
		spawn_hit_fx( hit_player_obj.x, hit_player_obj.y-30, 253 )
	}
}

//mawral's grab code!
if (my_hitboxID.attack == AT_FSPECIAL) {
	
	if (!grab_cooldown){
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
		set_attack(AT_NTHROW);
		
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