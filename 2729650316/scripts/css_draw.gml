// Lukaru's css_draw

var temp_x = x + 8;
var temp_y = y + 9;
var numAlts = 32;

// patch_ver = string(get_char_info(player, INFO_VER_MAJOR)) + "." + string(get_char_info(player, INFO_VER_MINOR)-1);
image_alpha = max(image_alpha-0.02, 0);

var alt_new = get_player_color(player);
if (!"offset" in self) offset = 0;
else offset/=1.4;
if (!"textLen" in self) textLen = 2;

if (!"currAlt" in self)
{
	//Reset secret alt
	image_alpha = 3;
	currAlt = alt_new;
}
else if (alt_new != currAlt)
{
	image_alpha = 1.5;
	offset = sign(alt_new - currAlt)*16;
	currAlt = alt_new;
}

alt_name[0]  = "Bailey";
alt_name[1]  = "Air";
alt_name[2]  = "Ocean";
alt_name[3]  = "Fiery";
alt_name[4]  = "Forest";
alt_name[5]  = "Magenta";
alt_name[6]  = "Sunlight";
alt_name[7]  = "Night Sky";
alt_name[8]  = "Springatito";
alt_name[9]  = "Akira Taue";
alt_name[10] = "Toshiaki Kawada";
alt_name[11] = "Kenta Kobashi";
alt_name[12] = "Mitsuharu Misawa";
alt_name[13] = "Sting";
alt_name[14] = "Undertaker";
alt_name[15] = "Bret Hart";
alt_name[16] = "Tizoc (D Palette)";
alt_name[17] = "Beowulf";
alt_name[18] = "Goldust";
alt_name[19] = "Terryman";
alt_name[20] = "Chris Hayabusa";
alt_name[21] = "Anglara";
alt_name[22] = "Olympia";
alt_name[23] = "Fernet";
alt_name[24] = "TuQiu";
alt_name[25] = "Incineroar";
alt_name[26] = "Snow";
alt_name[27] = "Cheetara";
alt_name[28] = "She-Hulk";
alt_name[29] = "R. Mika";
alt_name[30] = "Orochi Shermie";
alt_name[31] = "Abyss";
//

draw_set_halign(fa_right);
// textDraw(temp_x + 198, temp_y + 106, "fName", c_aqua, 0, 1000, 1, false, 0.3, "v" + patch_ver);
// textDraw(temp_x + 200, temp_y + 108, "fName", c_fuchsia, 0, 1000, 1, false, 0.3, "v" + patch_ver);

draw_set_halign(fa_left);

//draw_sprite_ext(sprite_get("logo"),currAlt,temp_x + 166,temp_y + 67,1,1,0,c_white,1); // logooooooooooooo

draw_set_halign(fa_left);

gpu_set_blendmode(bm_add);
RectDraw(temp_x, temp_y + 92, temp_x + textLen + min(image_alpha,1) * 16 + 14, temp_y + 110, c_aqua, image_alpha/2);
RectDraw(temp_x + 2, temp_y + 94, temp_x + textLen + min(image_alpha,1) * 16 + 16, temp_y + 112, c_fuchsia, image_alpha/2);
gpu_set_blendmode(bm_normal);

if (currAlt != 0)			textDraw(temp_x + 2 + min(image_alpha,1) * 8, temp_y + 80 + offset, "fName", c_gray, 0, 1000, 1, true, image_alpha, alt_name[currAlt-1]);
textLen =		 (textLen + textDraw(temp_x + 2 + min(image_alpha,1) * 16, temp_y + 96 + offset, "fName", c_white, 0, 1000, 1, true, image_alpha, alt_name[currAlt]))/2;
if (currAlt != numAlts-1)	textDraw(temp_x + 2 + min(image_alpha,1) * 8, temp_y + 112+ offset, "fName", c_gray, 0, 1000, 1, true, image_alpha, alt_name[currAlt+1]);


#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
{
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
}

#define RectDraw(x1, y1, x2, y2, color, alpha)
{
	draw_set_alpha(alpha);
	draw_rectangle_color(x1, y1, x2, y2, color, color, color, color, false);
	draw_set_alpha(1);
}