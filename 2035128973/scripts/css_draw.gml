var temp_x = x + 8;
var temp_y = y + 9;

patch_ver = string(get_char_info(player, INFO_VER_MAJOR)) + "." + string(max(get_char_info(player, INFO_VER_MINOR), 0));
image_alpha = max(image_alpha-0.02, 0);

var alt_new = get_player_color(player);
if (!"offset" in self || !"eyeShine" in self)
{
	offset = 0;
	eyeShine = 0;
}
else
{
	offset/=1.4;
	++eyeShine;
}
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
	sound_play(sound_get("sfx_alt"), 0, 0, 2);
	offset = sign(alt_new - currAlt)*16;
	currAlt = alt_new;
}

alt_name = 0;
if (get_synced_var(player) == 15005)
{
	alt_name = [
		"100% Accurate",
		"Shiny",
		"Purple",
		"Cyan",
		"Grey",
		"Teal",
		"Blue",
		"Dark Blue",
		"Green",
		"Pink",
		"Orange",
		"Spectrum",
		"BadassF42069",
		"Flake",
		"Hikaru",
		"Lorekeeper",
		"CMY",
		"RGB",
		"Snowblind",
		"Drunken",
		".net",
		"Lemongrass",
		"Melon",
		"Transcend",
		"Pan",
		"Enby",
		"Agender",
		"Candy",
		"God of Death",
		"Coffee Cake",
		"Seeing Stars"
	];
}
else
{
	alt_name = [
		"The Aura Guardian",
		"Blue",
		"Red",
		"Green",
		"Gray",
		"Purple",
		"Brawl",
		"Shiny",
		"Transcend",
		"Abyss",
		"Early Access",
		"Spectrum",
		"BadassF42069",
		"Snowblind Sage",
		"Kitsune",
		"Lorekeeper",
		"Flickering Spectre",
		"Star Fox",
		"Snowblind",
		"Drunken",
		".net",
		"Lemongrass",
		"Amethyst Fist",
		"Logical Jetstream",
		"The Lightning Gladiator",
		"Photon Edge",
		"Nova Visionary",
		"Paint",
		"God of Death",
		"Mewmew",
		GetCustomAltName()
	];
}

var num_alts = array_length_1d(alt_name);

if (get_synced_var(player) != 15005 && max((eyeShine/6)-6, 0) < 9) draw_sprite_ext(sprite_get("eyeshine"),max((eyeShine/6)-6, 0),temp_x,temp_y-1,2,2,0,c_white,1);
shader_end();

if ("syncUID" in id && syncUID == 15005 && instance_exists(cursor_id) && player != 0)
{
	draw_sprite_ext(sprite_get("accButton"), buttonInfo.hover?1+menu_a_down:0, temp_x + buttonInfo.x, temp_y + buttonInfo.y, 2, 2, 0, c_white, 1);
	draw_sprite_ext(sprite_get("accIcon"), isAccurate, temp_x + buttonInfo.x + 6, temp_y + buttonInfo.y + 4, 2, 2, 0, c_white, 1);
}

draw_set_halign(fa_left);

gpu_set_blendmode(bm_add);
RectDraw(temp_x, temp_y + 92, temp_x + textLen + min(image_alpha,1) * 16 + 14, temp_y + 110, c_aqua, image_alpha/2);
RectDraw(temp_x + 2, temp_y + 94, temp_x + textLen + min(image_alpha,1) * 16 + 16, temp_y + 112, c_fuchsia, image_alpha/2);
gpu_set_blendmode(bm_normal);

alt_new = clamp(alt_new, 0, num_alts-1);
if (alt_new != 0)			textDraw(temp_x + 2 + min(image_alpha,1) * 8, temp_y + 80 + offset, "fName", c_gray, 0, 1000, 1, true, image_alpha, alt_name[alt_new-1]);
textLen =		 (textLen + textDraw(temp_x + 2 + min(image_alpha,1) * 16, temp_y + 96 + offset, "fName", c_white, 0, 1000, 1, true, image_alpha, alt_name[alt_new]))/2;
if (alt_new != num_alts-1)	textDraw(temp_x + 2 + min(image_alpha,1) * 8, temp_y + 112+ offset, "fName", c_gray, 0, 1000, 1, true, image_alpha, alt_name[alt_new+1]);

if ("hue" not in self) hue = 0;
hue+=1;
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
	user_event(3);
	switch (string_upper(get_player_name(player)))
	{
		default: return "Bnuuy";
		case "KARU":
		case "LUKARU": return "Input Delay";
		case "AURORA":
		case "AURO<3": return "Aurora";
		case "NIGHT": return "Surprising!";
	}
}