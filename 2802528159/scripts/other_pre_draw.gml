shader_start();
if(other_player_id.window >= 3 && (other_player_id.window = 3? other_player_id.window_timer >= 1: other_player_id.window_timer >= 0) && other_player_id.window < 8 && other_player_id.attack == AT_NSPECIAL && other_player_id.hit == true && grabbed == true && (other_player_id.state == PS_ATTACK_GROUND || other_player_id.state == PS_ATTACK_AIR)){
	//change angle
	draw_y = 999999;
	if(other_player_id.spr_dir == 1){
	    draw_sprite_ext(sprite_index, image_index, x, y, (small_sprites + 1) * -1, small_sprites + 1, -90, c_white, 1);
	}else if(other_player_id.spr_dir == -1){
	    draw_sprite_ext(sprite_index, image_index, x, y, small_sprites + 1, small_sprites + 1, 90, c_white, 1);
	}
}else if(other_player_id.window < 8  && other_player_id.attack == AT_NSPECIAL_AIR && other_player_id.hit == true && instance_exists(other_player_id.victim) && grabbed == true && (other_player_id.state == PS_ATTACK_GROUND || other_player_id.state == PS_ATTACK_AIR)){
	//change angle
	draw_y = 999999;
	if(other_player_id.spr_dir == 1){
	    draw_sprite_ext(sprite_index, image_index, x, y, (small_sprites + 1) * -1, small_sprites + 1, -90, c_white, 1);
	}else if(other_player_id.spr_dir == -1){
	    draw_sprite_ext(sprite_index, image_index, x, y, small_sprites + 1, small_sprites + 1, 90, c_white, 1);
	}
}
shader_end();