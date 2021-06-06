// Lukaru's css draw, with Muno's base

init_shader();

var temp_x = x + 8;
var temp_y = y + 9;

var red1 = get_color_profile_slot_r(get_player_color( player ), 0);
var green1 = get_color_profile_slot_g(get_player_color( player ), 0);
var blue1 = get_color_profile_slot_b(get_player_color( player ), 0);
var colourrrrr = merge_colour(make_colour_rgb(red1, green1, blue1), c_white, 0.5);

patch_ver = "0.1";
patch_day = "19";
patch_month = "MAR";
image_alpha = max(image_alpha-0.02, 0);

var num_alts = 27;

var alt_new = get_player_color(player);
if ((alt_new != 15 && alt_new != image_index - 1) || (alt_new == 15 && (image_index == 15 || image_index == 1))) // image_index is global
	image_alpha = 1.5;
image_index = alt_new;

alt_name[0]  = "Default";
alt_name[1]  = "Moonlight";
alt_name[2]  = "Starlight";
alt_name[3]  = "Legendary";
alt_name[4]  = "EleFish";
alt_name[5]  = "Deserted";
alt_name[6]  = "Vladat";
alt_name[7]  = "Griffin";
alt_name[8]  = "Morning Parlour";
alt_name[9]  = "The Count";
alt_name[10] = "Impersonator";
alt_name[11] = "Leisure Suit";
alt_name[12] = "Basabasa";
alt_name[13] = "Shinigama";
alt_name[14] = "Pollen Prophet";
alt_name[15] = "Ghost Pepper";
alt_name[16] = "Tossak";
alt_name[17] = "Khezu";
alt_name[18] = "Golden";
alt_name[19] = "Abyss";
alt_name[20] = "Gameboy";
alt_name[21] = "Seasonal (Valentine's)";
alt_name[22] = "Seasonal (Summer)";
alt_name[23] = "Seasonal (Halloween)";
alt_name[24] = "Seasonal (Christmas)";
alt_name[25] = "Peanut Butter & Jam";
alt_name[26] = "Infamous";
draw_set_halign(fa_left);

//textDraw(temp_x + 164, temp_y + 26, "fName", colourrrrr, 0, 1000, 1, false, 0.3, "v" + patch_ver);

//textDraw(temp_x + 2, temp_y + 50, "fName", colourrrrr, 0, 1000, 1, true, 1, patch_day + " " + patch_month);

//if (image_alpha > 0)
//	rectDraw(temp_x, temp_y + 141 - floor((image_alpha>1?1:image_alpha)*3.5)*2, temp_x + 201, temp_y + 142, c_black);
/*
if (image_alpha > 0.5) {
	for(i = 0; i < num_alts; ++i)
	{
	    var draw_color = (i==image_index?colourrrrr:c_gray);
	    var draw_x = temp_x + 2 + 10 * i;
		rectDraw(draw_x, temp_y + 143 - floor((image_alpha>1?1:image_alpha)*3.5)*2, draw_x + 7, temp_y + 140, draw_color);
	}
}
*/

draw_rectangle_color(x + 10, (y + 143), x + 209, (y + 151), c_black, c_black, c_black, c_black, false);

var num_colors = 26;
var rect_x = x + 9;
var rect_width = floor(160 / num_colors) - 3;
var rect_color;
for (i = 0; i < num_colors; ++i) {
    if (i == get_player_color(player)) rect_color = c_white;
    else rect_color = c_gray;
    draw_rectangle_color(rect_x, (y + 145), rect_x + rect_width, (y + 149), rect_color, rect_color, rect_color, rect_color, false);
    rect_x += rect_width + 3;
}
draw_set_halign(fa_left);
 
// include alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", colourrrrr, 0, 1000, 1, true, 1, "Alt. " + (image_index < 9 ? "0" : "") + string(image_index + 1) + ": " + alt_name[image_index]);
textDraw(temp_x + 2, temp_y + 125 - floor((image_alpha>1?1:image_alpha)*3.5)*2, "fName", colourrrrr, 0, 1000, 1, true, image_alpha, alt_name[image_index]);
 
// exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", colourrrrr, 0, 1000, 1, true, 1, "Alt. " + (image_index < 9 ? "0" : "") + string(image_index + 1));
user_event(12);
#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));

if (argument[7]) // outline. doesn't work
{
    for (i = -1; i < 2; ++i)
	{
        for (j = -1; j < 2; ++j)
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
