//draw_debug_text(10, 10, string(chord_menu_state) + ", " + string(chord_menu_timer));

if !("phone_inited" in self) exit;



with guitar if !following{
	var leeway = 0;
	
	var off_l = x < view_get_xview() - leeway;
	var off_r = x > view_get_xview() + view_get_wview() + leeway;
	var off_u = y < view_get_yview() - leeway;
	var off_d = y > view_get_yview() + view_get_hview() + leeway;
	
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
		draw_sprite_ext(sprite_get("article_offscreen"), idx, clamp(x - view_get_xview(), margin, view_get_wview() - margin), clamp(y - view_get_yview(), margin, view_get_hview() - margin), 1, 1, 0, get_player_hud_color(player), 1);
		with other shader_start();
		draw_sprite_ext(sprite_get("article_offscreen"), 8, clamp(x - view_get_xview(), margin, view_get_wview() - margin), clamp(y - view_get_yview(), margin, view_get_hview() - margin), 1, 1, 0, c_white, 1);
		with other shader_end();
	}
}



//draw_debug_text(10, 10, string(guitar.angle));



if (guitar.chord_state) && !phone_cheats[cheat_hide_hud]{
	var hud_frame = 5;
	var icon_alpha = 1;
	var icon_index = shown_chord;
	var icon_color = chord_color[guitar.chord_change_timer ? 6 : shown_chord];
	
	var frozen_color = c_white;
	var frozen_alpha = 0.5 * !chord_active;
	
	switch(guitar.chord_state){
		case 1:
			hud_frame = floor((guitar.chord_state_timer - 1) / 5);
			icon_alpha = ease_linear(0, 7, guitar.chord_state_timer - 1, 25);
			break;
		case 3:
			hud_frame = floor((guitar.chord_state_timer - 1) / 5) + 6;
			icon_alpha = ease_linear(3, -2, guitar.chord_state_timer - 1, 15);
			break;
	}
	
	icon_alpha = clamp(icon_alpha, 0, 1);
	
	draw_sprite(spr_hud_chord_bar_grey, hud_frame, temp_x + 92, temp_y + 30);
	
	var fill_amt = guitar.chord_juice / guitar.chord_juice_max;
	if (guitar.chord_state == 1) fill_amt = 1;
	draw_sprite_part_ext(spr_hud_chord_bar_fill, hud_frame, 0, 0, 50 + round(fill_amt * 118 / 2) * 2, 1000, temp_x + 92 - 100, temp_y + 30 - 140, 1, 1, icon_color, 1);
	draw_sprite_part_ext(spr_hud_chord_bar_fill, hud_frame, 0, 0, 50 + round(fill_amt * 118 / 2) * 2, 1000, temp_x + 92 - 100, temp_y + 30 - 140, 1, 1, frozen_color, frozen_alpha);
	
	shader_start();
	
	draw_sprite(spr_hud_chord_bar, hud_frame, temp_x + 92, temp_y + 30);
	
	shader_end();
	
	//154, 32
	//46, -4
	
	if (guitar.chord_state == 2){
		var draw_x = temp_x + round(lerp(40, 154, fill_amt) / 2) * 2;
		var draw_y = temp_y + round(lerp(6, -32, fill_amt) / 2) * 2;
		var cutoff = 148 - (draw_y - 484);
		draw_sprite_part(spr_hud_chord_bar_sparks, round(guitar.chord_juice_max - guitar.chord_juice / 5), 0, 0, 200, cutoff, draw_x - 100, draw_y - 140);
	}
	//rectDraw(temp_x + 38, temp_y - 12, ease_linear(0, 80, guitar.chord_timer, chord_timer_max) * 2, 12, chord_color[chord_active]);
	
	var offset = (guitar.chord_change_timer) * -2;
	var icon_size = icon_alpha + 0.1 * clamp(guitar.chord_change_timer, 0, 100);
	icon_alpha -= 0.6 * guitar.chord_juice_flash;
	if guitar.chord_juice_flash icon_color = make_color_rgb(60, 60, 60);
	
	draw_sprite_ext(spr_hud_chord_icons, icon_index, temp_x + 16 + offset, temp_y - 10 + offset, icon_size, icon_size, 0, icon_color, icon_alpha);
	draw_sprite_ext(spr_hud_chord_icons, icon_index, temp_x + 16 + offset, temp_y - 10 + offset, icon_size, icon_size, 0, frozen_color, frozen_alpha);
}

//draw_debug_text(10, 10, string(guitar.chord) + ", " + string(chord_active));

if !phone_cheats[cheat_hide_hud] for (var i = 0; i <= num_chords; i++){
	var cd = guitar.chord_cooldown[i];
	
	if (cd == clamp(cd, -29, 1)){ //Cooldown end
		var progress = cd * -1;
		
		var hud_frame = clamp(ease_linear(0, 5, progress, 30), 0, 4);
		
		draw_sprite_ext(spr_hud_chord_cd_end_2, hud_frame, temp_x + 92, temp_y + 30, 1, 1, 0, c_white, 1);
		draw_sprite_ext(spr_hud_chord_cd_end_1, hud_frame, temp_x + 92, temp_y + 30, 1, 1, 0, chord_color[i], 1);
	}
}



user_event(11);




	
#define rectDraw(left, top, width, height, color)

draw_rectangle_color(left, top, left + width - 1, top + height - 1, color, color, color, color, false);