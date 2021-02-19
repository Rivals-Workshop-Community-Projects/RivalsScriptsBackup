// user_event9.gml - post_draw.gml

// Edit this file only if you know what you're doing - only user_event15.gml
// contains user-defined content.



if phone_arrow_cooldown && !(phone_arrow_cooldown - 1 < 25 && (phone_arrow_cooldown - 1) % 10 >= 5){
	draw_sprite_ext(spr_pho_cooldown_arrow, 0, x - 7, y - char_height - hud_offset - 28, 1, 1, 0, get_player_damage(player) >= 100 ? get_player_hud_color(player) : darkened_player_color, 1);
}