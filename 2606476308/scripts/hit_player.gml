if(my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 1){
	window = 4;
	window_timer = 0;
}

if (my_hitboxID.attack == AT_DAIR){
	if (window == 2){
		window = 4;
		window_timer = 0;
	}
}

if(my_hitboxID.attack == AT_FSPECIAL){
	if(my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3){
		if(instance_exists(flying_rock1)){
		flying_rock1.hit_timer = 25
		}
		if(instance_exists(flying_rock2)){
		flying_rock2.hit_timer = 25
		}
		if(instance_exists(flying_rock3)){
		flying_rock3.hit_timer = 25
		}
	}
}

if(my_hitboxID.attack == AT_NSPECIAL){
	hit_enemy_nspec = true
}
