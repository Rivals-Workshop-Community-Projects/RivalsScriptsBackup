sprite_change_offset("uspecial", 100, 108);



if (chord_active){
	// for (i = 0; i < (phone.phone_settings[phone.setting_fast_graphics] ? 1 : round(ease_linear(1, 4, guitar.chord_juice, guitar.chord_juice_max))); i++){
	// 	var rand_x = random_func(i + 00, 9, true) - 4;
	// 	var rand_y = random_func(i + 10, 9, true) - 4;
		
	// 	maskHeader();
		
	// 	var img_sprite = sprite_index;
	// 	var img_angle = image_angle;
	// 	var img_y = 0;
		
	// 	if (phone_attacking && attack == AT_USPECIAL && window == 2){
	//     	img_sprite = spr_uspecial;
	//     	img_angle = 45 * uspecial_dir + (spr_dir == -1) * 180;
	//     	img_y = - 32;

	// 		sprite_change_offset("uspecial", 100, 108);
	//     }
		
	// 	draw_sprite_ext(img_sprite, image_index, x + rand_x - hsp * i, y + rand_y - vsp * i + img_y, image_xscale, image_yscale, img_angle, image_blend, 0.5);
		
	// 	maskMidder();
		
	// 	var col = chord_color[chord_active];
		
	// 	if ("fix_stupid_flash_thing" in self) draw_rectangle_colour(0, 0, room_width, room_height, col, col, col, col, false);
		
	// 	maskFooter();
		
	// 	fix_stupid_flash_thing = true;
	// }
	
	gpu_set_alphatestenable(true);
	gpu_set_fog(1, chord_color[chord_active], 0, 1);
    
	for (i = 0; i < ((guitar.chord_juice / guitar.chord_juice_max > 0.5) ? 2 : 1); i++){
		var rand_x = random_func(i + 00, 7, true) - 3;
		var rand_y = random_func(i + 10, 7, true) - 3;
		
		draw_sprite_ext(sprite_index, image_index, x + rand_x - hsp * (i + 1), y + rand_y - vsp * (i + 1) + 4 + draw_y - (sprite_index == spr_uspecial) * 32, image_xscale * 1.1, image_yscale * 1.1, (sprite_index == spr_uspecial && image_index == clamp(image_index, 4, 7)) ? 45 * uspecial_dir + (spr_dir == -1) * 180 : image_angle, c_white, 1);
	}
        
    gpu_set_fog(0, c_white, 0, 0);
	gpu_set_alphatestenable(false);
}



if false if !phone.phone_settings[phone.setting_fast_graphics] for (var i = 0; i < afterimg_num; i++) if afterimg_time[i]{

	gpu_set_blendenable(false);
	gpu_set_colorwriteenable(false,false,false,true);
	
	draw_set_alpha(0);
	draw_rectangle_color(0,0, room_width,room_height, c_white,c_white,c_white,c_white, false);
	draw_set_alpha(1);
	
	draw_sprite_ext(afterimg_sprite[i], afterimg_frame[i], afterimg_x[i], afterimg_y[i], afterimg_dir[i], 1, afterimg_angle[i], c_white, afterimg_time[i] * 0.5 / afterimg_linger);

	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
	    
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	
	if ("fix_stupid_flash_thing" in self) draw_rectangle_colour(0,0, room_width,room_height, afterimg_col[i], afterimg_col[i], afterimg_col[i], afterimg_col[i], false);
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
	
	fix_stupid_flash_thing = true;
}



shader_start();

if (phone_attacking && attack == AT_USPECIAL && image_index == clamp(image_index, 4, 7)){
	var travel_angle = 45 * uspecial_dir + (spr_dir == -1) * 180;
	
	draw_sprite_ext(spr_uspecial, image_index, x, y-32, spr_dir, 1, travel_angle, c_white, 1);
	sprite_index = spr_empty;
}



if (state == PS_RESPAWN || (state == PS_ATTACK_GROUND && free && attack == AT_TAUNT)){
    draw_sprite(spr_plat_behind, 0, x, y);
}

shader_end();
	
sprite_change_offset("uspecial", 100, 140);



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