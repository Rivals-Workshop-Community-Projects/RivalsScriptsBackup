//Draw ice block stuff

if(variant == "ice block") {
	//draw ice block
	var rumble_xoffset = render_rumble?((random_func(0, 1, false) - 0.5) * 12):0;
	var rumble_yoffset = render_rumble?((random_func(1, 1, false) - 0.5) * 12):0;
	
	with(frozen_use_shader?frozen_shader_owner:id) {
		if(object_index == oPlayer) shader_start();
		draw_sprite_ext(other.frozen_sprite, other.frozen_image, other.x + other.spr_dir * other.frozen_xoffset + rumble_xoffset, other.y + other.frozen_yoffset + rumble_yoffset, other.spr_dir * other.frozen_xscale, other.frozen_yscale, other.frozen_angle, other.frozen_colour, 1.0);
		if(object_index == oPlayer) shader_end();
	}
	
	var ice_x = x + rumble_xoffset, ice_y = y + rumble_yoffset, ice_w = abs(image_xscale), ice_h = abs(image_yscale) + 1;
	var ice = sprite_get("item_ice_block2");
	
	var corner_chunk_w = min(96, ice_w / 2), corner_chunk_h = min(96, ice_h / 2), center_height = min(ice_h, 96);
	
	var check_value = 96 / 2 - center_height / 2;
	draw_sprite_part_ext(ice, 4, 0, check_value, corner_chunk_w, center_height, ice_x - ice_w, ice_y - center_height, 2, 2, c_white, 1.0);
	draw_sprite_part_ext(ice, 4, 96 - corner_chunk_w, check_value, corner_chunk_w, center_height, ice_x + ice_w - corner_chunk_w * 2, ice_y - center_height, 2, 2, c_white, 1.0);
	
	draw_sprite_part_ext(ice, 0, 0, 0, corner_chunk_w, corner_chunk_h, ice_x - ice_w, ice_y - ice_h, 2, 2, c_white, 1.0);
	draw_sprite_part_ext(ice, 1, 0, 96 - corner_chunk_h, corner_chunk_w, corner_chunk_h, ice_x - ice_w, ice_y + ice_h - corner_chunk_h * 2, 2, 2, c_white, 1.0);
	draw_sprite_part_ext(ice, 2, 96 - corner_chunk_w, 0, corner_chunk_w, corner_chunk_h, ice_x + ice_w - corner_chunk_w * 2, ice_y - ice_h, 2, 2, c_white, 1.0);
	draw_sprite_part_ext(ice, 3, 96 - corner_chunk_w, 96 - corner_chunk_h, corner_chunk_w, corner_chunk_h, ice_x + ice_w - corner_chunk_w * 2, ice_y + ice_h - corner_chunk_h * 2, 2, 2, c_white, 1.0);
	
	with(frozen_use_shader?frozen_shader_owner:id) {
		if(object_index == oPlayer) shader_start();
		draw_sprite_ext(other.frozen_sprite, other.frozen_image, other.x + other.spr_dir * other.frozen_xoffset + rumble_xoffset, other.y + other.frozen_yoffset + rumble_yoffset, other.spr_dir * other.frozen_xscale, other.frozen_yscale, other.frozen_angle, other.frozen_colour, 0.45);
		if(object_index == oPlayer) shader_end();
	}
	
	if(subvariant == "frozen player") {
		var is_qua_mario = (contains_player.url == player_id.url);
		draw_sprite_ext(player_id.spr_hud_escape_tip[is_qua_mario], 2, x, y - ice_h - 38, 1, 1, 0, c_white, 1.0);
		draw_sprite_ext(player_id.spr_hud_escape_tip[is_qua_mario], (get_gameplay_time() % 40 < 20)?4:3, x, y - ice_h - 38, 1, 1, 0, get_player_hud_color(contains_player.player), 1.0);
	}
}