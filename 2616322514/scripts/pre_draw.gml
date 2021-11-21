if (electro_charged){
		
	// gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
	var col_R = get_color_profile_slot_r( get_player_color(player), 0);
    var col_G = get_color_profile_slot_g( get_player_color(player), 0);
    var col_B = get_color_profile_slot_b( get_player_color(player), 0);
    
    var col_final = make_color_rgb(col_R, col_G, col_B);
	gpu_set_alphatestenable(true);
	gpu_set_fog(1, col_final, 0, 1);
    
	for (i = 0; i < ((1 > 0.5) ? 2 : 1); i++){
		var rand_x = random_func(i + 00, 7, true) - 3;
		var rand_y = random_func(i + 10, 7, true) - 3;
		
		draw_sprite_ext(sprite_index, image_index, x + rand_x - hsp * 1.5 * (i + 1), y + rand_y - vsp * 1.5 * (i + 1) + 4, image_xscale * 1.1, image_yscale * 1.1, image_angle, c_white, .6);
	}
        
    gpu_set_fog(0, c_white, 0, 0);
	gpu_set_alphatestenable(false);
    // gpu_set_blendmode(bm_normal);
}

//if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
/*if (!electro_charged && attack == AT_USPECIAL && window == 2){
		
	// gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
	var col_R = get_color_profile_slot_r( get_player_color(player), 0);
    var col_G = get_color_profile_slot_g( get_player_color(player), 0);
    var col_B = get_color_profile_slot_b( get_player_color(player), 0);
    
    var col_final = make_color_rgb(col_R, col_G, col_B);
	gpu_set_alphatestenable(true);
	gpu_set_fog(1, col_final, 0, 1);
    
	for (i = 0; i < ((1 > 0.5) ? 2 : 1); i++){
		var rand_x = random_func(i + 00, 7, true) - 3;
		var rand_y = random_func(i + 10, 7, true) - 3;
		
		draw_sprite_ext(sprite_index, image_index, x + rand_x - hsp * 3 * (i + 1), y + rand_y - vsp * 1.5 * (i + 1) + 4, image_xscale * 1.1, image_yscale * 1.1, image_angle, c_white, .6);
	}
        
    gpu_set_fog(0, c_white, 0, 0);
	gpu_set_alphatestenable(false);
    // gpu_set_blendmode(bm_normal);
}*/
//}