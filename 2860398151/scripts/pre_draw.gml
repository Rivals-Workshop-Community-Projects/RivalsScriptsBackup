//	pre_draw.gml - stuff that appears behind the fighter

//var aura = make_colour_rgb (167, 27, 94);

var aura = make_color_rgb(get_color_profile_slot_r(get_player_color(player), 1), 
						  get_color_profile_slot_g(get_player_color(player), 1), 
						  get_color_profile_slot_b(get_player_color(player), 1));

if (energy_meter > 80)
{
	gpu_set_alphatestenable(true);
	gpu_set_fog(1, aura, 0, 1);

	for (i = phone_fast; i < 2; i++)
	{
		var aura_x = random_func(i + 00, 5, true) - 2;
		var aura_y = random_func(i + 10, 5, true) - 2;
		
		draw_sprite_ext(sprite_index, image_index, x + aura_x - clamp(hsp, -16, 16) * (i + 1), y + aura_y - vsp * (i + 1) 
		+ 3 + draw_y, image_xscale * 1.1, image_yscale * 1.1, spr_angle, c_white, 0.5);
	}
		
	gpu_set_fog(0, c_white, 0, 0);
	gpu_set_alphatestenable(false);
}