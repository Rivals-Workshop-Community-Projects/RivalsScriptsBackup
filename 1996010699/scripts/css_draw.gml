var temp_x = x + 8;
var temp_y = y + 9;
 
draw_set_halign(fa_left);

switch(get_player_color(player)){
	case 6:
		draw_sprite_ext(sprite_get("css_premium"), 0, temp_x + 167, temp_y + 99, 1, 1, 0, c_white, 1);
		break;
	case 7:
		draw_sprite_ext(sprite_get("css_abyss"), 0, temp_x + 167, temp_y + 99, 1, 1, 0, c_white, 1);
		break;
	case 8:
		draw_sprite_ext(sprite_get("css_gb"), 0, temp_x + 167, temp_y + 99, 1, 1, 0, c_white, 1);
		for(i = 0; i < 6; i++){
			set_character_color_shading(i, 0);
		}
		break;
	case 10:
		draw_sprite_ext(sprite_get("css_premium"), 0, temp_x + 167, temp_y + 99, 1, 1, 0, c_white, 1);
		break;
	case 13:
		//textDraw(temp_x + 4, temp_y + 130, "fName", c_gray, 0, 1000, 1, true, 1, "Starting Item Disabled ");
		shader_end();
		draw_sprite_ext(sprite_get("css_seasonal"), 0, temp_x + 167, temp_y + 99, 1, 1, 0, c_white, 1);
		//draw_sprite_ext(sprite_get("css_toothpaste"), 0, temp_x + 6, temp_y + 99, 1, 1, 0, c_gray, 0.69);
		break;
	case 14:
		draw_sprite(sprite_get("css_halloween"), 0, temp_x + 0, temp_y - 1 );
		//textDraw(temp_x + 4, temp_y + 130, "fName", c_gray, 0, 1000, 1, true, 1, "Starting Item Disabled ");
		shader_end();
		draw_set_halign(fa_left);
		//draw_sprite_ext(sprite_get("css_creatorsmark"), 0, temp_x + 6, temp_y + 99, 1, 1, 0, c_gray, 0.69);
		draw_sprite_ext(sprite_get("css_seasonal"), 0, temp_x + 167, temp_y + 99, 1, 1, 0, c_white, 1);
		break;
	case 15:
		draw_sprite_ext(sprite_get("css_premium"), 0, temp_x + 167, temp_y + 99, 1, 1, 0, c_white, 1);
		draw_sprite(sprite_get("css_golden"), 0, temp_x + 0, temp_y - 1 );
		break;
}

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
 
draw_set_font(asset_get(argument[2]));
 
if argument[7]{ //outline. doesn't work lol
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}
 
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
 
return string_width_ext(argument[9], argument[4], argument[5]);

