// got_parried.gml

// do stuff here
if (my_hitboxID.type == 1){
	//
}



if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.type == 2){
	// custom behaviors
	if (my_hitboxID.hbox_num == 4){
		print(my_hitboxID.card4_phase);
		if (my_hitboxID.card4_phase == 1){
			my_hitboxID.card4_parry_flag_thing = true;
		}
	}
}