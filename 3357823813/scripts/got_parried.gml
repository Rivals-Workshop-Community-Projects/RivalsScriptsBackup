//
if (my_hitboxID.attack == AT_DATTACK){
    x = my_hitboxID.x;
    my_hitboxID.destroyed = true;
}

if (my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 2){
    window = 8;
}

if my_hitboxID.attack == AT_DSTRONG {
    window = 8;
	window_timer = 0;
	with pHitBox {
		if player_id == other {
			if attack == AT_DSTRONG {
				destroyed_next = 1;
			}
		}
	}
	destroy_hitboxes();
}

if (my_hitboxID.attack == AT_NSPECIAL){
    my_hitboxID.spr_dir *= -1;
    my_hitboxID.trail.spr_dir *= -1;
}

if (synced_vars[0] == 1) sound_play(parry_voice);
