shader_end();
var col1 = GetColourPlayer(0);
var col2 = GetColourPlayer(2);
with (pHitBox) if (player_id == other.player_id && attack == AT_NSPECIAL && hbox_num == 2 && sprite_index == asset_get("empty_sprite"))
{
	var rad = image_xscale*100;
	draw_set_alpha(0.5);
	gpu_set_blendmode(bm_add);
	draw_circle_colour(x, y, rad*2, col2, c_black, 0);
	gpu_set_blendmode(bm_normal);
	draw_circle_colour(x, y, rad+random_func(1, 3, 1), col1, c_black, 0);
	draw_circle_colour(x, y, 2*rad/3, col1, col1, 0);
	gpu_set_blendmode(bm_add);
	draw_circle_colour(x, y, rad/2+random_func(0, 3, 1), c_white, c_black, 0);
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
}

#define GetColourPlayer(_index)
{
	return make_colour_rgb(get_color_profile_slot_r(get_player_color(player_id.player), _index),get_color_profile_slot_g(get_player_color(player_id.player), _index),get_color_profile_slot_b(get_player_color(player_id.player), _index));
}