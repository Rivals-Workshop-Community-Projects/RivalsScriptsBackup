// Stolen from -> Lukaru's css draw, with Muno's base

if (get_color_profile_slot_r(1, 0) == 251)
{
    sound_play(sound_get("victory"));
	set_color_profile_slot( 1, 0, 252, 252, 252 );
}

init_shader();

var temp_x = x + 8;
var temp_y = y + 10;

var red1 = get_color_profile_slot_r(get_player_color( player ), 0);
var green1 = get_color_profile_slot_g(get_player_color( player ), 0);
var blue1 = get_color_profile_slot_b(get_player_color( player ), 0);
var colourrrrr = merge_colour(make_colour_rgb(red1, green1, blue1), c_white, 0.5);

//patch_ver = "1.20";
//patch_day = "17";
//patch_month = "MAR";
image_alpha = max(image_alpha-0.02, 0);

var num_alts = 18;
var alt_new = get_player_color(player);
if ((alt_new != 32 && alt_new != image_index - 1) || (alt_new == 18 && (image_index == 18 || image_index == 1))) // image_index is global
	image_alpha = 1.5;
image_index = alt_new;

alt_name[0]  = "Default";
alt_name[1]  = "Hot Stuff";
alt_name[2]  = "Commuter";
alt_name[3]  = "Fair Share";
alt_name[4]  = "Devolition";
alt_name[5]  = "Abyss";
alt_name[6]  = "Frozen";
alt_name[7]  = "Arctic";
alt_name[8]  = "Coco the nut";
alt_name[9]  = "Toxic";
alt_name[10] = "FURY";
alt_name[11] = "Golem";
alt_name[12] = "Bird Gal";
alt_name[13] = "Ravenous";
alt_name[14] = "Gulliver";
alt_name[15] = "Angel";
alt_name[16] = "Blue Footed Bobby";
alt_name[17] = "Blue Jay";
alt_name[18] = "Glimmer Guy";
alt_name[19] = "Bee";
alt_name[20] = "1Bit Guy";
alt_name[21] = "Rolling Wind";
alt_name[22] = "Amethyst";
alt_name[23] = "Spacey";
alt_name[24] = "Egg and Bird Guy";
alt_name[25] = "Phoenix Guy";
alt_name[26] = "Reverse Guy";
alt_name[27] = "Baked Bird";
alt_name[28] = "Riptide Ripguy";
alt_name[29] = "Spook";
alt_name[30] = "Angry";
alt_name[31] = "Angel";

draw_set_halign(fa_left);

//textDraw(temp_x + 164, temp_y + 26, "fName", colourrrrr, 0, 1000, 1, false, 0.3, "v" + patch_ver);

//textDraw(temp_x + 2, temp_y + 50, "fName", colourrrrr, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
if (image_alpha > 0)
	rectDraw(temp_x, temp_y + 141 - floor((image_alpha>1?1:image_alpha)*3.5)*2, temp_x + 201, temp_y + 142, c_black);

if (image_alpha > 0.5)
	for(i = 0; i < num_alts; ++i)
	{
	    var draw_color = (i == image_index) ? colourrrrr : c_gray;
	    var draw_x = temp_x + 2 + 10 * i;
		rectDraw(draw_x, temp_y + 143 - floor((image_alpha>1?1:image_alpha)*3.5)*2, draw_x + 7, temp_y + 140, draw_color);
	}

draw_set_halign(fa_left);
 
// include alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", colourrrrr, 0, 1000, 1, true, 1, "Alt. " + (image_index < 9 ? "0" : "") + string(image_index + 1) + ": " + alt_name[image_index]);
textDraw(temp_x + 2, temp_y + 125 - floor((image_alpha>1?1:image_alpha)*3.5)*2, "fName", colourrrrr, 0, 1000, 1, true, image_alpha, alt_name[image_index]);
 
// exclude alt. name
//textDraw(temp_x + 2, temp_y + 124, "fName", colourrrrr, 0, 1000, 1, true, 1, "Alt. " + (image_index < 9 ? "0" : "") + string(image_index + 1));

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