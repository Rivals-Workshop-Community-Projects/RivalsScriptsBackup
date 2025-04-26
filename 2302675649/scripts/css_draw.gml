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
	sound_stop(asset_get("mfx_change_color"));
	sound_play(sound_get("select"), 0, 0, 2);
	offset = sign(alt_new - currAlt)*16;
	currAlt = alt_new;
}

alt_name = [
	isFurry?"The Lost Miko":"The Lone Ronin",
	"Transcend",
	"Kitsune of Light",
	"Vaporwave",
	"Abyss",
	"Early Access",
	"Sawtooth",
	"15: The Dragon",
	"Zero",
	"B4DA55 F42069",
	"Disco Bird",
	"The Samurai",
	"Bravo",
	"My day be so fine",
	"Unbreakable Diamond",
	"Mallow Sky",
	"Saikyo Jyanshi",
	"BLM",
	"Kizuna",
	"Genesis",
	"Laurie D. Bunnykins",
	"Gold",
	"Spectrum",
	"Swordfighter",
	"Slayer of Demons",
	"Thunderclap Flash",
	"Paint",
	"Inkbrush",
	"Champion",
	"Enby",
	"Ace",
	GetCustomAltName()
]
var num_alts = array_length_1d(alt_name);
shader_end();

draw_sprite_ext(sprite_get("charselectOutline"),isFurry,x+8,y+8,2,2,0,make_colour_rgb(outline_colour[0],outline_colour[1],outline_colour[2]),1);

draw_sprite_ext(sprite_get("logo"),currAlt,temp_x + 166,temp_y + 91,2,2,0,c_white,1);

if ("syncUID" in id && syncUID == 25005 && instance_exists(cursor_id))
{
	draw_sprite_ext(sprite_get("mioButton"), buttonInfo.hover?1+menu_a_down:0, temp_x + buttonInfo.x, temp_y + buttonInfo.y, 2, 2, 0, c_white, 1);
	draw_sprite_ext(sprite_get("mioIcon"), isFurry, temp_x + buttonInfo.x + 6, temp_y + buttonInfo.y + 4, 2, 2, 0, c_white, 1);
}

draw_set_halign(fa_left);

gpu_set_blendmode(bm_add);
RectDraw(temp_x, temp_y + 92, temp_x + textLen + min(image_alpha,1) * 16 + 14, temp_y + 110, c_aqua, image_alpha/2);
RectDraw(temp_x + 2, temp_y + 94, temp_x + textLen + min(image_alpha,1) * 16 + 16, temp_y + 112, c_fuchsia, image_alpha/2);
gpu_set_blendmode(bm_normal);

if (currAlt != 0)			textDraw(temp_x + 2 + min(image_alpha,1) * 8, temp_y + 80 + offset, "fName", c_gray, 0, 1000, 1, true, image_alpha, alt_name[currAlt-1]);
textLen =		 (textLen + textDraw(temp_x + 2 + min(image_alpha,1) * 16, temp_y + 96 + offset, "fName", c_white, 0, 1000, 1, true, image_alpha, alt_name[currAlt]))/2;
if (currAlt != num_alts-1)	textDraw(temp_x + 2 + min(image_alpha,1) * 8, temp_y + 112+ offset, "fName", c_gray, 0, 1000, 1, true, image_alpha, alt_name[currAlt+1]);

if ("hue" not in self) hue = 0;
hue+=3;
hue%=255;
init_shader();

#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)
{
	draw_set_font(asset_get(font));
	if (outline) for (i = -1; i < 2; i++) for (j = -1; j < 2; j++) if (alpha > 0)
		draw_text_ext_transformed_color(x + i * 2, y + j * 2, string, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
	if (alpha > 0)
		draw_text_ext_transformed_color(x, y, string, lineb, linew, scale, scale, 0, color, color, color, color, alpha);
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
		default:
			if (string_upper(get_player_name(player)) == "HALLO"+chr(12354)) return"redQuote";
			else return "Riptide";
		case "KARU":
		case "LUKARU":
		case "AURORA":
		case "AURO<3": return "Aurora";
		case "CHISAN":
		case "UTA": return "Endless Now";
		case "BLUE": return "Blue Dragon";
	}
}