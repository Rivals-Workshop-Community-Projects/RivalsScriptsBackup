var temp_x = x + 8;
var temp_y = y + 9;

if (get_color_profile_slot_r(1, 0) == 168)
{
	sound_play(sound_get("dspec"),0,-4,2);
	set_color_profile_slot( 1, 0, 167, 208, 232 );
}

//patch_ver = string(get_char_info(player, INFO_VER_MAJOR)) + "." + string(max(get_char_info(player, INFO_VER_MINOR), 0));
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
	//sound_stop(asset_get("mfx_change_color"));
	//sound_play(sound_get("sfx_alt"), 0, 0, 2);
	offset = sign(alt_new - currAlt)*16;
	currAlt = alt_new;
}

alt_name[0]  = "The Star Fox";
alt_name[1]  = "Blue";
alt_name[2]  = "Orange";
alt_name[3]  = "Green";
alt_name[4]  = "Black";
alt_name[5]  = "Purple";
alt_name[6]  = "Kitsune";
alt_name[7]  = "Trancend";
alt_name[8]  = "Paint";
alt_name[9]  = "Roaring Beast";
alt_name[10]  = "Protean Aura";
alt_name[11]  = "Thunderclap";
alt_name[12]  = "Lonely Prince";
alt_name[13]  = "Ice Bnuuy";
alt_name[14]  = "Miles per hour";
alt_name[15]  = "Nova Visionary";
alt_name[16]  = "Flickering Spectre";
alt_name[17]  = "Illusion";
alt_name[18]  = "Spectrum";
alt_name[19]  = "Inkbrush";
alt_name[20]  = "No Swiping";
alt_name[21]  = "Wolf Star";
alt_name[22]  = "DigiFurry";
alt_name[23]  = "Content Master";
alt_name[24]  = "Henshin Hero";
alt_name[25]  = "Ace Pilot";
alt_name[26]  = "Sapphire Vixen";
alt_name[27]  = "Sylvan Watcher";
alt_name[28]  = "Avatar's Bison";
alt_name[29]  = "Champion";
alt_name[30]  = "Abyss";
alt_name[31]  = GetCustomAltName();
var num_alts = array_length_1d(alt_name);
shader_end();

//draw_sprite_ext(sprite_get("charselect"),1,x+8,y+8,2,2,0,make_colour_rgb(outline_colour[0],outline_colour[1],outline_colour[2]),1);

//draw_set_halign(fa_right);
//var verX = 200;
//var verY = 40;
//TextDraw(temp_x + verX,   temp_y + verY,   "fName", c_aqua, 0, 1000, 1, false, 0.3, "v" + patch_ver);
//TextDraw(temp_x + verX+2, temp_y + verY+2, "fName", c_fuchsia, 0, 1000, 1, false, 0.3, "v" + patch_ver);

//draw_sprite_ext(sprite_get("logo"),currAlt,temp_x + 166,temp_y + 91,2,2,0,c_white,1);

draw_set_halign(fa_left);

gpu_set_blendmode(bm_add);
RectDraw(temp_x, temp_y + 92, temp_x + textLen + min(image_alpha,1) * 16 + 14, temp_y + 110, c_aqua, image_alpha/2);
RectDraw(temp_x + 2, temp_y + 94, temp_x + textLen + min(image_alpha,1) * 16 + 16, temp_y + 112, c_fuchsia, image_alpha/2);
gpu_set_blendmode(bm_normal);

if (currAlt != 0)			TextDraw(temp_x + 2 + min(image_alpha,1) * 8, temp_y + 80 + offset, "fName", c_gray, 0, 1000, 1, true, image_alpha, alt_name[currAlt-1]);
textLen =		 (textLen + TextDraw(temp_x + 2 + min(image_alpha,1) * 16, temp_y + 96 + offset, "fName", c_white, 0, 1000, 1, true, image_alpha, alt_name[currAlt]))/2;
if (currAlt != num_alts-1)	TextDraw(temp_x + 2 + min(image_alpha,1) * 8, temp_y + 112+ offset, "fName", c_gray, 0, 1000, 1, true, image_alpha, alt_name[currAlt+1]);

if ("hue" not in self) hue = 0;
++hue;
hue%=255;
init_shader();

#define TextDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
{
	draw_set_font(asset_get(font));
	if (alpha > 0)
	{
		if (outline) for (i = -1; i < 2; ++i) for (j = -1; j < 2; ++j) 
			draw_text_ext_transformed_color(x + i * 2, y + j * 2, string, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
		draw_text_ext_transformed_color(x, y, string, lineb, linew, scale, scale, 0, color, color, color, color, alpha);
	}
	return string_width_ext(string, lineb, linew);
}

#define RectDraw(x1, y1, x2, y2, color, alpha)
{
	draw_set_alpha(alpha);
	draw_rectangle_color(x1, y1, x2, y2, color, color, color, color, false);
	draw_set_alpha(1);
}

#define GetCustomAltName()
{
	user_event(0);
	switch (string_upper(get_player_name(player)))
	{
		default: return "Riptide";
		case "KARU":
		case "LUKARU": return "Sky High";
		case "AURORA":
		case "AURO<3": return "Fel Spark";
	}
}