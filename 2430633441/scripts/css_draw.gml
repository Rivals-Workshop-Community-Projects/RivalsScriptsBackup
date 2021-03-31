//got_hit - called when you're hit by a hitbox

//user_event(5);

//draw_sprite(sprite_get("charselectbg"),0,x+8,y+8)

image_speed = 0;
image_alpha = max(image_alpha-0.01, 0)
//x -= 1
var xx, yy;
xx = x+19*2
yy = y+79*2-1
var t = get_player_color(player);
if t != image_index image_alpha = 1.5;

image_index = t;

switch(t) {
	default: case 0: t = "Synne (Default)"; break;
	case 1: t = "L.I.A.U.A."; break;
	case 2: t = "X"; break;
	case 3: t = "Express"; break;
	case 4: t = "Black Tie"; break;
	case 5: t = "Bloom Sickle"; break;
	case 6: t = "Curiosity"; break;
	case 7: t = "Seasonal"; switch(get_match_setting(SET_SEASON)) {
		case 1: t = "Seasonal (Valentine's)"; break;
		case 2: t = "Seasonal (Summer)"; break;
		case 3: t = "Seasonal (Halloween)"; break;
		case 4: t = "Seasonal (Holiday)"; break;
	}
	break;
	case 8: t = "Ventures"; break;
	case 9: t = "Bounty Hunter"; break;
	case 10: t = "Dolphin"; break;
	case 11: t = "Nostalgia"; break;
	case 12: t = "Princess"; break;
	case 13: t = "Ark"; break;
	case 14: t = "G-Diffuser"; break;
	case 15: t = "Autonomic Nerve"; break;
	case 16: t = "Erratic Pulse"; break;
}
if image_alpha > 0 {
draw_set_font(1)
draw_set_halign(fa_left)
draw_set_valign(fa_bottom)
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
draw_set_valign(fa_top)
}
//sound_play(asset_get("sfx_birdflap"))