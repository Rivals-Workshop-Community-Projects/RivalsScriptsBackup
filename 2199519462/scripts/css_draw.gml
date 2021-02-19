//got_hit - called when you're hit by a hitbox

//user_event(5);

var c = c_white;
var a = 0;
a = clamp(dsin((image_alpha)*220)*5, 0, 1)
if a > 0{
	var cc = get_player_color(player);
	c = make_color_rgb(get_color_profile_slot_r(cc, 5), get_color_profile_slot_g(cc, 5), get_color_profile_slot_b(cc, 5))
	draw_sprite_ext(sprite_get("charselect_overlay"), 0, x+8, y+8, 2, 2, 0, c, a)
	shader_end();
	draw_sprite_ext(sprite_get("charselect_overlay"), 1, x+8, y+8, 2, 2, 0, c_white, a)
}

shader_end();
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
	default: case 0: t = "Cherry (Default)"; break;
	case 1: t = "Blueberry"; break;
	case 2: t = "Pumpkin"; break;
	case 3: t = "Key Lime"; break;
	case 4: t = "Chocolate"; break;
	case 5: t = "Lemon Meringue"; break;
	case 6: t = "Pinkie"; break;
	case 7: t = "Seasonal"; switch(get_match_setting(SET_SEASON)) {
		case 1: t = "Seasonal (Valentine's)"; break;
		case 2: t = "Seasonal (Summer)"; break;
		case 3: t = "Seasonal (Halloween)"; break;
		case 4: t = "Seasonal (Holiday)"; break;
	}
	break;
	case 8: t = "Pizza"; break;
	case 9: t = "Blackberry"; break;
	case 10: t = " Butterscotch
	Cinnamon"; break;
	case 11: t = "Possum"; break;
	case 12: t = "Mag"; break;
	case 13: t = "Grasshopper"; break;
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