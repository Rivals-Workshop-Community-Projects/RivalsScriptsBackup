//pre_draw.gml
	
if (greaterdog_timer > 0)
{
	draw_sprite_ext(
		sprite_get("hud_greaterdog"),
		0,
		hit_player_obj.x - (18 * hit_player_obj.spr_dir),
		hit_player_obj.y - (hit_player_obj.char_height + 96),
		hit_player_obj.spr_dir,
		1.0,
		0,
		make_colour_rgb(
			get_color_profile_slot_r(get_player_color(player), 0),
			get_color_profile_slot_g(get_player_color(player), 0),
			get_color_profile_slot_b(get_player_color(player), 0)),
		0.75);
}