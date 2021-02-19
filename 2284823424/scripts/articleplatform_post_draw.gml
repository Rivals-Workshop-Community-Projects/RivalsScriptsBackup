if exist_timer == clamp(exist_timer, 1, 4) || (type == player_id.BL_DISPENSER && break_timer == clamp(break_timer, 1, 8)){
	draw_sprite_ext(player_id.spr_blocks, type, x, y + 4, 1.1 * spr_dir, 0.9, 0, c_white, 1);
}

if break_stage draw_sprite((type == player_id.BL_ICE) ? player_id.spr_blocks_destroy_wide : player_id.spr_blocks_destroy, break_stage - 1, x, y);
