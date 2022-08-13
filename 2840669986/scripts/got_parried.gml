//got_parried.gml

if (my_hitboxID.attack == AT_JAB){
    jab_parried = true;
}

if (my_hitboxID.attack == AT_DSPECIAL_2){
	/*
    if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2){
		with(vacuum){
			should_die_instantly = true;
			image_index = 15;
			if (instance_exists(suck_hitbox) && instance_exists(grab_hitbox)){
				suck_hitbox.destroyed = true;
				grab_hitbox.destroyed = true;
			}
		}
	}
	if(!free){
		set_state(PS_PRATLAND);
	} else {
		set_state(PS_PRATFALL);
	}
	*/
}

with(vacuum){
	if (instance_exists(grabbed_player_id)){
		if(grabbed_player_id == player_id){
			print("MARIO");
		} else {
			print("fuck");
		}
	}
}