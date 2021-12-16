if (my_hitboxID.attack == AT_FSPECIAL){ //Heal
	my_hitboxID.hitbox_timer = 15;
}

if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 2){
	poi_off = true;
}

if (poi_off == true){
	if !(my_hitboxID.attack == AT_DSPECIAL){
		if (instance_exists(poison_id) == true && poison_id != noone){
			if (poison_id.state == 2){
			poison_id.state = 3;
			poison_id.state_timer = 0;
			poison_id.image_index = 0;
			}
		}
	}
}