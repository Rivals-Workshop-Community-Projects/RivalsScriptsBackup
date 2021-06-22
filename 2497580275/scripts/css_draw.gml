// Lukaru's css_draw

var temp_x = x + 8;
var temp_y = y + 9;
var numAlts = 32;

patch_ver = string(get_char_info(player, INFO_VER_MAJOR)) + "." + string(get_char_info(player, INFO_VER_MINOR)-1);
image_alpha = max(image_alpha-0.02, 0);

var alt_new = get_player_color(player);
if (!"offset" in self) offset = 0;
else offset/=1.4;
if (!"textLen" in self) textLen = 2;

if (!"currAlt" in self)
{
	image_alpha = 3;
	currAlt = alt_new;
}
else if (alt_new != currAlt)
{
	image_alpha = 1.5;
	offset = sign(alt_new - currAlt)*16;
	currAlt = alt_new;
}

alt_name[0]  = "Cult of the Parasite";
alt_name[1]  = "Cult of the Lost Angels";
alt_name[2]  = "Cult of the Inverse";
alt_name[3]  = "Cult of the Black Mage";
alt_name[4]  = "Cult of the KOF";
alt_name[5]  = "Cult of the Ghost";
alt_name[6]  = "Cult of the Sapphire";
alt_name[7]  = "Cult of Lost Children";
alt_name[8]  = "Cult of the Heroes";
alt_name[9]  = "Cult of the Grayskull";
alt_name[10] = "Cult of the Chum";
alt_name[11] = "Cult of the Guilty";
alt_name[12] = "Cult of Refrigeration";
alt_name[13] = "Cult of Perfection";
alt_name[14] = "Cult of the Blaze";
alt_name[15] = "Cult of Transcendence";
alt_name[16] = "Cult of Inner";
alt_name[17] = "Cult of the Scribes";
alt_name[18] = "Cult of Rakdos";
alt_name[19] = "Cult of the Sus";
alt_name[20] = "Cult of Illusions";
alt_name[21] = "Cult of Spores";
alt_name[22] = "Cult of the Gungeon";
alt_name[23] = "Cult of The Fool";
alt_name[24] = "Cult of the White Mage";
alt_name[25] = "Cult of the Undivided";
alt_name[26] = "Cult of the Dreamer";
alt_name[27] = "Cult of the Demon";
alt_name[28] = "Cult of the Blueberry";
alt_name[29] = "Cult of the Cards";
alt_name[30] = "Cult of the Doom";
alt_name[31] = "Cult of the Darkstalker";

draw_set_halign(fa_right);
textDraw(temp_x + 198, temp_y + 106, "fName", c_aqua, 0, 1000, 1, false, 0.3, "v" + patch_ver);
textDraw(temp_x + 200, temp_y + 108, "fName", c_fuchsia, 0, 1000, 1, false, 0.3, "v" + patch_ver);

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