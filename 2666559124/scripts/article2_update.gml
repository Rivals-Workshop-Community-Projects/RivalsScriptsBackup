// Bomb Update

if (instance_exists(parent)) {
	x = parent.x;
	y = parent.y;
	hsp = parent.hsp;
	vsp = parent.vsp;
	if (hitstop <= 0) {
		if (bopped) {
			sound_play(asset_get("sfx_ell_explosion_medium"));
			spawn_hit_fx( x, y - 40, 143 );
			create_hitbox(AT_DSPECIAL, 1, x, y - 30);
			with (parent) {
				destroy = true;
			}
			instance_destroy();
		}
		is_hittable = true;
	} else {
		is_hittable = false;
	}
} else {
	instance_destroy();
}
