if (chord && state == 12){
	for (i = 0; i < 2 - player_id.phone_fast; i++){
		var rand_x = random_func(i + 00, 9, true) - 4;
		var rand_y = random_func(i + 10, 9, true) - 4;
		
		maskHeader();
		
		var img_sprite = sprite_index;
		var img_angle = image_angle;
		var img_y = 0;
		
		draw_sprite_ext(img_sprite, image_index, x + rand_x - hsp * 2 * i, y + rand_y - vsp * 2 * i + img_y, spr_dir, image_yscale, img_angle, image_blend, 1);
		
		maskMidder();
		
		var col = player_id.chord_color[chord];
		
		if ("fix_stupid_flash_thing" in self) draw_rectangle_colour(0, 0, room_width, room_height, col, col, col, col, false);
		
		maskFooter();
		
		fix_stupid_flash_thing = true;
	}
}



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