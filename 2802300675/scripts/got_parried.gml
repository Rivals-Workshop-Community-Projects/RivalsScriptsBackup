//

with (my_hitboxID) {
	if(attack == AT_NSPECIAL){
	hitbox_timer = 0;
	hsp *= 1.5;
	draw_xscale *= -1;
	}
}

with (my_hitboxID) {
	if(attack == AT_FSTRONG || attack == AT_USTRONG){
		if(hbox_num = 3){
	destroyed = true;
		}
	}
}

with (my_hitboxID) {
	if(attack == AT_USPECIAL){
	destroyed = true;
	}
}

destroy_smog = true;