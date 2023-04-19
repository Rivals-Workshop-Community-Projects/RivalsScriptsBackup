if (get_color_profile_slot_r(1, 0) == 213) {
	print("woa")
    sound_play(sound_get("badger_noises2"));
	set_color_profile_slot( 1, 0, 214, 183, 120 );
}


var temp_x = x + 8;
var temp_y = y + 9;

//patch_ver = "2.0";
// patch_ver = string(get_char_info(player, INFO_VER_MAJOR)) + "." + string(get_char_info(player, INFO_VER_MINOR));
//patch_day = "12";
//patch_month = "JULY";


if get_player_color(player) == 17{
	draw_sprite(sprite_get("css_icons"), 3, temp_x+164, temp_y+70)
}
if get_player_color(player) == 18{
	draw_sprite(sprite_get("css_icons"), 2, temp_x+164, temp_y+70)
}
if get_player_color(player) == 19 or get_player_color(player) == 20{
	draw_sprite(sprite_get("css_icons"), 1, temp_x+164, temp_y+70)
}
if get_player_color(player) == 25{
	draw_sprite(sprite_get("css_icons"), 4, temp_x+164, temp_y+70)
}

	

var num_alts = 27;
var alt_new = get_player_color(player);
image_alpha = max(image_alpha-0.02, 0);
if ((alt_new != 15 && alt_new != image_index - 1) || (alt_new == 15 && (image_index == 15 || image_index == 1))) // image_index is global
	image_alpha = 1.5;
image_index = alt_new;
var alt_cur = get_player_color(player);

alt_name[0]  = "Default";
alt_name[1]  = "Blue";
alt_name[2]  = "Red";
alt_name[3]  = "Green";
alt_name[4]  = "Black";
alt_name[5]  = "Pink";
alt_name[6]  = "Blue Badger";
alt_name[7]  = "Strange Rope";
alt_name[8]  = "River Guardian";
alt_name[9]  = "Badger Lives";
alt_name[10] = "Gay Cat";
alt_name[11] = "Keys";
alt_name[12] = "Raccoonus";
alt_name[13] = "Abyss";
alt_name[14] = "NATUKATS";
alt_name[15] = "Cheetah";
alt_name[16]  = "Cougar";
alt_name[17]  = "Champion Elkiies";
alt_name[18] = "Charitable Sakamoto3";
alt_name[19] = "Charitable Toma";
alt_name[20] = "Charitable Soap";
alt_name[21]  = "ñ";
alt_name[22]  = "In A Car";
alt_name[23]  = "Harmonic";
alt_name[24]  = "Badger Rights";
alt_name[25] = "Heatwave";
alt_name[26] = "Ding Dong";
// alt_name[22]  = "Slade";
// alt_name[23]  = "Slashe";
// alt_name[24]  = "Bird Guy";
// alt_name[25]  = "Fernet";
// alt_name[26] = "Anglara";
// alt_name[27] = "Lukastar";
// alt_name[28] = "Exetior";
// alt_name[29] = "BLM";
// // alt_name[30] = "Merica";
// // alt_name[31] = "Riva";

draw_set_halign(fa_left);

//textDraw(temp_x + 2, temp_y + 30, "medFont", c_white, 0, 1000, 1, true, 1, "VER. " + patch_ver);
// textDraw(temp_x + 16, temp_y + 72 , "fName", c_white, 0, 1000, 1, false, 0.3, "v" + patch_ver);

//textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);

//rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);
if (image_alpha > 0)
	rectDraw(temp_x, temp_y + 141 - floor((image_alpha>1?1:image_alpha)*3.5)*2, temp_x + 201, temp_y + 142, c_black);

if (image_alpha > 0.5)
	for(i = 0; i < num_alts; ++i)
	{
	    var draw_color = (i == image_index) ? c_white : c_gray;
	    var draw_x = temp_x + 2 + 5 * i;
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