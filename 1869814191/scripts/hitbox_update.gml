//hitbox_update

if (attack == AT_EXTRA_1) {
	if (hitbox_timer >= 6) {
		if (hbox_num == 7 || hbox_num == 8) {
			if (!was_parried) {
				if (hsp >= 4) {
					hsp = hsp*9/10;
				}
				if (hsp <= -4) {
					hsp = hsp*9/10;
				}
			}
			if (was_parried) {
				hitbox_timer = 7;
				if (hsp > 0) {
					hsp = 8;
				}
				if (hsp < 0) {
					hsp = -8;
				}
			}
		}
		if (hbox_num == 10 || hbox_num == 12) {
			if (!was_parried) {
				if (vsp >= 4) {
					vsp = vsp*9/10;
				}
				if (vsp <= -4) {
					vsp = vsp*9/10;
				}
			}
			if (was_parried) {
				hitbox_timer = 7;
				if (vsp > 0) {
					vsp = 8;
				}
				if (vsp < 0) {
					vsp = -8;
				}
			}
		}
	}
}