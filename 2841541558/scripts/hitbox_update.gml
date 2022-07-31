if (attack == AT_NSPECIAL) {
	if (hitbox_timer%5 == 0){
		if (hbox_num == 1){
			spawn_hit_fx(x - 5*spr_dir, y-20, player_id.nspecial_puff_fx);
		}
	}
}

if (attack == AT_DSPECIAL) {
	image_index = get_gameplay_time()/4;
	hsp = 0;
	vsp = 0;
}