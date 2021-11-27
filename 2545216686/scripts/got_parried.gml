//got_parried.gml

switch (my_hitboxID.attack){
	case AT_USTRONG:
		//set_state(PS_PRATLAND)
		break;
	case AT_NSPECIAL:
		if my_hitboxID.type == 2 {
			//my_hitboxID.hitbox_timer = 0;
			//my_hitboxID.hsp *= 1.5;
			//my_hitboxID.damage = my_hitboxID.damage + (my_hitboxID.damage * 0.5)
		}
		break;
	case AT_FSPECIAL:
		set_state(PS_PRATFALL)
		break;
	case AT_DSPECIAL:
		if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 3){
			tailsdidrobotgetparried = true
			destroy_hitboxes();
			prat_land_time = 50;
			set_state(PS_PRATFALL);
		}
		break;
}