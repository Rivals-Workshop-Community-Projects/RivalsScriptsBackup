
if (!paused) {
	// PLEASE make a rune where this happens constantly it looks so sick
	// Updates previous position, then draws a trail behind
	if (attacking && attack == AT_NSPECIAL) {
		if (window == 1) {
		    trail_1_pos = [[noone, noone], [noone, noone], [noone, noone], [noone, noone]]; // The position of the first trail (last 2 frames)
            trail_2_pos = [[noone, noone], [noone, noone], [noone, noone], [noone, noone], [noone, noone], [noone, noone], [noone, noone], [noone, noone]]; // The position of the second trail (last 4 frames)
            var empty = asset_get("empty_sprite");
            trail_1_index = [[empty, 0, 0], [empty, 0, 0], [empty, 0, 0], [empty, 0, 0]]; // The sprite and image index (+ spr_dir) of trail 1 (last 2 frames)
            trail_2_index = [[empty, 0, 0], [empty, 0, 0], [empty, 0, 0], [empty, 0, 0], [empty, 0, 0], [empty, 0, 0], [empty, 0, 0], [empty, 0, 0]]; // The sprite and image index (+ spr_dir) of trail 2 (last 4 frames)empty_trail_2_index = [];
			trail_1 = true;
			trail_1_gone = 0;
			trail_2 = true;
			trail_2_gone = 0;
		} else if (window == clamp(window, 3, 5)) {
			trail_1_draw = true;
			trail_2_draw = true;
			trail_1_colour = c_red;
		} else if (window == clamp(window, 6, 8)) {
		    trail_1_draw = true;
		    trail_1_colour = c_white;
		} else {
		    trail_1_draw = false;
		    trail_2_draw = false;
		}
	} else {
		trail_1 = false;
		trail_2 = false;
	}
	// This checks if the trails are enabled, if they are: it updates the positions. If not, it decrements the positions until they disappear.
	if (trail_1) {
		update_trail_pos(trail_1_pos, 0);
		update_trail_index(trail_1_index, 0);
	} else if (trail_1_draw) { 
		if (trail_1_gone < array_length(trail_1_pos)/2) {
			trail_1_gone++;
			update_trail_pos(trail_1_pos, trail_1_gone);
			update_trail_index(trail_1_index, trail_1_gone);
		} else {
			trail_1_draw = false;
		}
	}
	if (trail_2) {
		update_trail_pos(trail_2_pos, 0);
		update_trail_index(trail_2_index, 0);
	} else if (trail_2_draw) {
		if (trail_2_gone < array_length(trail_2_pos)/2) {
			trail_2_gone++;
			update_trail_pos(trail_2_pos, trail_1_gone);
			update_trail_index(trail_2_index, trail_2_gone);
		} else {
			trail_2_draw = false;
		}
	}
}
shader_start();
if (trail_1_draw) {
	draw_sprite_ext(trail_1_index[0][0], trail_1_index[0][1], trail_1_pos[0][0], trail_1_pos[0][1], trail_1_index[0][2], 1, 0, trail_1_colour, 0.6);
}
if (trail_2_draw) {
	draw_sprite_ext(trail_2_index[0][0], trail_2_index[0][1], trail_2_pos[0][0], trail_2_pos[0][1], trail_2_index[0][2], 1, 0, trail_2_colour, 0.3);
}
shader_end();

paused = true;

with(asset_get("obj_article1")){
	var touching;
    if((other.mound_1 == self || other.mound_2 == self)){
    	with(other){
    		touching = place_meeting(x, y, other);
    	}
    	if(touching){//This code is awful, I hate it, but it works. - Don (The dumbass who wrote this shit)
	        gpu_set_fog(1, get_player_hud_color(player), 0, 1);
	    	draw_sprite_ext(sprite_index, image_index, x+2, y+2, spr_dir, 1, image_angle, c_white, 1);
	    	draw_sprite_ext(sprite_index, image_index, x-2, y+2, spr_dir, 1, image_angle, c_white, 1);
	    	draw_sprite_ext(sprite_index, image_index, x-2, y-2, spr_dir, 1, image_angle, c_white, 1);
	    	draw_sprite_ext(sprite_index, image_index, x+2, y-2, spr_dir, 1, image_angle, c_white, 1);
	    	gpu_set_fog(false, c_white, 1, 1);
	    	if(other.mound_1 == self){
	    		with(other.mound_2){
			        gpu_set_fog(1, get_player_hud_color(player), 0, 1);
			    	draw_sprite_ext(sprite_index, image_index, x+2, y+2, spr_dir, 1, image_angle, c_white, 1);
			    	draw_sprite_ext(sprite_index, image_index, x-2, y+2, spr_dir, 1, image_angle, c_white, 1);
			    	draw_sprite_ext(sprite_index, image_index, x-2, y-2, spr_dir, 1, image_angle, c_white, 1);
			    	draw_sprite_ext(sprite_index, image_index, x+2, y-2, spr_dir, 1, image_angle, c_white, 1);
			    	gpu_set_fog(false, c_white, 1, 1);
	    		}
	    	}
	    	if(other.mound_2 == self){
	    		with(other.mound_1){
			        gpu_set_fog(1, get_player_hud_color(player), 0, 1);
			    	draw_sprite_ext(sprite_index, image_index, x+2, y+2, spr_dir, 1, image_angle, c_white, 1);
			    	draw_sprite_ext(sprite_index, image_index, x-2, y+2, spr_dir, 1, image_angle, c_white, 1);
			    	draw_sprite_ext(sprite_index, image_index, x-2, y-2, spr_dir, 1, image_angle, c_white, 1);
			    	draw_sprite_ext(sprite_index, image_index, x+2, y-2, spr_dir, 1, image_angle, c_white, 1);
			    	gpu_set_fog(false, c_white, 1, 1);
	    		}
	    	}	    	
    	}
    }
}


#define update_trail_pos(trail_pos, gone)

	var trail_length = array_length(trail_pos) - 1;

	for (i = 0; i < trail_length; i++) {
		trail_pos[@i] = trail_pos[@i + 1];
	}
	if (gone > 0) {
		for (i = 0; i < gone; i++) {
			for (j = 0; j < trail_length; j++) {
				trail_pos[@j] = trail_pos[@j + 1];
			}
			trail_pos[@trail_length] = [x, y];
		}
	}

	trail_pos[@trail_length] = [x, y];
	
#define update_trail_index(trail_index, gone)

	var trail_length = array_length(trail_index) - 1;
	for (i = 0; i < trail_length; i++) {
		trail_index[@i] = trail_index[i + 1];
	}
	
	if (gone > 0) {
		for (i = 0; i < gone; i++) {
			for (j = 0; j < trail_length; j++) {
				trail_index[@j] = trail_index[@j + 1];
			}
			trail_index[@trail_length] = [sprite_index, image_index, spr_dir];
		}
	}
	
	trail_index[@trail_length] = [sprite_index, image_index, spr_dir];