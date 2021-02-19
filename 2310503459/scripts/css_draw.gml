//if (get_color_profile_slot_r(1, 0) == 181) {
//    sound_play(sound_get("hehe"));
//	set_color_profile_slot( 1, 0, 180, 218, 85 );
//}

var temp_x = x + 8;
var temp_y = y + 9;

patch_ver = string(get_char_info(player, INFO_VER_MAJOR)) + "." + string(get_char_info(player, INFO_VER_MINOR));
image_alpha = max(image_alpha-0.02, 0);

var num_alts = 15;
var alt_new = get_player_color(player);
if (alt_new = 14) draw_sprite_ext(sprite_get("charselect_oil"), 0, temp_x + 0, temp_y + 0, 2, 2, 0, c_white, 1);
if ((alt_new != 15 && alt_new != image_index - 1) || (alt_new == 15 && (image_index == 15 || image_index == 1))) // image_index is global
	image_alpha = 1.5;
image_index = alt_new;

alt_name[0]		= "Downwell";
alt_name[1]		= "Matcha";
alt_name[2]		= "Aqua";
alt_name[3]		= "Game-Boy";
alt_name[4]		= "Virtual-Boy";
alt_name[5]		= "Pastel";
alt_name[6]		= "Nuclear";
alt_name[7]		= "1-Bit";
alt_name[8]		= "Purply";
alt_name[9]	= "Vivid";
alt_name[10]	= "Glow";
alt_name[11]	= "Sewers";
alt_name[12]	= "RGB";
alt_name[13]	= "Isaac";
alt_name[14]	= "Oil Boots";

draw_set_halign(fa_left);

textDraw(temp_x + 150, temp_y + 26, "fName", c_white, 0, 1000, 1, false, 0.3, "v" + patch_ver);

draw_sprite_ext(sprite_get("charselect_color"), 0, temp_x + 0, temp_y + 0, 2, 2, 0, c_white, 1);

if (image_alpha > 0)
	rectDraw(temp_x, temp_y + 141 - floor((image_alpha>1?1:image_alpha)*3.5)*2, temp_x + 201, temp_y + 142, c_black);

if (image_alpha > 0.5)
	for(i = 0; i < num_alts; ++i)
	{
	    var draw_color = (i == image_index) ? c_white : c_gray;
	    var draw_x = temp_x + 2 + 10 * i;
		rectDraw(draw_x, temp_y + 143 - floor((image_alpha>1?1:image_alpha)*3.5)*2, draw_x + 7, temp_y + 140, draw_color);
	}

draw_set_halign(fa_left);

textDraw(temp_x + 2, temp_y + 125 - floor((image_alpha>1?1:image_alpha)*3.5)*2, "fName", c_white, 0, 1000, 1, true, image_alpha, alt_name[image_index]);

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));

if (argument[7]) // outline. doesn't work
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

#define rectDraw(x1, y1, x2, y2, color)
 
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);
