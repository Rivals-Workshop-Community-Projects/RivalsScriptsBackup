//css_draw

var alt_cur = get_player_color(player);
var is_online = get_player_hud_color(player) == $64e542;
if (alt_cur == 5)		draw_sprite_ext(sprite_get("css_outline_mauve"),1,x+8,y+8,2,2,0,-1,1);
shader_end();
// The number of alt costumes your char has, up to 32.
num_alts = 23;

// Whether or not to display a name for each alt.
use_alt_names = true;

// Which color slot in your char's colors.gml to use for certain UI elements.
// Type "noone" to make it always white.
// (you can also change it to different values depending on the alt, by using
// get_player_color(player))
alt_ui_recolor = 1;

// The list of names for the alts, if enabled.
alt_names = [
	"Arizona",
	"Minnesota",
	"Concept-Art Cow",
	"Dakota",
	"Holstein",
	"Mauve",
	"GRL2D",
	"Leather Shoes",
	"Jersey",
	"Nebraska",
	"Punk Funk Bunk",
	"Dangerously Cheesy",
	"How Now",
	"Koi Kow",
	"Gold and White",
	"Alaska",
	"Moonlit Ace",
	"Green Tea",
	"Kiwi-Strawberry",
	"Lemon",
	"Cowmooflage",
	"Effervescent Kicks",
	"Dead Meat",
	];

// Alt costume

rectDraw(x + 10, y + 10, 202, 6, c_black);

var col = alt_ui_recolor == noone ? c_white : make_color_rgb(get_color_profile_slot_r(alt_cur, alt_ui_recolor), get_color_profile_slot_g(alt_cur, alt_ui_recolor), get_color_profile_slot_b(alt_cur, alt_ui_recolor));

// var offset = (alt_cur > 15) * 16;

// for (i = 0; i < (num_alts - offset) && i < 16; i++){
// 	var draw_color = (i == alt_cur - offset) ? col : c_gray * 0.5;
// 	var draw_x = x + 78 + 8 * i;
// 	rectDraw(draw_x, y + 10, 6, 4, draw_color);
// }

var thin = num_alts > 16;

for (i = 0; i < num_alts; i++){
	var draw_color = (i == alt_cur) ? col : c_ltgray * 0.5;
	var draw_x = x + 78 + (thin ? 4 : 8) * i;
	rectDraw(draw_x, y + 10, thin ? 2 : 6, 4, draw_color);
}

var txt = "#" + string(alt_cur + 1);

rectDraw(x + 76, y + 15, 42, 21, c_black);

textDraw(x + 82, y + 19, "fName", col, 20, 1000, fa_left, 1, false, 1, txt, false);

if use_alt_names{
	if alt_cur < array_length(alt_names) && alt_names[alt_cur] != ""{
		rectDraw(x + 10, y + 142 - is_online * 12, string_width_ext(alt_names[alt_cur], 1000, 200), 10, c_black);
		textDraw(x + 10, y + 141 - is_online * 12, "fName", col, 1000, 200, fa_left, 1, true, 1, alt_names[alt_cur], false);
	}
}

if (get_color_profile_slot_r(0, 0) == 160)
{
		set_color_profile_slot( 0, 0, 161, 76, 43 );
}

#define rectDraw(x1, y1, width, height, color)

draw_rectangle_color(x1, y1, x1 + width - 1, y1 + height - 1, color, color, color, color, false);

#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, get_size)

x1 = round(x1);
y1 = round(y1);

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline {
	for (i = -1; i < 2; i++) {
		for (j = -1; j < 2; j++) {
			draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
		}
	}
}

if alpha > 0.01 draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

if get_size phone.last_text_size = [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];