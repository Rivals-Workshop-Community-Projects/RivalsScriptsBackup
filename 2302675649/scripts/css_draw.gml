if ("syncUID" not in id || syncUID != 25005 || !instance_exists(cursor_id)) exit;
var temp_x = x + 8;
var temp_y = y + 9;

//patch_ver = string(get_char_info(player, INFO_VER_MAJOR)) + "." + string(get_char_info(player, INFO_VER_MINOR));
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

alt_name = 0;
alt_name[0]  = isFurry?"The Lost Miko":"The Lone Ronin";
alt_name[1]  = "Transcend";
alt_name[2]  = "Kitsune of Light";
alt_name[3]  = "Vaporwave";
alt_name[4]  = "Abyss";
alt_name[5]  = "Early Access";
alt_name[6]  = "Sawtooth";
alt_name[7]  = "15: The Dragon";
alt_name[8]  = "Zero";
alt_name[9]  = "B4DA55 F42069";
alt_name[10] = "Disco Bird";
alt_name[11] = "The Samurai";
alt_name[12] = "Bravo";
alt_name[13] = "My day be so fine";
alt_name[14] = "Unbreakable Diamond";
alt_name[15] = "Mallow Sky";
alt_name[16] = "Saikyo Jyanshi";
alt_name[17] = "BLM";
alt_name[18] = "Metal";
alt_name[19] = "Genesis";
alt_name[20] = "Laurie D. Bunnykins";
alt_name[21] = "Gold";
alt_name[22] = "Spectrum";
alt_name[23] = "Swordfighter";
alt_name[24] = "Slayer of Demons";
alt_name[25] = "Thunderclap Flash";
alt_name[26] = "Paint";
alt_name[27] = "Voidfox";
alt_name[28] = "Champion";
alt_name[29] = "Enby";
alt_name[30] = "Ace";
var num_alts = array_length_1d(alt_name);
shader_end();

draw_sprite_ext(sprite_get("charselectOutline"),get_synced_var(player),x+8,y+8,2,2,0,make_colour_rgb(outline_colour[0],outline_colour[1],outline_colour[2]),1);

//draw_set_halign(fa_right);
//textDraw(temp_x + 198, temp_y + 70,	"fName", c_aqua, 0, 1000, 1, false, 0.3, "v" + patch_ver);
//textDraw(temp_x + 200, temp_y + 72, "fName", c_fuchsia, 0, 1000, 1, false, 0.3, "v" + patch_ver);

draw_sprite_ext(sprite_get("logo"),currAlt,temp_x + 166,temp_y + 91,2,2,0,c_white,1);

draw_sprite_ext(sprite_get("mioButton"), buttonInfo.hover?1+menu_a_down:0, temp_x + buttonInfo.x, temp_y + buttonInfo.y, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("mioIcon"), isFurry, temp_x + buttonInfo.x + 6, temp_y + buttonInfo.y + 4, 2, 2, 0, c_white, 1);

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