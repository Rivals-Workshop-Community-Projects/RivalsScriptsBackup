if (get_color_profile_slot_r(1, 0) == 213) {
    sound_play(sound_get("slashe_scream1"));
	set_color_profile_slot( 1, 0, 214, 183, 120 );
}

var temp_x = x + 8;
var temp_y = y + 9;

//patch_ver = "2.0";
patch_ver = string(get_char_info(player, INFO_VER_MAJOR)) + "." + string(get_char_info(player, INFO_VER_MINOR));
//patch_day = "12";
//patch_month = "JULY";

var num_alts = 16;
var alt_new = get_player_color(player);
image_alpha = max(image_alpha-0.02, 0);
if ((alt_new != 15 && alt_new != image_index - 1) || (alt_new == 15 && (image_index == 15 || image_index == 1))) // image_index is global
	image_alpha = 1.5;
image_index = alt_new;
var alt_cur = get_player_color(player);

alt_name[0]  = "Default";
alt_name[1]  = "Diamond Steve";
alt_name[2]  = "Dart";
alt_name[3]  = "Hero of Time";
alt_name[4]  = "Excalibur";
alt_name[5]  = "Trans Rights";
alt_name[6]  = "Abyss";
alt_name[7]  = "Chocolate";
alt_name[8]  = "Sonic";
alt_name[9]  = "Olympia";
alt_name[10] = "Kris";
alt_name[11] = "Mollo";
alt_name[12] = "Astra";
alt_name[13] = "Hikaru";
alt_name[14] = "R00";
alt_name[15] = "Natukat";

draw_set_halign(fa_left);

//textDraw(temp_x + 2, temp_y + 30, "medFont", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver);
textDraw(temp_x + 148, temp_y + 86 , "fName", c_white, 0, 1000, 1, false, 0.3, "v" + patch_ver);

//textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);

//rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
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
 
// include alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);
textDraw(temp_x + 2, temp_y + 125 - floor((image_alpha>1?1:image_alpha)*3.5)*2, "fName", c_white, 0, 1000, 1, true, image_alpha, alt_name[image_index]);
 
// exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1));
#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));

if (argument[7]) // outline. doesn't work
{
    for (i = -1; i < 2; i++)
	{
        for (j = -1; j < 2; j++)
		{
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, argument[8]);
        }
    }
}

draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

return string_width_ext(argument[9], argument[4], argument[5]);

#define rectDraw(x1, y1, x2, y2, color)
 
draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);