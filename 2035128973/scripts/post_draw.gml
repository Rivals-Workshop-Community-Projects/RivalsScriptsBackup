//post_draw
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
{
	switch (attack)
	{
		case AT_EXTRA_1:
			draw_debug_text(x-24, y+6, "el wiwi");
			break;
		case AT_FSPECIAL:
			DrawAura("fspecial_boneless_extra", 1, 8);
			break;
		case AT_FTHROW:
			DrawAura("ftilt_boneless_extra", 1, 5);
			break;
		case AT_BAIR:
			DrawAura("bair_extra", 1, 4);
			break;
		case AT_DSPECIAL_AIR:
			DrawAura("dair_boneless_extra", 2, 6);
			break;
		case AT_NSPECIAL_AIR:
			DrawAura("nair_boneless_extra", 1, 5);
			break;
		case AT_TAUNT:
			DrawAura("taunt_extra", 3, 11);
			break;
		case AT_FSTRONG:
			DrawAura("fstrong_extra", 1, 8);
			break;
		case AT_DSTRONG:
			DrawAura("dstrong_extra", 1, 7);
			break;
		case AT_USTRONG:
			DrawAura("ustrong_extra", 1, 6);
			break;
		case AT_NSPECIAL:
		case 49:
			if (window <= 2 || (window == 3 && window_timer < 4 && attack == AT_NSPECIAL))
			{
				var col1 = GetColourPlayer(0);
				var col2 = GetColourPlayer(2);
				var rad = asCharge*0.2+10;
				if (window == 1) rad = lerp(0, rad, window_timer/get_window_value(attack, 1, AG_WINDOW_LENGTH));
				var newX = x-spr_dir*(26-(window==3?(window_timer-1)*10:0)+random_func(4, 2, 1));
				var newY = y-30+random_func(3, 2, 1);
				draw_set_alpha((state_timer%20)/40);
				gpu_set_blendmode(bm_add);
				draw_circle_colour(newX, newY, rad*(2.5-(state_timer%20)/10), c_black, col1, 0);
				draw_set_alpha(0.5);
				draw_circle_colour(newX, newY, rad*2, col2, c_black, 0);
				gpu_set_blendmode(bm_normal);
				draw_circle_colour(newX, newY, rad+random_func(1, 3, 1), col1, c_black, 0);
				draw_circle_colour(newX, newY, 2*rad/3, col1, col1, 0);
				gpu_set_blendmode(bm_add);
				draw_circle_colour(newX, newY, rad/2+random_func(0, 3, 1), c_white, c_black, 0);
				gpu_set_blendmode(bm_normal);
				draw_set_alpha(1);
			}
			if (window <=2)
			{
				gpu_set_fog(1, c_white, 0, 1);
				draw_sprite_ext(sprite_index, image_index, x, y, spr_dir*2, 2, 0, c_white, sin(state_timer/3)/2);
				gpu_set_fog(0, c_white, 0, 0);
			}
			break;
	}
}
else if (costumeIndex>=0)
{
	shader_start();
	draw_sprite_ext(costumeList[costumeIndex], image_index, x, y, 2*spr_dir, 2, 0, c_white, 1);
	shader_end();
}

#define GetColourPlayer(_index)
{
    return make_colour_rgb(get_color_profile_slot_r(get_player_color(player), _index),get_color_profile_slot_g(get_player_color(player), _index),get_color_profile_slot_b(get_player_color(player), _index));
}

#define DrawAura(_name, _start, _end)
{
	if (image_index == clamp(image_index,_start,_end))
	{
		shader_start();
		gpu_set_blendmode(bm_add);
		draw_sprite_ext(sprite_get(_name), image_index-_start, x, y, 2*spr_dir, 2, 0, c_white, 0.9);
		gpu_set_blendmode(bm_normal);
		shader_end();
	}
}