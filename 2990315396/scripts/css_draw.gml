var temp_x = x + 8;
var temp_y = y + 15;
var numAlts = 13;

//patch_ver = string(get_char_info(player, INFO_VER_MAJOR)) + "." + string(get_char_info(player, INFO_VER_MINOR)-1); 
patch_ver = string(get_char_info(player, INFO_VER_MAJOR)) + "." + string(get_char_info(player, INFO_VER_MINOR)); 
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

alt_name[0]		= "The Noise";
alt_name[1]		= "The Doise";
alt_name[2]		= "Unhelpful Companion";
alt_name[3]		= "Avoid The Noise";
alt_name[4]		= "Crisp Chef Competitor";
alt_name[5]		= "Baked Blue Brute";
alt_name[6]		= "Its Happy Hour!";
alt_name[7]		= "Green Missile";
alt_name[8]		= "Purple Projectile";
alt_name[9]		= "Oldest Noise";
alt_name[10]	= "Transcendence";
alt_name[11]	= "Man";
alt_name[12]	= "Sweet and Spicy";

draw_set_halign(fa_right);
textDraw(temp_x + 190, temp_y + 24, "fName", c_aqua, 0, 1000, 1, false, 0.3, "v" + patch_ver);
textDraw(temp_x + 192, temp_y + 26, "fName", c_fuchsia, 0, 1000, 1, false, 0.3, "v" + patch_ver);

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