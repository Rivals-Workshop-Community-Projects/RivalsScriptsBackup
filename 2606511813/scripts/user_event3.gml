//codec draw_hud

with pit_codec_handler{
 
	temp_x = player_id.temp_x;
	temp_y = player_id.temp_y;
 
	var box_w = 196;
 
	if state{
 
		var cur_pg = file.pages[page];
		var cur_sp = noone;
		if cur_pg.speaker < 0 cur_sp = file.player_object.trummel_speakers[abs(cur_pg.speaker)];
		else cur_sp = speakers[cur_pg.speaker];
 
		draw_sprite_ext(spr_cdc_cover, 0, temp_x + 26, temp_y + 6, 1, 1, 0, c_white, scale);
 
		var box_spr = spr_cdc_textbox;
 
		draw_sprite_ext(box_spr, 0, temp_x + 104, temp_y - 50, 1, 1, 0, c_white, scale*0.85);
 
		if cur_pg.speaker == clamp(cur_pg.speaker, 0, 1) with other shader_start();
		var face_offset = 0;
 
		//draw_sprite_part_ext(cur_sp.sprite, mouth_flap + 2 * cur_pg.expression, 0, 0, 100, 48 + face_offset, temp_x + 20, temp_y - 8 - face_offset, 1, 1, c_white, scale);
		draw_sprite_part_ext(cur_sp.sprite, cur_pg.expression, 0, 0, 100, 48 + face_offset, temp_x + 20, temp_y - 8 - face_offset, 1, 1, c_white, scale);
 
		if cur_pg.speaker < 2 with other shader_end();
		textDraw(temp_x + 92 - (1 - scale) * 30, temp_y + 29, "fName", c_white, 16, 1000, fa_left, 1, false, scale, cur_sp.name);
		textDraw(temp_x + 205, temp_y + 9, "fName", c_white, 16, 1000, fa_right, 1, false, scale, "Pg. " + string(page + 1) + "/" + string(array_length_1d(file.pages)));
	}
 
	if active{
		var arrow = (state == 3 && state_timer > delay_time && state_timer % 60 >= 30) ? " >>>" : "";
		var col = c_white;
		textDraw(temp_x + 8, temp_y - 91, "fName", col, 16, box_w, fa_left, 1, false, 1, stored_text + arrow);
 
		if true { // change to "if true" if no phone
			textDraw(10, 10, "fName", c_white, 20, 200, fa_left, 1, true, 1, "TAUNT: Cancel Codec");
		}
	}
 
}
 
 
 
#define rectDraw(left, top, width, height, color)
 
draw_rectangle_color(left, top, left + width - 1, top + height - 1, color, color, color, color, false);
 
 
 
#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text)
 
draw_set_font(asset_get(font));
draw_set_halign(align);
 
if outline{
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}
 
if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);
 
return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];