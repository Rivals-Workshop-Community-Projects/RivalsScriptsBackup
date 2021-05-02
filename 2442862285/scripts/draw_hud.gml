if "hud_handler" not in self exit;

// draw_debug_text(20, 20, "Speedrunner Link

// by RuberCuber")

if !phone_cheats[cheat_hide_hud]{

	shader_start();
	
	with hud_handler if state{
		
		if !other.phone.phone_settings[other.phone.setting_fast_graphics] draw_sprite(sprite_index, image_index, other.temp_x - 14, other.temp_y - 58);
		with other meterDraw(temp_x + 104, temp_y - 6 * other.meter_width, 212 + (1 - other.meter_width) * 10, 6 * other.meter_width + 2, lightning_color[cloud_col_target != lightning_color], lightning / lightning_max, 1, 1, false)
	}
	
	shader_end();
}



with codec_handler{
	
	temp_x = player_id.temp_x;
	temp_y = player_id.temp_y;
	
	var box_w = 196;
	
	if state{
	
		var cur_pg = file.pages[page];
		var cur_sp = noone;
		if cur_pg.speaker < 0 cur_sp = file.player_object.trummel_speakers[abs(cur_pg.speaker)];
		else cur_sp = speakers[cur_pg.speaker];
		
		draw_sprite_ext(spr_cdc_cover, 0, temp_x + 26, temp_y + 6, 1, 1, 0, c_white, scale);
		
		var box_spr = isGimmick(GIM_TEXTBOX) ? file.player_object.spr_custom_trummel_textbox : spr_cdc_textbox;
		
		draw_sprite_ext(box_spr, 0, temp_x + 104, temp_y - 50, scale, scale, 0, c_white, scale);
		
		if cur_pg.speaker == clamp(cur_pg.speaker, 0, 1) with other shader_start();
		var face_offset = (mouth_flap && cur_pg.speaker != 0) * 2;
		
		var clone_amt = 42;
		
		if isGimmick(GIM_CLONE){
			temp_x += clone_amt;
			if file.pages[page].speaker != 0 draw_sprite_part_ext(cur_sp.sprite, mouth_flap + 2 * cur_pg.expression, 0, 0, 100, 48 + face_offset, temp_x + 20, temp_y - 8 - face_offset, 1, 1, c_white, scale);
			temp_x -= clone_amt;
		}
		
		if isGimmick(GIM_SHADER) with file.player_object shader_start();
		
		if file.pages[page].speaker != 0 draw_sprite_part_ext(cur_sp.sprite, mouth_flap + 2 * cur_pg.expression, 0, 0, 100, 48 + face_offset, temp_x + 20, temp_y - 8 - face_offset, 1, 1, c_white, scale);
		
		if isGimmick(GIM_SHADER) with file.player_object shader_end();
		
		if cur_pg.speaker < 2 with other shader_end();
		
		if isGimmick(GIM_CLONE) temp_x += clone_amt;
		if file.pages[page].speaker != 0 textDraw(temp_x + 82 - (1 - scale) * 30, temp_y + 29, "fName", c_white, 16, 1000, fa_left, 1, false, scale, cur_sp.name);
		if isGimmick(GIM_CLONE) temp_x -= clone_amt;
		
		textDraw(temp_x + 205, temp_y + 9, "fName", c_white, 16, 1000, fa_right, 1, false, scale, "Pg. " + string(page + 1) + "/" + string(array_length_1d(file.pages)));
	}
	
	if active{
		var arrow = (state == 3 && state_timer % 60 >= 30) ? " >>>" : "";
		var col = isGimmick(GIM_COLOR) ? file.player_object.spr_custom_trummel_color : c_white;
		textDraw(temp_x + 8, temp_y - 91, "fName", col, 16, box_w, fa_left, 1, false, 1, stored_text + arrow);
		
		if !player_id.phone.state{
			textDraw(10, 10, "fName", c_white, 20, 200, fa_left, 1, true, 1, "TAUNT: Cancel Codec");
		}
	}
	
}



with obj_article1 if player_id == other{
	var leeway = 0;
	var z = y - 20;
	
	var off_l = x < view_get_xview() - leeway;
	var off_r = x > view_get_xview() + view_get_wview() + leeway;
	var off_u = z < view_get_yview() - leeway;
	var off_d = z > view_get_yview() + view_get_hview() + leeway;
	
	var margin = 34;
	var idx = noone;
	
	if off_l{
		idx = 0;
		if off_u idx = 1;
		if off_d idx = 7;
	}
	else if off_r{
		idx = 4;
		if off_u idx = 3;
		if off_d idx = 5;
	}
	else if off_u idx = 2;
	else if off_d idx = 6;
	
	if idx != noone{
		draw_sprite_ext(sprite_get("article_offscreen"), idx, clamp(x - view_get_xview(), margin, view_get_wview() - margin), clamp(z - view_get_yview(), margin, view_get_hview() - margin), 1, 1, 0, get_player_hud_color(player), 1);
		with other shader_start();
		draw_sprite_ext(sprite_get("article_offscreen"), 8, clamp(x - view_get_xview(), margin, view_get_wview() - margin), clamp(z - view_get_yview(), margin, view_get_hview() - margin), 1, 1, 0, c_white, 1);
		with other shader_end();
	}
}

user_event(11);



#define meterDraw(center, top, width, height, color, amount, alpha, alpha2, border)

if width < 6 || height < 3 return;

var left = center - width * 0.5;

draw_set_alpha(alpha);

rectDraw(left, top, width, height, c_black);
rectDraw(left + 2, top + 2, width - 4, height - 4, make_color_rgb(60, 60, 60));
if border rectDraw(left + 2, top + 2, min(((width - 4) * amount / 2) * 2 + 2, width - 4), height - 4, c_white);

draw_set_alpha(alpha * alpha2);

if (((width - 4) * amount / 2) * 2) > 2 rectDraw(left + 2, top + 2, ((width - 4) * amount / 2) * 2, height - 4, color);

draw_set_alpha(1);



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



#define isGimmick(gimmick_num)

return file.pages[page].gimmick && (file.pages[page].gimmick % gimmick_num == 0);