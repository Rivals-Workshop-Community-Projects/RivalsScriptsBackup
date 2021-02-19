//

timer++;
state_timer++;

switch (state) {
	case 0: //spawn state
	/*
	var moveSpeed = 6;
	with oPlayer {
		if (other.state_timer > 1) && (cpuId == undefined) {
			if (x >= get_marker_x(15)) && (other.moveCounter > -870) {
				other.x -= moveSpeed;
				other.moveCounter -= 1;
			} else if (x <= get_marker_x(16)) && (other.moveCounter < 0) {
				other.x += moveSpeed;
				other.moveCounter += 1;
			}
		}
	}
	*/
	break;
	
	case 1: //panning to sans
	if (player_id.textSkipMode) {
		if (state_timer >= 40) {
			x -= 8;
		}
	} else {
		if (state_timer >= 90) {
			x -= 4;
		}
	}
	
	break;
	
	case 2: //stopped
	
	break;
	
	case 9: //kill state
	var flickerTime = 5;
	
	if (state_timer == 1) {
		sprite_index = asset_get("empty_sprite");
	} else if (state_timer == flickerTime + 1) {
		sprite_index = sprite_get("hall_fg");
	} else if (state_timer == flickerTime*2 + 1) {
		sprite_index = asset_get("empty_sprite");
	} else if (state_timer == flickerTime*3 + 1) {
		sprite_index = sprite_get("hall_fg");
	} else if (state_timer == flickerTime*4 + 1) {
		image_alpha = 0;
	}
	break;
	
	case 19: //outro
	image_alpha += 0.1;
	image_alpha = clamp(image_alpha, 0, 1);
	if (image_alpha == 1) {
		state = 0;
		state_timer = 0;
	}
	break;
}

