//Fancy CSS template by Muno
//Put in css_draw.gml
var temp_y_off = (test_online * -8);
if test_team temp_y_off = -25;
var temp_x = x + 8;
var temp_y = y + 9 + temp_y_off;

fade_timer ++;

var alt_cur = get_player_color(player);

if alt_cur != current_alt{
	fade_timer = 0;
	current_alt = alt_cur;
	custom_alpha = 1;
}

if fade_timer > 50 custom_alpha = max((50 - (fade_timer - 50))/50,0);

//Alt
draw_set_halign(fa_left);
draw_set_alpha(1);
shader_end();

//include alt. name
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, custom_alpha, (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);

switch (get_player_color(player))
{
	case 1:
	case 2:
	case 3:
	case 4:
	case 5:
	case 6:
	case 7:
		draw_sprite_ext(sprite_get("css_icons"), 1, x+176, y+110, 2, 2, 0, c_white, custom_alpha);
		break;
	case 8:
	case 9:
	case 10:
	case 11:
		draw_sprite_ext(sprite_get("css_icons"), 0, x+176, y+110, 2, 2, 0, c_white, custom_alpha);
		break;
	case 12:
		draw_sprite_ext(sprite_get("css_icons"), 6, x+176, y+110, 2, 2, 0, c_white, 1);
		break;
	case 13:
		draw_sprite_ext(sprite_get("css_icons"), 5, x+176, y+110, 2, 2, 0, c_white, 1);
		break;
	case 14:
	case 15:
	case 16:
	case 17:
		draw_sprite_ext(sprite_get("css_icons"), 2, x+176, y+110, 2, 2, 0, c_white, custom_alpha);
		break;
	case 18:
		draw_sprite_ext(sprite_get("css_icons"), 7, x+176, y+110, 2, 2, 0, c_white, 1);
		break;
	case 19:
		draw_sprite_ext(sprite_get("css_icons"), 4, x+176, y+110, 2, 2, 0, c_white, custom_alpha);
		break;
	case 20:
	case 21:
	case 22:
	case 23:
		draw_sprite_ext(sprite_get("css_icons"), 3, x+176, y+110, 2, 2, 0, c_white, custom_alpha);
		break;
}
#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
draw_set_font(asset_get(argument[2]));
if argument[7]{ //outline. doesn't work lol
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, custom_alpha);
        }
    }
}
draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
return string_width_ext(argument[9], argument[4], argument[5]);