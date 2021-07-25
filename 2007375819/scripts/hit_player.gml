//hit_player

funnyfish = 7;

if (my_hitboxID.attack == AT_DAIR) {
	if my_hitboxID.hbox_num == 1 {
			sound_play(sound_get("sfx_glassbreak"));
			create_hitbox( AT_DAIR, 2, my_hitboxID.x, my_hitboxID.y);
			create_hitbox( AT_DAIR, 3, my_hitboxID.x, my_hitboxID.y);
	}
}

if (my_hitboxID.attack == AT_FSPECIAL) {
	if my_hitboxID.hbox_num == 1 {
		my_hitboxID.hitbox_timer = 100;
		my_hitboxID.vsp = -6-(my_hitboxID.kb_value);
		move_cooldown[AT_FSPECIAL] = 110;
	}
}