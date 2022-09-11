// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 4;
user_event(14);

//var glow = make_colour_rgb (255, 132, 157);

var glow = make_color_rgb(get_color_profile_slot_r(get_player_color(player), 1), 
						  get_color_profile_slot_g(get_player_color(player), 1), 
						  get_color_profile_slot_b(get_player_color(player), 1));

if (energy_meter > 80)
{
	gpu_set_fog(1, glow, 0, 1);
	draw_sprite_ext(sprite_index, image_index, round(x + draw_x), round(y + draw_y), spr_dir, 1, spr_angle, c_white, 0.25);
	gpu_set_fog(0, 0, 0, 0);
}