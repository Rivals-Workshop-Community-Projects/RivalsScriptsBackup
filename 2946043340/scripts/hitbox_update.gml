if (attack == AT_FSPECIAL) {
	if (hitbox_timer%4 == 0){
		if (hbox_num == 1){
			spawn_hit_fx(x - 5*spr_dir, y, player_id.fspecial_proj_particle);
		}
	}
}

