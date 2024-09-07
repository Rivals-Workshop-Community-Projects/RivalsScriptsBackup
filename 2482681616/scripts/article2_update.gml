state_timer ++;
anim_timer++;

switch (state) {
	case 0:
		if (state_timer == 1) {
			my_hitbox = create_hitbox(49, 3, round(x), round(y));
		}
		
		if (state_timer >= 1 && state_timer <= 60) {
			image_index += 0.25;
			image_index %= 2;
			shake_camera(8, 8);
			img_scale = ease_quadOut(1, 2, state_timer, 60);
		}
	
		if (state_timer >= 60) {
			state = 1;
			state_timer = 0;
			image_index = 2;
		}
	break;
	case 1:
		if (state_timer == 1) {
			my_hitbox = create_hitbox(49, 4, round(x), round(y));
		}
		if (state_timer >= 1 && state_timer <= 12) {
			image_index = lerp(2, 5, state_timer/12);
		}
	
		if (state_timer >= 12) {
			destroyed = true;
		}
		
	break;
}

if (instance_exists(my_hitbox)) {
	with (my_hitbox) {
		x = other.x;
		y =  other.y - (76 * other.img_scale);
		image_xscale = (288 / 200) * other.img_scale;
		image_yscale = (192 / 200) * other.img_scale;
	    if (hbox_num == 3 && hitbox_timer % 6 == 0) {
	        for (var i = 0; i < 20; i++) can_hit[i] = true;
	    }
	    can_hit[other.grabbed_player] = false;
	}
}

image_xscale = img_scale;
image_yscale = img_scale;

if (destroyed) {
	instance_destroy(id);
	exit;
}