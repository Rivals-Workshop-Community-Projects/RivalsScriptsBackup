if (state == 1 || state == 2 || state == 4){
	if closeby_alpha>0 draw_sprite_ext(sprite_get("dspecial_lab_outline"), 0, x, y, 2*spr_dir, 2, 0, get_player_hud_color(player), closeby_alpha);
	if closeby_alpha<1 draw_sprite_ext(sprite_get("hud_player_arrow"), 0, x, y - 80, spr_dir, 1, 0, get_player_hud_color(player), 1 - closeby_alpha);
}