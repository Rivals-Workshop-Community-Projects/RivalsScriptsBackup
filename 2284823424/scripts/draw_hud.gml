if "inited" not in self exit;

// draw_debug_text(10, 100, "h" + string(fps_real) + " / " + string(fps))

shader_start();



var draw_opac = 1;
if (get_gameplay_time() < 10) draw_opac = ease_linear(0, 1, get_gameplay_time(), 10);
// if (state == PS_DEAD) draw_opac = 0;

var hotbar_preset = 4;

if !phone_cheats[CHEAT_TRAILER]{

	if !fast_graphics if (array_find_index(ok_anims, sprite_index) != -1){
		if is_array(hotbar[sprite_index]) hotbar_preset = hotbar[sprite_index][image_index];
		else hotbar_preset = hotbar[sprite_index];
		
		//0 	Block
		//1 	Water
		//2 	Flint
		//3 	Axe
		//4 	Sword
		//5 	Shield
		//6 	Bow
		//7 	Pick
		//8 	Bed
		//9 	Axe and shield
		//10	Bow charged
	}
	
	draw_sprite_ext(spr_hud_hotbar, hotbar_preset, temp_x - 14, temp_y - 30, 1, 1, 0, c_white, draw_opac);
	draw_sprite_ext(spr_hud_experience, has_container + !held_item, temp_x - 14 - (sin(exp_shake) * 4), temp_y - 52, 1, 1, 0, c_white, draw_opac);
	
	if held_item{
	
		var dx = temp_x;
		var dy = temp_y - 16;
		
		if hotbar_preset == 9 dx += 142;
		
		if held_item_timer && !fast_graphics{
			dx = ease_cubeInOut(dx, round(nspecial_transition_x), held_item_timer, held_item_timer_max);
			dy = ease_cubeInOut(dy, round(nspecial_transition_y), held_item_timer, held_item_timer_max);
		}
		draw_sprite(items[held_item].inv_sprite, 0, dx, dy);
		if items[held_item].count_max - items[held_item].count > 1 {
			if items[held_item].show_count textDraw(dx + 14, dy + 5, "fName", c_white, 100, 100, fa_right, 1, true, 1, string(items[held_item].count_max - items[held_item].count));
		}
	
		var dx = temp_x;
		var dy = temp_y - 16;
		
		if items[held_item].show_durability draw_sprite(spr_hud_item_durability, items[held_item].count, dx - 10, dy + 8);
		if items[held_item].show_durability_mercy && items[held_item].count == 1 draw_sprite(spr_hud_item_durability, 2, dx - 10, dy + 8);
	}
	
	
	
	var dx = temp_x + 32;
	var dy = temp_y - 16;
	
	draw_sprite(block_datas[primary_block].item, 0, dx, dy);
	if !blocks drawBlackoutRect(dx, dy);
	textDraw(dx + 14, dy + 5, "fName", c_white, 100, 100, fa_right, 1, true, 1, string(blocks));
	
	if has_rune("H") draw_sprite(spr_itm_lava_bucket, 0, dx + 22, dy);
	
	if water_cooldown && !(water_cooldown < 30 && water_cooldown % 10 < 5) drawBlackoutRect(dx + 22, dy);



	//NSpecial container gui
	
	if (nspecial_gui_alpha > 0.1){
		draw_sprite_ext(spr_nspecial_guis, 8, temp_x + 28, temp_y - 22, 1, 1, 0, c_white, nspecial_gui_alpha);
		for (i = 0; i < array_length_1d(containers[current_container].items); i++){
			var drawn_x = temp_x + 28 - 24 + 24 * i;
			var drawn_y = temp_y - 48;
			if (i == nspecial_cursor) drawn_y -= sin(nspecial_cursor_timer / 6) * 4 + 2;
			draw_sprite_ext(items[containers[current_container].items[i]].inv_sprite, 0, drawn_x, drawn_y, 1, 1, 0, containers[current_container].spent_items[i] ? make_color_hsv(0, 0, 50) : c_white, nspecial_gui_alpha);
			if (i == nspecial_cursor){
				// drawTooltip(drawn_x, drawn_y, containers[current_container].spent_items[i], items[containers[current_container].items[i]].name, 1);
				draw_sprite(spr_nspecial_gui_cursor, 0, drawn_x + 8, drawn_y + 8);
				nspecial_transition_x = drawn_x;
				nspecial_transition_y = drawn_y;
			}
		}
	}
	
	if held_item && !fast_graphics{
		drawTooltip(temp_x - 24, temp_y - 66, false, items[held_item].name, 1 - nspecial_gui_alpha * 2);
	}
	
	if restock_alpha >= 1 && get_gameplay_time() % 30 < 15 textDraw(temp_x + 98, temp_y - 45, "fName", c_white, 100, 1000, fa_left, 1, true, restock_alpha, "Items Restocked");
	
}



shader_end();



//chat

var chat_width = 360;
var chat_y = 420 - 3;

if ds_list_size(chat_tmr) for (var i = ds_list_size(chat_txt) - 1; i > -1 ; i--){
	
	var alp = (chat_tmr[|i] < 30) ? (chat_tmr[|i] / 30) * 0.5 : 0.5;
	
	if !fast_graphics draw_set_alpha(alp);
	
	var txt = textDraw(10, chat_y + 2, "fName", chat_col[|i], 14, chat_width - 20, fa_left, 1, false, 0, chat_txt[|i]);
	chat_y -= txt[1] - 2;
	rectDraw(0, chat_y, chat_width, txt[1] - 3, c_black);
	textDraw(6, chat_y + 2, "fName", chat_col[|i], 14, chat_width - 12, fa_left, 1, false, alp * 1.5, chat_txt[|i]);
	
}

draw_set_alpha(1);



if phone_cheats[CHEAT_CONT_VIEW]{
	for (var i = 0; i < array_length(containers); i++){
		textDraw(10, 10 + 18 * i, "fName", array_equals(containers[i].spent_items, [1,1,1]) ? c_gray : c_white, 100, 1000, fa_left, 1, 1, 1, (next_container == i ? "> " : "  ") + containers[i].name);
	}
}







with obj_article_platform if player_id == other{
	var leeway = 0;
	var z = y + 20;
	
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
		draw_sprite_ext(sprite_get("article_offscreen"), 8 + type, clamp(x - view_get_xview(), margin, view_get_wview() - margin), clamp(z - view_get_yview(), margin, view_get_hview() - margin), 1, 1, 0, c_white, 1);
		with other shader_end();
	}
}



muno_event_type = 5;
user_event(14);



#define drawTooltip(drawn_x, drawn_y, gray, text, alpha)

if items[held_item].count_max - items[held_item].count > 1{
	if items[held_item].show_count text += " x" + string(items[held_item].count_max - items[held_item].count);
}

var txt = textDraw(drawn_x + 16, drawn_y + 15, "fName", gray ? c_gray : c_white, 20, 200, fa_left, 1, false, alpha, text);
var orig = draw_get_alpha();
draw_set_alpha(alpha);
rectDraw(drawn_x + 12, drawn_y + 14, txt[0] + 5, txt[1] - 4, c_black);
if !fast_graphics rectDraw(drawn_x + 14, drawn_y + 12, txt[0] + 1, txt[1], c_black);
draw_set_alpha(orig);
textDraw(drawn_x + 16, drawn_y + 15, "fName", gray ? c_gray : c_white, 20, 200, fa_left, 1, false, alpha, text);



#define drawBlackoutRect(dx, dy)

var initial = draw_get_alpha();
draw_set_alpha(0.5);

rectDraw(dx - 10, dy - 10, 19, 19, c_black)

draw_set_alpha(initial);



#define rectDraw(x1, y1, width, height, color)

draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);



#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline{
    for (var i = -1; i < 2; i++){
        for (var j = -1; j < 2; j++){
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];