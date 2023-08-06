if(other_player_id.knife_stuck == self){
	with(other_player_id){
		shader_start();
		draw_sprite_ext(handle_spr, 0, other.x, other.y-other.char_height/2, 1 + other.small_sprites, 1 + other.small_sprites, -60*other.spr_dir, c_white, 1);
		shader_end();
	}
}

if(other_player_id.revenge_target == self){
    gpu_set_alphatestenable(true);
	gpu_set_fog(1, other_player_id.revenge_color, 0, 1);
	
	var y_change = y + (char_height/2 * (hitstop * 1/hitstop_full)/2);
    draw_sprite_ext(sprite_index, image_index, x, y_change, (1 + small_sprites + (hitstop * 1/hitstop_full)) * spr_dir, 1 + small_sprites + (hitstop * 1/hitstop_full), spr_angle, other_player_id.revenge_color, 1.1 - (hitstop * 1/hitstop_full));
    
	gpu_set_fog(0, c_white, 0, 0);
	gpu_set_alphatestenable(false);
}