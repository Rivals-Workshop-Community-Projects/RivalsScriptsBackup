var bar_x = temp_x - 32 + 66;
var bar_y = temp_y - 10;
var bar_width = 156;
var bar_height = 8;

var bar_amount = blackjack_meter / blackjack_meter_max;
blackjack_meter_lerp = lerp(blackjack_meter_lerp, bar_amount, 0.3)

var bar_color_amt = max(floor(bar_amount * 3), 0);
var bar_color = c_white;
if (blackjack_cooling_timer > 0) {
	bar_color = blackjack_meter_colors_cooling
}
else {
	if (bar_amount == 1) {
	    bar_color = blackjack_meter_colors_max[get_gameplay_time() % 12 < 4 ? 0 : 1]
	}
	else {
	    bar_color = blackjack_meter_colors[bar_color_amt]
	}
}


draw_sprite_ext(sprite_get("meter_hud_back"), 0, temp_x - 32, temp_y + 32, 2, 2, 0, c_black, 1);
draw_rectangle_color(bar_x, bar_y, bar_x + (bar_width * blackjack_meter_lerp), bar_y + bar_height, bar_color, bar_color, bar_color, bar_color, false);


if (training_toggle) {
    draw_debug_text(bar_x - 18, bar_y - 20, "Taunt to increase meter");
}

var text = string(blackjack_meter);
var tex_col =  bar_amount == 1 ? blackjack_meter_colors_max[1] : c_white;

if (blackjack_cooling_timer > 0) {
    tex_col = blackjack_meter_colors_cooling;
}

draw_set_font(asset_get("medFont"));
draw_set_halign(fa_right);
draw_text_trans_outline(bar_x - 18, bar_y - 8, text, 1, -1, 1, 1, 0, tex_col, c_black, 1)
draw_set_halign(fa_left);
 
#define draw_text_trans_outline(_x, _y, str, separ, w, xscale, yscale, angl, text_colour, outline_colour, alph)
for (i = - 1; i < 2; i++) for (j = -1; j < 2; j++) draw_text_ext_transformed_color(_x+i*2,_y+j*2,str,separ, w, xscale, yscale, angl, outline_colour, outline_colour, outline_colour, outline_colour, 1);
draw_text_ext_transformed_color(_x,_y,str,separ, w, xscale, yscale, angl, text_colour, text_colour, text_colour, text_colour, 1);