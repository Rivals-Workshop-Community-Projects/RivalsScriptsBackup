if (my_hitboxID.attack == AT_EXTRA_1){
	hsp = 0;
	vsp = 0;
	window = 8;
	my_hitboxID.hitbox_timer = 0;
	my_hitboxID.hsp = my_hitboxID.hsp*2;
}

if(my_hitboxID.attack == AT_FSPECIAL){
	window = 6;
}

if (my_hitboxID.attack == AT_NSPECIAL_2){
    if (my_hitboxID.hbox_num == 1){
        my_hitboxID.destroyed = true;
    }
}

if(my_hitboxID.attack == AT_USPECIAL || my_hitboxID.attack == AT_USPECIAL_2){
	hsp = 0;
	vsp = 0;
	window = 8;
}