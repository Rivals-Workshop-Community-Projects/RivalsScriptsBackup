init_shader();
if (get_color_profile_slot_r(1, 0) == 181)
{
    sound_play(sound_get("sfx_taunt"));
	set_color_profile_slot( 1, 0, 180, 218, 85 );
}

if (!"hue" in self) hue = 0;
if (!"currAlt" in self) currAlt = 0;

var colourrrrr = merge_colour(make_colour_rgb(	get_color_profile_slot_r(get_player_color( player ), 0),
												get_color_profile_slot_g(get_player_color( player ), 0),
												get_color_profile_slot_b(get_player_color( player ), 0)), c_white, 0.5);
var colourrrrr2 = merge_colour(make_colour_rgb(	get_color_profile_slot_r(get_player_color( player ), 1),
												get_color_profile_slot_g(get_player_color( player ), 1),
												get_color_profile_slot_b(get_player_color( player ), 1)), c_white, 0.5);

var temp_x = x + 8;
var temp_y = y + 9;

patch_ver = string(get_char_info(player, INFO_VER_MAJOR)) + "." + string(get_char_info(player, INFO_VER_MINOR)-1);
image_alpha = max(image_alpha-0.015, 0);

var num_alts = 16;
var alt_new = get_player_color(player);
if (alt_new != currAlt) image_alpha = 1.5;
currAlt = alt_new;

altStr[0]  = "Hikaru Kitagawa";
altStr[1]  = "#F42069 #B4DA55";
altStr[2]  = "Transcend";
altStr[3]  = "Infamous";
altStr[4]  = "Acolyte";
altStr[5]  = "Vaporwave";
altStr[6]  = "Voidfox";
altStr[7]  = "Esix";
altStr[8]  = "Suzuhime";
altStr[9]  = "Gameboy";
altStr[10] = "Sans";
altStr[11] = "Zoroark";
altStr[12] = "Sino";
altStr[13] = "Asriel";
altStr[14] = "Arcade";
altStr[15] = "Colour Select";

draw_set_halign(fa_left);
textDraw(temp_x + 160, temp_y + 40, "fName", colourrrrr, 0, 1000, 1, false, 0.3, "v" + patch_ver);

var special_y = floor((image_alpha>1?1:image_alpha)*3.5)*2;

if (image_alpha > 0) rectDraw(temp_x, temp_y + 141 - special_y, temp_x + 201, temp_y + 142, c_black);

draw_sprite_ext(sprite_get("idle2"),currAlt,temp_x - 10,temp_y - 61,1,1,0,c_white,1);
draw_sprite_ext(sprite_get("logo"),currAlt,temp_x + 166,temp_y + 91,1,1,0,c_white,1);

if (image_alpha > 0.5) for(i = 0; i < num_alts; ++i)
{
    var draw_color = (i == currAlt) ? colourrrrr : c_gray;
    var draw_color2 = (i == currAlt) ? colourrrrr2 : c_gray;
    var draw_x = temp_x + 2 + 10 * i;
    var draw_y = temp_y + 143 - special_y;

	rectDraw(draw_x, draw_y, draw_x + 3, temp_y + 140, draw_color);
	rectDraw(draw_x + 4, draw_y, draw_x + 7, temp_y + 140, draw_color2);
}

draw_set_halign(fa_left);
textDraw(temp_x + 2, temp_y + 125 - special_y, "fName", colourrrrr, 0, 1000, 1, true, image_alpha, altStr[currAlt]);

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
{
	draw_set_font(asset_get(argument[2]));
	
	if (argument[7])
	{
	    for (i = -1; i < 2; i++)
		{
	        for (j = -1; j < 2; j++)
			{
				if (argument[8] > 0)
					draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, argument[8]);
	        }
	    }
	}
	
	if (argument[8] > 0)
		draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);
	
	return string_width_ext(argument[9], argument[4], argument[5]);
}

#define rectDraw(x1, y1, x2, y2, color)
{
	draw_rectangle_color(x1, y1, x2, y2, color, color, color, color, false);
}