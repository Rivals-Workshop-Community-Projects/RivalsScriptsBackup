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
	case 1: t = "L.I.A.U.A."; break;
	case 2: t = "Cecropia"; break;
	case 3: t = "Lucky"; break;
	case 4: t = "Ashen"; break;
	case 5: t = "Trans Rights"; break;
	case 6: t = "NB Rights"; break;
	case 7: t = "Ace Rights"; break;
	case 8: t = "S'mores"; break;
	case 9: t = "Holiday"; break;
	case 10: t = "Neon"; break;
	case 11: t = "Kaiju"; break;
	case 12: t = "Rosy Maple"; break;
	case 13: t = "Tournament"; break;
	case 14: t = "Luna"; break;
	case 15: t = "Seafoam"; break;
}
//t += " "+string(get_char_info(player, INFO_VER_MAJOR))+"."+string(get_char_info(player, INFO_VER_MINOR))
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