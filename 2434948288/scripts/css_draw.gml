// Lukaru's css_draw
var temp_x = x + 8;
var temp_y = y + 9;

if (get_color_profile_slot_r(1, 0) == 78)
{
    sound_play(sound_get("guitar"),0,-4,2);
	set_color_profile_slot( 1, 0, 79, 101, 189 );
}

//patch_ver = string(get_char_info(player, INFO_VER_MAJOR)) + "." + string(max(get_char_info(player, INFO_VER_MINOR)-1, 0));
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

alt_name = 0;
alt_name[0]  = "The Shadow Hatter";
alt_name[1]  = "Blue";
alt_name[2]  = "Orange";
alt_name[3]  = "Green";
alt_name[4]  = "Grey";
alt_name[5]  = "Purple";
alt_name[6]  = "Transcend";
alt_name[7]  = "Suit";
alt_name[8]  = "Playful";
alt_name[9]  = "Deadly";
alt_name[10]  = "Pop";
alt_name[11]  = "Abyss";
alt_name[12]  = "Early Access";
alt_name[13]  = "Dimentio";
alt_name[14]  = "Jevil";
alt_name[15]  = "Ballin Wonderwall";
alt_name[16]  = "Sleek";
alt_name[17]  = "G. Wheeze";
alt_name[18]  = "Spectrum";
alt_name[19]  = "Spongebob";
alt_name[20]  = "Snowblind";
alt_name[21]  = "Greed";
var numAlts = array_length_1d(alt_name);
shader_end();

draw_set_halign(fa_right);
//textDraw(temp_x + 198, temp_y + 32, "fName", c_aqua, 0, 1000, 1, false, 0.3, "v" + patch_ver);
//textDraw(temp_x + 200, temp_y + 34, "fName", c_fuchsia, 0, 1000, 1, false, 0.3, "v" + patch_ver);

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