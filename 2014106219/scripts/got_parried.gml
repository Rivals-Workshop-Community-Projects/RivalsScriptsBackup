// got_parried.gml

if (my_hitboxID.attack == AT_NSPECIAL) {
    my_hitboxID.hitbox_timer = 1;
	my_hitboxID.hsp = 8*my_hitboxID.spr_dir;
	my_hitboxID.vsp = 0;
	my_hitboxID.transcendent = 1;	
	my_hitboxID.damage += 2;
	}

if !(my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1 || my_hitboxID.attack == AT_FSPECIAL_2 && my_hitboxID.hbox_num == 1) {
	wblastcharge = 0;
}

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1) {
    my_hitboxID.hitbox_timer = 1;
	my_hitboxID.grav += .3;
	my_hitboxID.hsp *= 1.5;
	my_hitboxID.damage += 2;
	my_hitboxID.grounds = 2;
}

if (my_hitboxID.attack == AT_FSPECIAL_2 && my_hitboxID.hbox_num == 1) {
		if !my_hitboxID.smacked {
		my_hitboxID.hitbox_timer = 1;
		my_hitboxID.grav += .35;
		my_hitboxID.hsp *= 1.5;
		my_hitboxID.damage += 1;
		my_hitboxID.grounds = 2;
	} else {
		my_hitboxID.hitbox_timer = 1;	
	}
}