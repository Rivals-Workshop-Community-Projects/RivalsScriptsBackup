if block_solid {
	with oPlayer {
		if vsp <= 0 && place_meeting(x, y - 6, other) {
			other.state = "hitpause";
			other.hitstop = 10;
			vsp = 0;
			with other sound_play(sound_get("smw_block_hit"));
		}
	}
}

switch state {
	case "block":
		is_hittable = true;
		mask_index = block_mask;
	break;
	
	case "hitpause":
		image_index = 6;
		if hitstop <= 0 {
		state = "spin";
		sprite_index = sprite_get("turnblock_inactive");
		}
		spins = 0;
		is_hittable = false;
		mask_index = empty_mask;
	break;
	
	case "spin":
		image_index = (image_index + 0.2) % 6;
		if image_index <= 0.2  spins++;
		if spins >= 8 {
		state = "block";
		sprite_index = (!block_solid ? sprite_get("turnblock_plat") : sprite_get("turnblock"));
		}
		is_hittable = false;
		mask_index = empty_mask;
	break;
}