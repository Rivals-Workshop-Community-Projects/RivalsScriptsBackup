//
if (shenron_rise) {
	shenron_rise--;
	y -= 4;
	if (shenron_rise % 15 == 0) {
		sound_play(asset_get("sfx_pillar_crumble"));
	}
} else {
	if obj_stage_main.ror_wish_chosen {
		should_depart = true;
	}
	if !should_depart {
		shenron_timer++;
		y += sin(shenron_timer  / 20) * 2;
	} else {
		y -= 8;
		if (y < -room_height) {
			print("shenron disappears")
			instance_destroy(self);
		}
	}
}

