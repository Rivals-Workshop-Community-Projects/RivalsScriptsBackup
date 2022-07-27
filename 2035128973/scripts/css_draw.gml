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
if (get_synced_var(player))
{
	alt_name[0]  = "100% Accurate";
	alt_name[1]  = "Shiny";
	alt_name[2]  = "Purple";
	alt_name[3]  = "Cyan";
	alt_name[4]  = "Grey";
	alt_name[5]  = "Teal";
	alt_name[6]  = "Blue";
	alt_name[7]  = "Dark Blue";
	alt_name[8]  = "Green";
	alt_name[9]  = "Pink";
	alt_name[10]  = "Orange";
	alt_name[11]  = "Hikaru";
	alt_name[12]  = "Flake";
	alt_name[13]  = "Melon";
	alt_name[14]  = "CMY";
	alt_name[15]  = "RGB";
	alt_name[16]  = "Transcend";
	alt_name[17]  = "Pan";
	alt_name[18]  = "Enby";
	alt_name[19]  = "Agender";
}
else
{
	alt_name[0]  = "The Aura Guardian";
	alt_name[1]  = "Blue";
	alt_name[2]  = "Red";
	alt_name[3]  = "Green";
	alt_name[4]  = "Gray";
	alt_name[5]  = "Purple";
	alt_name[6]  = "Brawl";
	alt_name[7]  = "Shiny";
	alt_name[8]  = "Transcend";
	alt_name[9]  = "Abyss";
	alt_name[10]  = "Early Access";
	alt_name[11]  = "Spectrum";
	alt_name[12]  = "BadassF42069";
	alt_name[13]  = "Snowblind Sage";
	alt_name[14]  = "Kitsune";
	alt_name[15]  = "Lorekeeper";
	alt_name[16]  = "Flickering Spectre";
	alt_name[17]  = "Star Fox";
	alt_name[18]  = "Snowblind";
	alt_name[19]  = "Drunken";
	alt_name[20]  = ".net";
	alt_name[21]  = "Lemongrass";
	alt_name[22]  = "Amethyst Fist";
	alt_name[23]  = "Logical Jetstream";
	alt_name[24]  = "The Lightning Gladiator";
	alt_name[25]  = "Photon Edge";
	alt_name[26]  = "Nova Visionary";
	alt_name[27]  = "Paint";
	alt_name[28]  = "God of Death";
	alt_name[29]  = "Mewmew";
	alt_name[30]  = "Bnuuy";
}

var num_alts = array_length_1d(alt_name);

if (!get_synced_var(player) && max((eyeShine/6)-6, 0) < 9) draw_sprite_ext(sprite_get("eyeshine"),max((eyeShine/6)-6, 0),temp_x,temp_y-1,2,2,0,c_white,1);
shader_end();

//draw_sprite_ext(sprite_get("charselect"),1,x+8,y+8,2,2,0,make_colour_rgb(outline_colour[0],outline_colour[1],outline_colour[2]),1);

//draw_set_halign(fa_right);
//var verX = 184;
//var verY = 76;
//textDraw(temp_x + verX,   temp_y + verY,   "fName", c_aqua, 0, 1000, 1, false, 0.3, "v" + patch_ver);
//textDraw(temp_x + verX+2, temp_y + verY+2, "fName", c_fuchsia, 0, 1000, 1, false, 0.3, "v" + patch_ver);

//draw_sprite_ext(sprite_get("logo"),currAlt,temp_x + 166,temp_y + 91,2,2,0,c_white,1);

if ("syncUID" in id && syncUID == 15005 && instance_exists(cursor_id))
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