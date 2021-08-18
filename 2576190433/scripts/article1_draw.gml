//ground

if object_index == obj_stage_main exit;

if parallax_x == 0 && get_gameplay_time() < 210 && get_gameplay_time() % 30 < 25{
	draw_set_valign(fa_top);
	if is_aether_stage(){
		textDraw(x, y + 111, "fName", c_white, 1000, 1000, fa_center, 1, 1, true, "Defend your side or perish!", false);
	}
	else if get_match_setting(SET_PRACTICE){
		textDraw(x, y + 111, "fName", c_white, 1000, 1000, fa_center, 1, 1, true, "TAUNT while dying to reset the stage.", false);
	}
}

var dx = round(temp_x) + draw_off_x;
var dy = round(temp_y) + draw_off_y;

draw_sprite_ext(sprite_drawn, 0, dx, dy, 2, 2, 0, c_white, 1);

if obj_stage_main.side_invert_timer{
	draw_sprite_ext(sprite_drawn, 1, dx, dy, 2, 2, 0, c_white, 0.5);
	exit;
}

dx -= origin_x * 2;
dy -= origin_y * 2;

if obj_stage_main.sides_inverted{
	draw_sprite_part_ext(sprite_drawn, 1, obj_stage_main.barrier_pos - 1, 0, 1000, 1000, dx + (obj_stage_main.barrier_pos - 1) * 2, dy, 2, 2, c_white, 0.5);
	draw_sprite_part_ext(sprite_drawn, 1, obj_stage_main.barrier_pos + 1, 0, 1000, 1000, dx + (obj_stage_main.barrier_pos + 1) * 2, dy, 2, 2, c_white, 1);
	exit;
}

draw_sprite_part_ext(sprite_drawn, 1, 0, 0, obj_stage_main.barrier_pos + 1, 1000, dx, dy, 2, 2, c_white, 0.5);
draw_sprite_part_ext(sprite_drawn, 1, 0, 0, obj_stage_main.barrier_pos - 1, 1000, dx, dy, 2, 2, c_white, 1);



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