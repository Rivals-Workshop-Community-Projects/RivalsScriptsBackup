//hitbox_init

if attack == AT_EXTRA_2 {
	if hbox_num == 3 {
		with (asset_get("pHitBox")) {
			if (attack == AT_DSPECIAL && hbox_num == 1) {
					if was_parried other.player = player;
					spr_dir = other.spr_dir;
			}
		}
	}
}
