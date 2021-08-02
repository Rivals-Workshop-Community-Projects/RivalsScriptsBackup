//got_hit - called when you're hit by a hitbox

image_speed = 0;
image_alpha = max(image_alpha-0.01, 0)
//x -= 1
var xx, yy;
xx = x+19*2
yy = y+68*2
var t = get_player_color(player);
if t != image_index image_alpha = 1.5;

image_index = t;

switch(t) {
	default: case 0: t = "Default"; break;
	case 1: t = "Violet Coprinus"; break;
	case 2: t = "Fly Agaric"; break;
	case 3: t = "Vineshroom"; break;
	case 4: t = "Truffle"; break;
	case 5: t = "Inky Cap"; break;
	case 6: t = "Bleeding Tooth"; break;
	case 7: t = "Ma Pignon"; break;
	case 8: t = "1-Up"; break;
	case 9: t = "Morel"; break;
	case 10: t = "Jellyshroom"; break;
	case 11: t = "Chantarelle"; break;
	case 12: t = "Ambloom"; break;
	case 13: t = "Outdated"; break;
	case 14: t = "Shii"; break;
	case 15: t = "Alien"; break;
	case 16: t = "Snakebandit"; break;
}
if image_alpha > 0 {
draw_set_font(1)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_sprite_ext(sprite_get("paintbrush"), 0, x+12, y+124, 1, 1, 0, c_white, image_alpha)
draw_text_color(xx-2, yy, t, c_black, c_black, c_black, c_black, image_alpha)
draw_text_color(xx+2, yy, t, c_black, c_black, c_black, c_black, image_alpha)
draw_text_color(xx, yy-2, t, c_black, c_black, c_black, c_black, image_alpha)
draw_text_color(xx, yy+2, t, c_black, c_black, c_black, c_black, image_alpha)
draw_text_color(xx+2, yy-2, t, c_black, c_black, c_black, c_black, image_alpha)
draw_text_color(xx+2, yy+2, t, c_black, c_black, c_black, c_black, image_alpha)
draw_text_color(xx-2, yy-2, t, c_black, c_black, c_black, c_black, image_alpha)
draw_text_color(xx-2, yy+2, t, c_black, c_black, c_black, c_black, image_alpha)
draw_text_color(xx, yy, t, c_white, c_white, c_white, c_white, image_alpha)
}
//sound_play(asset_get("sfx_birdflap"))