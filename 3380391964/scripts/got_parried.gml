//got_parried - called when you're parried

if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1) {
		shelltimer = 0;
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1) {
		window = 5;
		window_timer = 2;
}

if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1) {
	my_hitboxID.hsp *= 1.5;
	my_hitboxID.hitbox_timer = 0;
	my_hitboxID.bounce = 1;
	
}