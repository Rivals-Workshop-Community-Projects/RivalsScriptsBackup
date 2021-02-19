// HODAN'S PRE DRAW

if (((attack == AT_USPECIAL && somersault_charged) || ((attack == AT_FSPECIAL || attack == AT_NSPECIAL) && sweatwhirl_charged)) && attacking) {
    update_prev_spots();
    if (get_gameplay_time() == (prev_time[trail_frames] + trail_frames)) {
        // Draw the trail
        if (window < 4) {
        	draw_sprite_ext(flash_sprite, prev_index[trail_frames], prev_x[trail_frames], prev_y[trail_frames], spr_dir, 1, 0, c_white, 1);
        }
    }
}

// Draw the steam particles
for (i = 0; i < ds_list_size(steam_lines); i++) {
	var steam_line = steam_lines[| i]; // Which steam particle are we working with?
	draw_sprite(steam_line.sprite, steam_line.frame, round(steam_line.x), round(steam_line.y));
}

/*if (dspecial_jumped != -1) {
	
	maskHeader();
	
	draw_sprite(sprite_get("dspec_jump_mask"), dspecial_jump_index, dspecial_jumped[0] - 190 + (12 * spr_dir), dspecial_jumped[1] - 199);
	if (!paused) {
		dspecial_jump_index += dspecial_jump_anim_speed;
	}
	
	maskMidder();
	
	draw_sprite(dspecial_jump_steam.sprite_index, dspecial_jump_steam.image_index, dspecial_jump_steam.x, dspecial_jump_steam.y);
	
	maskFooter();
	if (dspecial_jump_index == dspecial_jump_frames || dspecial_jump_steam.destroyed) {
		dspecial_jump_steam.djumped = false;
		dspecial_jumped = -1;
	}
}*/

#define update_prev_spots()

var frames = trail_frames; // Set the frames back every frame for use in the repeat() function

repeat(trail_frames) {
    // Move everything back one
    prev_x[frames] = prev_x[frames-1];
    prev_y[frames] = prev_y[frames-1];
    prev_index[frames] = prev_index[frames-1];
    prev_time[frames] = prev_time[frames-1];
    frames--;
}

// Only reset XY pos if the sprite changes
if (prev_index[0] != image_index || window_timer == 0) {
    prev_x[0] = x;
    prev_y[0] = y;
}
// Change index and time always regardless
prev_index[0] = image_index;
prev_time[0] = get_gameplay_time();

#define maskHeader

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle_color(0,0, room_width, room_height, c_white, c_white, c_white, c_white, false);
draw_set_alpha(1);



#define maskMidder

gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);



#define maskFooter

gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);