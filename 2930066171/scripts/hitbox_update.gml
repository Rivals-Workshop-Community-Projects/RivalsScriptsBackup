if (attack == AT_NSPECIAL && "chad_dumb" in self) {
	if (player == player_id.player) {
		if (y > room_height + dumb_margin  || x < -dumb_margin  || x > room_width + dumb_margin  || y < -128 - dumb_margin ) {
			hitbox_timer = length;
		}
		if (grav != 0) {
			grounds = 0;
		} else {
			grounds = 0;
		}
		if (hitbox_timer == length) {
			spawn_hit_fx(x, y, destroy_fx)
		}
		if (player_id.fspecial_proj == self) {
			grav = 0;
		}
		if ((place_meeting(x, y + vsp + 1, asset_get("par_block")) || place_meeting(x, y + vsp + 1, asset_get("par_jumpthrough"))) && active && vsp > 0) {
			grounds = 0;
			hsp = 0;
			vsp = -4;
			grav = unactive_grav;
			hitbox_timer = 0;
			active = false;
			sound_play(asset_get("sfx_tow_anchor_land"));
			spawn_hit_fx(x, y, 301);
		}
		if (!active) {
			sprite_index = sprite_get("nspecial_proj");
			proj_break = true;
			for (i = 0; i < 20; i++) {
				can_hit[i] = 0;
			}
			if (free) {
				grav = unactive_grav;
			}
		} else {
			proj_break = false;
			sprite_index = sprite_get("nspecial_active");
		}
	} else {
		for (i = 0; i < 20; i++) {
			can_hit[i] = 0;
		}
		with player_id {
			other.sprite_index =  sprite_get("nspecial_proj");
		}
	}
}

//