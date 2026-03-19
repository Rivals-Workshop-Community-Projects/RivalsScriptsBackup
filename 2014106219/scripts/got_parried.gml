// got_parried.gml

if (my_hitboxID.attack == AT_NSPECIAL || my_hitboxID.attack == AT_DSPECIAL_2 && hbox_num == 2) {
    my_hitboxID.hitbox_timer = 1;
	my_hitboxID.hsp = 8*my_hitboxID.spr_dir;
	my_hitboxID.vsp = 0;
	my_hitboxID.transcendent = 1;	
	my_hitboxID.damage += 2;
	}

if !(my_hitboxID.type == 2) {
	wblastcharge = 0;
}

if (my_hitboxID.attack == AT_FSPECIAL) {
	hsp = clamp(hsp, -2, 2);
	vsp = -6;
	attack_end();
	destroy_hitboxes();
	set_attack(AT_EXTRA_1);
}

if (my_hitboxID.attack == AT_DSPECIAL_AIR || AT_DTHROW) {
	vsp = clamp(vsp, -5, -2);
	hsp = clamp(hsp, -3, 3);
}