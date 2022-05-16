if "prev_color6" not in self prev_color6 = -1;
if "text_timer6" not in self text_timer6 = 130;
if "flash_alpha6" not in self flash_alpha6 = 1;
if "css_offset" not in self css_offset = 30;

switch (get_player_color(player)) {
    case 1:
        colorSet(get_player_color(player), 0, make_color_hsv(get_gameplay_time() % 256, 255, 255));
    	colorSet(get_player_color(player), 3, make_color_hsv(get_gameplay_time() % 256, 255, 255));
    	colorSet(get_player_color(player), 4, make_color_hsv(get_gameplay_time() % 256, 255, 170));
    	colorSet(get_player_color(player), 5, make_color_hsv(get_gameplay_time() % 256, 255, 255));
        init_shader();
        break;
}

if (prev_color6 != get_player_color(player)) {
    prev_color6 = get_player_color(player);
    flash_alpha6 = 1;
    css_offset = 30;
    text_timer6 = 130;
    sound_stop(asset_get("mfx_change_color"));
    sound_stop(sound_get("drawsword_cancel_02"));
    sound_play(sound_get("drawsword_cancel_02"), 0, noone, .7, 1.1 - (random_func(1, 20, 1)/100));
}

flash_alpha6 = lerp(flash_alpha6, 0, .15);
css_offset = lerp(css_offset, 0, .15)
text_timer6 = clamp(text_timer6 - 1, 0, text_timer6);
text_offset = ease_circIn(0, 70, 130-text_timer6, 130) + 65 - text_timer6/4;

bg_color = make_color_rgb(get_color_profile_slot_r(get_player_color(player) ,0), get_color_profile_slot_g(get_player_color(player) ,0), get_color_profile_slot_b(get_player_color(player) ,0));

draw_sprite_ext(sprite_get("charselect_bg"), 0, x + 8, y + 8, 2, 2, 0, c_white, 1);
draw_sprite_part_ext(sprite_get("charselect_long"), 0, 50 - css_offset, 0, 204, 144, x+8, y+8, 1, 1, c_white, 1);

muno_event_type = 6;
user_event(14);

if get_player_color(player) < array_length(alt_names) && alt_names[get_player_color(player)] != "" {
    textDraw(x + 16, y + 168 - text_offset, "fName", bg_color, 1000, 200, fa_left, 1, true, sqr(text_timer6/30), alt_names[get_player_color(player)], false);
}

draw_sprite_ext(sprite_get("charselect_flash"), 0, x+8, y+8, 1, 1, 0, c_white, flash_alpha6);

// idk what half these arguments do :crydinal
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


#define colorSet(alt, sha, col) // Streamlines color setup. Translates BRG --> RGB.
 
set_color_profile_slot(alt, sha, color_get_blue(col), color_get_green(col), color_get_red(col));