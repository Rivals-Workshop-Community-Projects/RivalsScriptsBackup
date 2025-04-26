// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 4; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
user_event(14);

//7axel7 hitbox visualizer
with asset_get("obj_article2") {
	var tx = other.x+xOffset*spr_dir;
	var ty = other.y+yOffset;
	scaleConversion = 64;
    if player_id == other.id {
		if (_type == ""){
			draw_sprite_ext(render_sprite, _image_index, tx, ty, width/scaleConversion, height/scaleConversion, 0, c_white, 1);
		} else {
			draw_sprite_ext(render_sprite, _image_index,  x + spr_dir, y, 0.9, 0.9, 0, c_black, 1);
		}
    }
}

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
{
	switch (attack)
	{
	case AT_NSPECIAL:
		if (window <= 2 || (window == 3 && window_timer < 4 && attack == AT_NSPECIAL))
		{
			var test = 0;//-20 //(y-448)/4;
			//lucario charging orb code
			var col1 = GetColourPlayer(0);
			var col2 = GetColourPlayer(1);
			var playerAlt = get_player_color(player);
			switch (playerAlt)
			{
				case 11: //rbg
				{
					if ("hue" not in self) hue = 0;
					col2 = make_color_hsv((color_get_hue(col2)+hue)%255,color_get_saturation(col2),color_get_value(col2))
				}
				break;
			}
			var rad = shadowBallCharge*1+10;
			if (window == 1) rad = lerp(0, rad, window_timer/get_window_value(attack, 1, AG_WINDOW_LENGTH));
			var difftoggle = (window==3?1:0);
			var diff = difftoggle*-window_timer

			var newX = x-spr_dir*(26+4*diff+random_func(4, 2, 1));
			var newY = y-45+difftoggle*10-2*diff+random_func(3, 2, 1);

			// draw_circle_colour(newX+50, newY, rad*2, col1, col1, 0);
			// draw_circle_colour(newX+100, newY, rad*2, col2, col2, 0);

			newY += test;
			draw_set_alpha((state_timer%20)/40);
			gpu_set_blendmode(bm_add);
			draw_circle_colour(newX, newY, rad*(2.5-(state_timer%20)/10), c_black, col1, 0);	
			newY += test;
			draw_set_alpha(0.5);

			gpu_set_blendmode(bm_add);
			draw_circle_colour(newX, newY, rad*2, c_white, c_black, 0);
			newY += test;

			draw_set_alpha(0.9);
			draw_circle_colour(newX, newY, rad*2, col1, c_black, 0);
			newY += test;

			gpu_set_blendmode(bm_normal);
			extraStretch = sin(window_timer*0.2)*1;

			draw_set_alpha(1);
			draw_circle_colour(newX, newY, rad+extraStretch, col2, col2, 0);
			newY += test;
			// draw_circle_colour(newX, newY, 2*rad/3, col1, col1, 0);
			draw_circle_colour(newX, newY, rad+extraStretch, c_black, c_white, 1);

			draw_set_alpha(0.1);
			newY += test;

			// draw_circle_colour(newX, newY, rad+extraStretch+20, c_black, c_ltgray, 0);


			newY += test;
			gpu_set_blendmode(bm_normal);
			//draw_circle_colour(newX, newY, rad/2+random_func(0, 3, 1), c_black, c_white, 0);
			newY += test;
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



#define rectDraw(x1, y1, width, height, color)

draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);



#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline {
    for (i = -1; i < 2; i++) {
        for (j = -1; j < 2; j++) {
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
else return;

//lucario get color code but in post draw
#define GetColourPlayer(_index)
{
    return make_colour_rgb(get_color_profile_slot_r(get_player_color(player), _index),get_color_profile_slot_g(get_player_color(player), _index),get_color_profile_slot_b(get_player_color(player), _index));
}