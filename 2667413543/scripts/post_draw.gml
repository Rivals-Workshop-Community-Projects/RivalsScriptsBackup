// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 4;
user_event(14);

if (wow_chrg >= wow_chrg_max){
	var alt = get_player_color(player);
	var col_slot = 6;
	var _col =  make_color_rgb(get_color_profile_slot_r( alt, col_slot), get_color_profile_slot_g( alt, col_slot), get_color_profile_slot_b( alt, col_slot));
	var _alpha = .5;
	
	_alpha = sin(get_gameplay_time()/4) *.7;
	
	gpu_set_fog(1, _col, 0, 1);
	draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, image_xscale, image_yscale, spr_angle, _col, _alpha);
}
gpu_set_fog(0, c_white, 0, 0);

//lmao this code is so inefficient send help
// ok i fixed it [thumbs up.png]
if state == PS_ATTACK_GROUND && attack == AT_TAUNT && window == 2{
	shader_start();
	if (window_timer <= 7)
		draw_sprite(sprite_get("taunt_scaryface"), window_timer/2, x, y);

	shader_end();
}

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (attack == AT_DSPECIAL){
	shader_start();
	if spr_dir == 1{
		draw_sprite(sprite_get("dspecial_eye"), image_index, x, y);
	} else {
		draw_sprite(sprite_get("dspecial_eye_r"), image_index, x, y);
	}
	shader_end();
}

if (get_match_setting(SET_PRACTICE)){
	if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
		switch(attack){
			case AT_FSPECIAL:
				if (fspecial_grab_id != noone){ // debug
					var lol_y = y + 10;
					draw_debug_text(x, lol_y, string(fspecial_grab_time) + "/" + string(fspecial_grab_time_max));
				}
				//draw_debug_text(x, y - 30, string(window));
			break
		}
	}
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
