muno_event_type = 4;
user_event(14);



if stamina_alpha > 0.01{
	var draw_x = x + 48;
	var draw_y = y - 64;
	var draw_f = lerp(25, 0, stamina / stamina_max);
	
	if !stamina && get_gameplay_time() % 14 < 7 draw_f--;
	
	if stamina draw_f = min(draw_f, 23);
	
	draw_sprite_ext(sprite_get("stamina_wheel"), draw_f, draw_x, draw_y, 1, 1, 0, c_white, stamina_alpha);
}



if bomb_cooldown{
	
	shader_start();
	var dx = x - 48;
	var dy = y - 64;
	var frame = floor(lerp(0, 27, 1 - bomb_cooldown / bomb_cooldown_max));
	var opac = 1;
	switch(frame){
		case 0:
		case 26:
			opac = 0.5;
			break;
	}
	draw_sprite_ext(sprite_get("bomb_cooldown"), frame, dx, dy, 1, 1, 0, c_white, opac);
	shader_end();
	
}



var rm = rune_menu;

if rm.draw_alpha > 0.01{
	
	var dx = x;
	var dy = y - 106;
	
	if rm.hint_alpha > 0.01{
		draw_set_alpha(rm.hint_alpha);
		draw_sprite(sprite_get("ui_hint_camera"), 0, dx + 62, dy + 50);
		if phone_practice draw_sprite(sprite_get("ui_hint_phone"), 0, dx - 62, dy + 50);
		draw_sprite(sprite_get("ui_hint_controls"), 0, dx, dy + 128);
	}
	
	draw_set_alpha(rm.draw_alpha);
	
	draw_sprite(sprite_get("ui_base"), 0, dx, dy);
	textDraw(dx, dy - 49, "fName", c_white, 10000, 10000, fa_center, 1, rm.state, rm.draw_alpha, runes[cur_rune].name, 0);
	
	dx += rm.scroll_x;
	
	for(var i = 0; i < array_length(runes); i++){
		draw_sprite(sprite_get("ui_rune_icons"), i + (i == cur_rune) * 4, dx + i * 56, dy);
	}
	
	draw_set_alpha(1);
}





#define rectDraw(x1, y1, width, height, color)

draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);



#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline {
    for (i = -1; i < 2; i++) {
        for (j = -1; j < 2; j++) {
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
else return;

