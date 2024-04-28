//
if (clone.hitpause) {
	if (!old_vsp && !old_hsp) {
		old_hsp = hsp;
		old_vsp = vsp;
	}
	hsp = 0;
	vsp = 0;
	exit;
} else if (hsp == 0 && vsp == 0) {
	hsp = old_hsp;
	vsp = old_vsp;
	old_vsp = 0;
	old_hsp = 0;
}



state_timer += 1
switch(state) {
	case 0: //Fall
		if (free) {
			vsp += 1;
		}
		if (state_timer % 5 == 0 && image_index < 1) {
			image_index += 1;
		}
		if (state_timer >= 10 && !free) {
			state = 1;
			state_timer = 0;
			image_index = 2;
		}
	break;
	case 1: //Land
		if (state_timer % 5 == 0) {
			image_index += 1;
		}
		if (state_timer >= 10) {
			state = 2;
			state_timer = 0;
			image_index = 4;
		}
	break;
	case 2: //Projection
		if (free) {
			vsp += .5;
		}
		if (state_timer % 6 == 0) {
			if (image_index == 4) {
				image_index += 1;
			} else {
				image_index = 4;
			}
		}
	break;
	default:
	break;
}



if (y >= room_height || x < 0 || x > room_width) {
	clone.state = PS_IDLE;
	clone.visible = false;
	clone.invincible = true;
	clone.clone_active = false;
	clone.clone_owner.clone_hit_timer = false;
	spawn_hit_fx(x, y, HFX_SHO_GEAR_BREAK);
	sound_play(asset_get("sfx_abyss_hazard_burst"));
	instance_destroy(self);
}

