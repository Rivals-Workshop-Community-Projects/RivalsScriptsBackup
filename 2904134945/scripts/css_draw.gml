var temp_x = x + 8;
var temp_y = y + 9;

if (get_color_profile_slot_r(1, 0) == 119)
{
	sound_play(sound_get("flakeIce"),0,-4,2);
	set_color_profile_slot( 1, 0, 118, 116, 232 );
}

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
	sound_stop(asset_get("mfx_change_color"));
	sound_play(sound_get("snd_squeak"), 0, 0, 2);
	offset = sign(alt_new - currAlt)*16;
	currAlt = alt_new;
}

alt_name = [
"Girl Next Door",
"Blue",
"Orange",
"Green",
"Black",
"Purple",
"Abyss",
"Early Access",
"Transcend",
"Girls...",
"Enby",
"Spectrum",
"Kitsune",
"Lightworld",
"Susie <3",
"Krispy",
"Ralsie <3",
"Fricks",
"Ketsukane",
"Flutt-Girl",
"Ze Tundra",
"Paint",
"Lunar Eclipse",
"Seeing Stars",
"BLM",
"Musician",
"Candy",
"Coffee Cake",
"Aqua Beam",
"Frostburn",
GetCustomAltName()
]
var num_alts = array_length_1d(alt_name);
shader_end();

draw_sprite_ext(sprite_get("charselectOutline"),1,x+14,y+12,2,2,0,make_colour_rgb(outline_colour[0],outline_colour[1],outline_colour[2]),1);

draw_set_halign(fa_left);

gpu_set_blendmode(bm_add);
RectDraw(temp_x, temp_y + 92, temp_x + textLen + min(image_alpha,1) * 16 + 14, temp_y + 110, c_aqua, image_alpha/2);
RectDraw(temp_x + 2, temp_y + 94, temp_x + textLen + min(image_alpha,1) * 16 + 16, temp_y + 112, c_fuchsia, image_alpha/2);
gpu_set_blendmode(bm_normal);

if (currAlt != 0)			TextDraw(temp_x + 2 + min(image_alpha,1) * 8, temp_y + 80 + offset, "fName", c_gray, 0, 1000, 1, true, image_alpha, alt_name[currAlt-1]);
textLen =		 (textLen + TextDraw(temp_x + 2 + min(image_alpha,1) * 16, temp_y + 96 + offset, "fName", c_white, 0, 1000, 1, true, image_alpha, alt_name[currAlt]))/2;
if (currAlt != num_alts-1)	TextDraw(temp_x + 2 + min(image_alpha,1) * 8, temp_y + 112+ offset, "fName", c_gray, 0, 1000, 1, true, image_alpha, alt_name[currAlt+1]);

if ("hue" not in self) hue = 0;
hue+=1;
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
		default: return "Axe Girl";
		case "KARU":
		case "LUKARU": return "Key Frame";
		case "AURORA":
		case "AURO<3": return "Aurora";
		case "HELP":
		case "M30W": return "Nyan";
		case "WEET": return "London";
		case "FUGG": return "Maeday";
		case "VIOLET":
		case "PIKA": return "Violet alt I think";
	}
}