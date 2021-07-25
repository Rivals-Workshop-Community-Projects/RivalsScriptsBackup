// Variable Definition
/*if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 5){
	with(chungusbag){
		trashState = 100;
	}
}*/

if (my_hitboxID.attack != AT_JAB || my_hitboxID.attack != AT_DSPECIAL){
		chungusCharge = 0;
		with(chungusbag){
				trashState = 100;
		}
}

if (my_hitboxID.attack == AT_NSPECIAL) {
    my_hitboxID.hitbox_timer = 1;
}
