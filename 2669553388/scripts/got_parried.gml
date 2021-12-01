//got_parried

if (my_hitboxID.attack == AT_NSPECIAL) {
	if my_hitboxID.hbox_num == 1 {
			my_hitboxID.hitbox_timer = 0;
			my_hitboxID.hsp = 8*spr_dir;
	}
}

if (my_hitboxID.attack == AT_DSPECIAL) {
	move_cooldown[AT_DSPECIAL] = 240;	
	if my_hitboxID.hbox_num == 1 {
			my_hitboxID.destroyed = true;
	}
}