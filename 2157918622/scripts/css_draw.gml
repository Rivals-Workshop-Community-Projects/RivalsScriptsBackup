// Lukaru's css draw, with Muno's base
// note: c_white is affected by Cupcake's colours

var temp_x = x + 8;
var temp_y = y + 9;

var red1 = get_color_profile_slot_r(get_player_color( player ), 0);
var green1 = get_color_profile_slot_g(get_player_color( player ), 0);
var blue1 = get_color_profile_slot_b(get_player_color( player ), 0);
var colourrrrr = merge_colour(make_colour_rgb(red1, green1, blue1), c_white, 0.5);

patch_ver = string(get_char_info(player, INFO_VER_MAJOR)) + "." + string(get_char_info(player, INFO_VER_MINOR));
//patch_day = "17";
//patch_month = "MAR";
image_alpha = max(image_alpha-0.02, 0);

var num_alts = 29;
var alt_new = get_player_color(player);
if ((alt_new != 28 && alt_new != image_index - 1) || (alt_new == 28 && (image_index == 15 || image_index == 1))) // image_index is global
	image_alpha = 1.5;
image_index = alt_new;

alt_name[0]  = "Heartstrong Acrobat";
alt_name[1]  = "Lightning Relative";
alt_name[2]  = "Umbral Witch";
alt_name[3]  = "Floating Star";
alt_name[4]  = "Abyssal Apprentice";
alt_name[5]  = "Tricky Illusion";
alt_name[6]  = "Burning Rebel";
alt_name[7]  = "Crystal Brawler";
alt_name[8]  = "Healing Psychic";
alt_name[9]  = "Luminous Mage";
alt_name[10] = "Electric Boogaloo";
alt_name[11] = "Plasma Cutter";
alt_name[12] = "Metallic Performer";
alt_name[13] = "Greyscale Spectre";
alt_name[14] = "Champion";
alt_name[15] = "Trans Pride";
alt_name[16] = "BLM";
alt_name[17] = "Garden Queen";
alt_name[18] = "Lop-Eared";
alt_name[19] = "Pheromone Lizard";
alt_name[20] = "Energy Fox";
alt_name[21] = "Hourglass Bunny";
alt_name[22] = "Lovely Fennek";
alt_name[23] = "Zero Suit";
alt_name[24] = "Red Ribbons";
alt_name[25] = "Punching Pupil";
alt_name[26] = "Lunar Rabbit";
alt_name[27] = "Smug Feline";
alt_name[28] = "Sly Ferret";


draw_set_halign(fa_left);

textDraw(temp_x + 164, temp_y + 42, "fName", colourrrrr, 0, 1000, 1, false, 0.3, "v" + patch_ver);

//textDraw(temp_x + 2, temp_y + 50, "fName", colourrrrr, 0, 1000, 1, true, 1, patch_day + " " + patch_month);
if (image_alpha > 0)
	rectDraw(temp_x, temp_y + 141 - floor((image_alpha>1?1:image_alpha)*3.5)*2, temp_x + 201, temp_y + 142, c_black);

if (image_alpha > 0.5)
	for(i = 0; i < num_alts; ++i)
	{
	    var draw_color = (i == image_index) ? colourrrrr : c_gray;
	    if (i < 16){
	    	var draw_x = temp_x + 2 + 10 * i;
	    	rectDraw(draw_x, temp_y + 138 - floor((image_alpha>1?1:image_alpha)*3.5)*2, draw_x + 7, temp_y + 135, draw_color);
	    }
	    else{
	    	var draw_x = temp_x + 2 + 10 * (i - 16);
	    	rectDraw(draw_x, temp_y + 143 - floor((image_alpha>1?1:image_alpha)*3.5)*2, draw_x + 7, temp_y + 140, draw_color);
	    }
	}

draw_set_halign(fa_left);
 
// include alt. name
//if (get_player_color(player) == 0){
//	textDraw(temp_x + 2, temp_y + 109 - floor((image_alpha>1?1:image_alpha)*3.5)*2, "fName", colourrrrr, 0, 1000, 1, true, image_alpha, "Change alts in game!");
//	textDraw(temp_x + 2, temp_y + 125 - floor((image_alpha>1?1:image_alpha)*3.5)*2, "fName", colourrrrr, 0, 1000, 1, true, image_alpha, "Hold down and taunt.");
//}
//else{
	//textDraw(temp_x + 2, temp_y + 124, "fName", colourrrrr, 0, 1000, 1, true, 1, "Alt. " + (image_index < 9 ? "0" : "") + string(image_index + 1) + ": " + alt_name[image_index]);
	textDraw(temp_x + 2, temp_y + 123 - floor((image_alpha>1?1:image_alpha)*3.5)*2, "fName", colourrrrr, 0, 1000, 1, true, image_alpha, (image_index < 9 ? "0" : "") + string(image_index + 1) + ": " + alt_name[image_index]);
//}

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