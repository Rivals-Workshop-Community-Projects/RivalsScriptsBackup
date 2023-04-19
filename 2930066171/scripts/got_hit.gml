//
if (instance_exists(fspecial_proj)) {
	fspecial_proj.active = false;
}
fspecial_proj = -4;
fspecial_enemy = -4;
grabbed_player = -4;
grounded_uspecial = false;
/*
if (attack == AT_UTILT || attack == AT_FSPECIAL) {
	with pHitBox {
		if (player_id == other.id) {
			instance_destroy(self)
		}
	}
}
*/