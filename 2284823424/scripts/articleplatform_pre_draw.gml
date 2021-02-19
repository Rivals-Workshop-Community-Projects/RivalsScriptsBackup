// if (steve_on_block != noone){
// 	for (i = 0; i < 2; i++){
// 		var rand_x = random_func(i + 00, 9, true) - 4;
// 		var rand_y = random_func(i + 10, 9, true) - 4;
		
// 		maskHeader();
		
// 		draw_sprite_ext(sprite_index, image_index, x + rand_x, y + rand_y, image_xscale, image_yscale, image_angle, image_blend, 0.5);
		
// 		maskMidder();
		
// 		var col = c_white;
		
// 		with steve_on_block col = make_color_rgb(
// 			get_color_profile_slot_r(get_player_color(player), 0),
// 			get_color_profile_slot_g(get_player_color(player), 0),
// 			get_color_profile_slot_b(get_player_color(player), 0)
// 		);
		
// 		if ("fix_stupid_flash_thing" in self) draw_rectangle_colour(0, 0, room_width, room_height, col, col, col, col, false);
		
// 		maskFooter();
		
// 		fix_stupid_flash_thing = true;
// 	}
// }

// if (steve_on_block != noone){
// 	// gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
// 	gpu_set_alphatestenable(true);
// 	gpu_set_fog(1, player_id.boost_color, 0, 1);
    
// 	for (i = 0; i < 2; i++){
// 		var rand_x = random_func(i + 01, 9, true) - 4;
// 		var rand_y = random_func(i + 11, 9, true) - 4;
		
// 		draw_sprite_ext(sprite_index, image_index, x + rand_x, y + rand_y + 2, image_xscale * 1.1, image_yscale * 1.1, image_angle, c_white, 1);
// 	}
        
//     gpu_set_fog(0, c_white, 0, 0);
// 	gpu_set_alphatestenable(false);
//     // gpu_set_blendmode(bm_normal);
// }



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