with player_id shader_start();
draw_sprite_ext(fake_sprite_index, fake_image_index, x, y - (!free && !place_meeting(x, y + 1, asset_get("par_block"))), spr_dir, 1, fake_image_angle * spr_dir, c_white, 1);

if (state == PS_FIRST_JUMP){
	
	var foot_x = player_id.x;
	var foot_y = player_id.y - 32;
	var head_x = x;
	var head_y = y;
	
	var scale = point_distance(foot_x, foot_y, head_x, head_y) / 200;
	var angle = point_direction(foot_x, foot_y, head_x, head_y) - 90;
	
	draw_sprite_ext(sprite_get("magnesis_line"), (state_timer-1) / 4, foot_x, foot_y, 1, scale, angle, c_white, 1);
	
	draw_sprite_ext(sprite_get("magnesis_magnet"), (state_timer-1) / 4, head_x, head_y, 1, 1, angle + 90, c_white, 1);
	
}

if state == PS_ATTACK_GROUND && cryonising{
	var s_t_max = 20;
	var max_frame = 7;
	var frame = clamp(lerp(0, max_frame + 1, state_timer / s_t_max), 0, max_frame);
	
	draw_sprite_ext(sprite_get("cryonis_spawn"), frame, x, 0, 1, room_height, 0, c_white, 1);
}


with player_id shader_end();