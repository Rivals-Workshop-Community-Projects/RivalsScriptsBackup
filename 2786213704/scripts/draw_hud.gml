// Please excuse my lazy countdown for subsequent rounds.
if (rounds > 0 && !round_over && round_timer < 120) {
	if (round_timer < 90) {
		draw_sprite_ext(asset_get("hud_go_num_spr"), floor(round_timer / 30) * 2, 480, 250, 2, 2, 0, c_white, 1 - max((round_timer % 30) - 20, 0) / 10);
	} else {
		draw_sprite_ext(asset_get("hud_go_spr"), 0, 480, 250, 2, 2, 0, c_white, 1 - max((round_timer % 30) - 20, 0) / 10);
	}
}

if ((!round_over && round_timer < 90) || match_over) {
	exit;
}

if (round_over) {
	var tmax = 15;
	var t = min(round_timer, tmax);
	// Draw distance
	// Without scaling, x would be 436
	draw_distance_scale(ease_sineIn(712, 392, t, tmax), ease_sineIn(64, 160, t, tmax), ease_sineIn(1, 2, t, tmax));

	if (new_record) {
		// Draw new record
		draw_new_record(436, 216);
	}
} else {
	if (!barrier_broken) {
		// Draw time
		draw_time(432, 32);
	}

	if (!get_match_setting(SET_PRACTICE)) {
		draw_round(428, 64);
	}

	// Draw distance
	draw_distance(712, 64);
}


#define draw_time(x, y)
draw_sprite(asset_get("spr_font_roaLBL"), floor(stat_time / 1000 + 9) % 10, x, y);
x += 16;
draw_sprite(asset_get("spr_font_roaLBL"), floor(stat_time / 100 + 9) % 10, x, y);
x += 16;
draw_sprite(asset_get("spr_font_roaLBL"), 11, x, y); // :
x += 8;
draw_sprite(asset_get("spr_font_roaLBL"), floor(stat_time / 10 + 9) % 10, x, y);
x += 16;
draw_sprite(asset_get("spr_font_roaLBL"), (stat_time + 9) % 10, x, y);
x += 16;
draw_sprite(asset_get("spr_font_roaLBL"), 12, x, y); // .
x += 8;
y += 4;
draw_sprite(asset_get("spr_font_roaMBL"), (stat_time * 10 + 9) % 10, x, y);
x += 16;
draw_sprite(asset_get("spr_font_roaMBL"), (stat_time * 100 + 9) % 10, x, y);


#define draw_distance(x, y)
draw_sprite(asset_get("spr_font_roaLBL"), floor(stat_distance / 1000 + 9) % 10, x, y);
x += 16;
draw_sprite(asset_get("spr_font_roaLBL"), floor(stat_distance / 100 + 9) % 10, x, y);
x += 16;
draw_sprite(asset_get("spr_font_roaLBL"), floor(stat_distance / 10 + 9) % 10, x, y);
x += 16;
draw_sprite(asset_get("spr_font_roaLBL"), (stat_distance + 9) % 10, x, y);
x += 16;
draw_sprite(asset_get("spr_font_roaLBL"), 12, x, y); // .
x += 8;
y += 4;
draw_sprite(asset_get("spr_font_roaMBL"), (stat_distance * 10 + 9) % 10, x, y);


#define draw_distance_scale(x, y, scale)
draw_sprite_ext(asset_get("spr_font_roaLBL"), floor(stat_distance / 1000 + 9) % 10, x, y, scale, scale, 0, c_white, 1);
x += 16 * scale;
draw_sprite_ext(asset_get("spr_font_roaLBL"), floor(stat_distance / 100 + 9) % 10, x, y, scale, scale, 0, c_white, 1);
x += 16 * scale;
draw_sprite_ext(asset_get("spr_font_roaLBL"), floor(stat_distance / 10 + 9) % 10, x, y, scale, scale, 0, c_white, 1);
x += 16 * scale;
draw_sprite_ext(asset_get("spr_font_roaLBL"), (stat_distance + 9) % 10, x, y, scale, scale, 0, c_white, 1);
x += 16 * scale;
draw_sprite_ext(asset_get("spr_font_roaLBL"), 12, x, y, scale, scale, 0, c_white, 1); // .
x += 8 * scale;
y += 4 * scale;
draw_sprite_ext(asset_get("spr_font_roaMBL"), (stat_distance * 10 + 9) % 10, x, y, scale, scale, 0, c_white, 1);


#define draw_new_record(x, y)
draw_sprite_ext(sprite_get("str_new_record"), 0, x, y, 2, 2, 0, c_yellow, 1);


#define draw_round(x, y)
var this_round = rounds + 1;
var max_rounds = max(get_match_setting(SET_STOCKS), 1);
if (this_round <= 9) {
	x += 6;
}
if (max_rounds <= 9) {
	x += 4;
}
draw_sprite_ext(sprite_get("str_round"), 0, x, y + 2, 2, 2, 0, c_white, 1);
x += 54;
if (this_round > 9) {
	draw_sprite(asset_get("spr_font_med"), (floor(this_round / 10) + 9) % 10, x, y);
	x += 12;
}
draw_sprite(asset_get("spr_font_med"), (this_round + 9) % 10, x, y);
x += 16;
y += 6;
draw_sprite_ext(sprite_get("str_of"), 0, x, y, 2, 2, 0, c_white, 1);
x += 20;
if (max_rounds > 9) {
	draw_sprite(asset_get("spr_font_fName"), (floor(max_rounds / 10) + 9) % 10, x, y);
	x += 8;
}
draw_sprite(asset_get("spr_font_fName"), (max_rounds + 9) % 10, x, y);

