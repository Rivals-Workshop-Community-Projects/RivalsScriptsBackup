//hitbox_update

if (attack == AT_EXTRA_1 && hitbox_timer >= 6) {
	if (hbox_num == 7 || hbox_num == 8) {
		if (!was_parried) {
			if (hsp >= 4 || hsp <= -4) {
				hsp = hsp*9/10;
			}
		} else if (was_parried) {
			hitbox_timer = 7;
			hsp = (8*sign(hsp));
		}
	}
	if (hbox_num == 10 || hbox_num == 12) {
		if (!was_parried) {
			if (vsp >= 4 || vsp <= -4) {
				vsp = vsp*9/10;
			}
		} else if (was_parried) {
			hitbox_timer = 7;
			vsp = (8*sign(vsp));
		}
	}
}