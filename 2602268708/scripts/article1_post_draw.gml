if get_match_setting(SET_HITBOX_VIS){
	draw_sprite_ext(mask_index, 0, x, y, 1, 1, 0, c_white, .5);
}

/*
if (image_index < 13 && (get_local_setting(SET_HUD_SIZE) > 0 || get_local_setting(SET_HUD_NAMES) > 0)){
draw_sprite_ext( sprite_get("_pho_cooldown_arrow"), 0, x - 7, y-52, 1, 1, 0, get_player_hud_color(player_id.player), 1 );
}
*/