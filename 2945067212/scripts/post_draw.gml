
if attack == AT_FSPECIAL_AIR && ((window == 1 && window_timer > 1) || (window > 1 && window < 3)) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {

	if fspec_air_charge > -1 {
	if spr_dir = 1 {
		draw_sprite(sprite_get("ghost1"), 0, x + (spr_dir * 0), y - 10);
		ghostnum = 1;
	} else if spr_dir = -1 {
		draw_sprite(sprite_get("ghost3"), 0, x + (spr_dir * 10), y - 10);
		ghostnum = 1;
	}
	}
	
	if fspec_air_charge > 25 {
	if spr_dir = 1 {
		draw_sprite(sprite_get("ghost2"), 0, x + (spr_dir * 0), y - 10);
		ghostnum = 2;
	} else if spr_dir = -1 {
		draw_sprite(sprite_get("ghost2"), 0, x - (spr_dir * -15), y - 10);
		ghostnum = 2;
	}
	}
	
	if fspec_air_charge > 50 {
	if spr_dir = -1 {
		draw_sprite(sprite_get("ghost1"), 0, x - (spr_dir * -20), y - 10);
		ghostnum = 3;
	}	else if spr_dir = 1 {
		draw_sprite(sprite_get("ghost3"), 0, x + (spr_dir * 0), y - 10);
		ghostnum = 3;
	}
}
}