// Bomb Update

if (instance_exists(parent)) {
	x = parent.x;
	y = parent.y;
	hsp = parent.hsp;
	vsp = parent.vsp;
	if (bopped && hitstop == 0) {
		sound_play(asset_get("sfx_ell_explosion_medium"));
		spawn_hit_fx( x, y - 40, 143 );
		create_hitbox(AT_DSPECIAL, 1, x, y - 30);
		with (parent) {
			destroy = true;
		}
		instance_destroy();
	}
} else {
	instance_destroy();
}
