//got_parried

if (my_hitboxID.attack == AT_NSPECIAL) {
	if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2) {
		my_hitboxID.hitbox_timer = 5;
		my_hitboxID.damage += 1;
		my_hitboxID.kb_value += 1;
		my_hitboxID.enemies = 0;
		my_hitboxID.hit_flipper = 3;
		my_hitboxID.grounds = 1;
		my_hitboxID.walls = 1;
	}
	if (my_hitboxID.hbox_num == 3) {
		with (asset_get("pHitBox")) {
			if (attack == AT_NSPECIAL && hbox_num == 1 && was_parried) {
				other.player = player;
			}
			if (attack == AT_NSPECIAL && hbox_num == 2 && was_parried) {
				other.player = player;
				other.was_parried = 1;
			}
		}
	}
}

if (my_hitboxID.attack == AT_FSPECIAL) {
	hsp = -8*spr_dir;
	vsp = -3;
	attack_end();
	destroy_hitboxes();
	set_attack(AT_EXTRA_1);
}

if (my_hitboxID.attack == AT_USPECIAL) {
	if (my_hitboxID.hbox_num == 4 ) {
		my_hitboxID.hitbox_timer = 1;
		my_hitboxID.hsp = 20*my_hitboxID.spr_dir;
	}
}