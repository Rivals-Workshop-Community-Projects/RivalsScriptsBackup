//
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
			vsp += 1;
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
	instance_destroy(self);
}

