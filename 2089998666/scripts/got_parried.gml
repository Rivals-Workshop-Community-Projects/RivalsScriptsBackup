//got_parried

if (my_hitboxID.attack == AT_FSPECIAL) {
	if (my_hitboxID.hbox_num == 1) {
		my_hitboxID.eggBounce = 3;
		my_hitboxID.hitbox_timer = 2;
		my_hitboxID.grav = .6;
		my_hitboxID.air_friction = 0;	
		my_hitboxID.hsp = sign(my_hitboxID.x - my_hitboxID.player_id.x) * 12;
		my_hitboxID.vsp = sign(my_hitboxID.y - my_hitboxID.player_id.y) * 10;
	}
	if (my_hitboxID.hbox_num == 2) {
		my_hitboxID.hitbox_timer = 0;
	}
}