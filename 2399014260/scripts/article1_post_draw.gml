if (state == PS_ATTACK_AIR && attack == AT_NSPECIAL_AIR && window > 1 && !should_die){
	
	var foot_x = player_id.x;
	var foot_y = player_id.y - 32;
	var head_x = x;
	var head_y = y - 44;
	
	var scale = point_distance(foot_x, foot_y, head_x, head_y) / 200;
	var angle = point_direction(foot_x, foot_y, head_x, head_y) - 90;
	
	with player_id shader_start();
	
	draw_sprite_ext(player_id.spr_nspecial_beam, get_gameplay_time() / 3, foot_x, foot_y, 1, scale, angle, c_white, 1);
	
	draw_sprite_ext(player_id.spr_nspecial_wiimote, 0, head_x, head_y, 1, 1, angle + 90, c_white, 1);
	
	with player_id shader_end();
	
}