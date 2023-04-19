if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1) {
	whirl.state = 2;
	whirl.state_timer = 0;
	whirl.detonating = false;
	whirl.detonatePossible = false;
}

if (my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 1 && "arms" in self && instance_exists(arms)) {
	if (arms.state != 3) {
		arms.hitPlayer = 1;
		arms.state = 1;
		arms.state_timer = 10;
		arms.lifetime = 5;
	}
}

if (my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 1 && "arms" in self && instance_exists(arms)) {
	if (arms.state != 3) {
		arms.hitPlayer = 1;
		arms.state = 1;
		arms.state_timer = 10;
		arms.lifetime = 5;
	}
	arms.y = hit_player_obj.y - 50;
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 5) {
	sound_play(asset_get("sfx_clairen_tip_strong"), false, noone, 0.6);
}

shouldKillBurst++;