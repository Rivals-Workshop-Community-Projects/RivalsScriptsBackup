// Lukaru's css draw

var temp_x = x + 8;
var temp_y = y + 9;

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
var num_alts = array_length_1d(alt_name);
shader_end();

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
	user_event(1);
	switch (string_upper(get_player_name(player)))
	{
		default: return "Gold";
		case "KARU":
		case "LUKARU": return "Input Delay";
		case "AURO<3":
		case "AURORA": return "Aurora";
		case "TOM":
		case "TOMA": return "Toma_Strims";
		case "SEER":
		case "ASTUTO": return "Sly Swindler";
		case "TAPPY": return "Blue Griff";
	}
}