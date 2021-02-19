if (player_id.visible) {
	draw_sprite_ext(sprite_index, player_id.image_index, player_id.x + player_id.draw_x, player_id.y + player_id.draw_y, player_id.spr_dir, 1, 0, c_white, 1)
}
//draw_debug_text(player_id.x, player_id.y, string(player_id.image_index))