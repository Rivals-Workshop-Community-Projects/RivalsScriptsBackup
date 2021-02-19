//Lightning

if (lightning){
	// for (i = 0; i < (phone.phone_settings[phone.setting_fast_graphics] ? 1 : round(ease_linear(1, 5, lightning, lightning_max))); i++){
	// 	var rand_x = random_func(i + 00, 9, true) - 4;
	// 	var rand_y = random_func(i + 10, 9, true) - 4;
		
	// 	maskHeader();
		
	// 	draw_sprite_ext(sprite_index, image_index, x + rand_x - (hitpause ? old_hsp : hsp) * 1.5 * i, y + rand_y - (hitpause ? old_vsp : vsp) * 1.5 * i, image_xscale, image_yscale, image_angle, image_blend, 0.5);
		
	// 	maskMidder();
		
	// 	var col = lightning_color[0];
		
	// 	if ("fix_stupid_flash_thing" in self) draw_rectangle_colour(0, 0, room_width, room_height, col, col, col, col, false);
		
	// 	maskFooter();
		
	// 	fix_stupid_flash_thing = true;
	// }
	
	
	
	gpu_set_alphatestenable(true);
	gpu_set_fog(1, lightning_color[0], 0, 1);
    
	for (i = 0; i < ((lightning / lightning_max > 0.5) ? 2 : 1); i++){
		var rand_x = random_func(i + 00, 7, true) - 3;
		var rand_y = random_func(i + 10, 7, true) - 3;
		
		draw_sprite_ext(sprite_index, image_index, x + rand_x - hsp * 1.5 * (i + 1), y + rand_y - vsp * 1.5 * (i + 1) + 4, image_xscale * 1.1, image_yscale * 1.1, image_angle, c_white, 1);
	}
        
    gpu_set_fog(0, c_white, 0, 0);
	gpu_set_alphatestenable(false);
	
	
	
	if (attacking && attack == AT_DSPECIAL_2 && image_index < 8){
		shader_start();
		
		var sp_h = sprite_get_height(spr_bolt_bottom);
		var offset = -32;
		
		draw_sprite_part_ext(spr_bolt_main, image_index, 0, 0, 256, lightning_dist - offset, x - 128 * spr_dir, y + offset, spr_dir, 1, c_white, 1);
		// draw_sprite_part_ext(spr_bolt_bottom, image_index, 0, 0, 256, 1000, x - 128 * spr_dir, y - lightning_dist, spr_dir, 1, c_white, 1);
		draw_sprite_part_ext(spr_bolt_bottom, image_index, 0, 988 - lightning_dist, 256, 1000, x - 128 * spr_dir, y - 64, spr_dir, 1, c_white, 1);
		
		shader_end();
	}
}



shader_start();



if (sprite_index == spr_intro && intro_height){
	draw_sprite_ext(spr_snail_idle, 12, x, intro_height, spr_dir, 1, 0, c_white, 1);
}



if (state == PS_RESPAWN || (state == PS_ATTACK_GROUND && free && attack == AT_TAUNT)){
    draw_sprite(spr_plat_behind, 0, x, y);
}



shader_end();



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