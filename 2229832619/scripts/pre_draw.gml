// pre-draw



if (attack == AT_USPECIAL&&(state==PS_ATTACK_AIR||state==PS_ATTACK_GROUND)){
	if (window<=3){
		var tmp_range1 = ease_cubeIn( 160, 40, state_timer, 50 )
		var tmp_range2 = clamp(ease_cubeIn( 70, 0, state_timer, 22 ), 0, 80)
		
		var tmp_alpha1 = ease_cubeIn( 0, 100, state_timer, 50 )/100
		var tmp_alpha2 = clamp(ease_cubeIn( 100, 0, state_timer, 22 )/100, 0, 1)
		var tmp_alpha3 = tmp_alpha2 - clamp(ease_cubeIn( 100, 0, state_timer, 6 )/100, 0, 1)
		var tmp_alpha4 = ease_quadOut( 0, 60, state_timer, 50 )/100
		
		var make_color = make_colour_rgb(get_color_profile_slot_r( get_player_color(player), 0), get_color_profile_slot_g( get_player_color(player), 0), get_color_profile_slot_b( get_player_color(player), 0));
		
		if (joy_pad_idle){
			var tmp_angle = (round(((spr_dir==1)?67.5:112.5) / 22.25) * 22.25) / 180 * -3.14;
		}else{
			var tmp_angle = (round(((spr_dir==-1&&joy_pad_idle)?180:joy_dir) / 22.25) * 22.25) / 180 * -3.14;
		}
		var tmp_dist_min = 70;
		var tmp_dist_max = 140;
		var tmp_x1 = x+(tmp_dist_min * cos(tmp_angle));
		var tmp_y1 = y-24+(tmp_dist_min * sin(tmp_angle));
		var tmp_x2 = x+(tmp_dist_max * cos(tmp_angle));
		var tmp_y2 = y-24+(tmp_dist_max * sin(tmp_angle));
		
		
		draw_set_alpha(tmp_alpha1);
		draw_circle_colour(x, y-24, tmp_range1, c_black, c_black, false);
		
		draw_set_alpha(tmp_alpha3);
		draw_circle_colour(x, y-24, tmp_range2, make_color, make_color, true);
		draw_circle_colour(x+1, y-24, tmp_range2, make_color, make_color, true);
		draw_circle_colour(x, y-24+1, tmp_range2, make_color, make_color, true);
		draw_circle_colour(x-1, y-24, tmp_range2, make_color, make_color, true);
		draw_circle_colour(x, y-24-1, tmp_range2, make_color, make_color, true);
		
		draw_set_alpha(tmp_alpha4);
		draw_line_width_colour(tmp_x1, tmp_y1, tmp_x2, tmp_y2, 1, c_white, c_white);
		
		draw_set_alpha(1);
		
	}
}


if (attack == AT_DSPECIAL&&(state==PS_ATTACK_AIR||state==PS_ATTACK_GROUND)){
	
	//charge effect
	if (window==3){
		var tmp_range3 = ease_cubeOut( 0, 70, dsp_glow_time, dsp_glow_max )
		var tmp_alpha5 = clamp(ease_cubeIn( 60, 0, dsp_glow_time, dsp_glow_max )/100, 0, 1)
		var tmp_alpha6 = tmp_alpha5 - clamp(ease_cubeIn( 100, 0, dsp_glow_time, round(dsp_glow_max/3) )/100, 0, 1)
		
		var make_color = make_colour_rgb(get_color_profile_slot_r( get_player_color(player), 0), get_color_profile_slot_g( get_player_color(player), 0), get_color_profile_slot_b( get_player_color(player), 0));
		
		draw_set_alpha(tmp_alpha6);
		draw_circle_colour(x, y-24, tmp_range3, make_color, make_color, false);
		draw_set_alpha(1);
	}
	
	//laser
	if (window==11||window==12||window==13){
		var tmp_x3 = x+(57*spr_dir)
		var tmp_y3 = y-49
		
			var tmp_rad = ease_quartInOut( 40, 0, state_timer-19, 54 );
			var tmp_disp = ease_quartInOut( 0, 10, state_timer-19, 54 );
			
		draw_line_width_colour(tmp_x3-(tmp_disp*spr_dir), tmp_y3+tmp_disp, tmp_x3+(800*spr_dir), tmp_y3-800, ceil(tmp_rad), c_white, c_white);
		draw_circle_colour(tmp_x3-(tmp_disp*spr_dir), tmp_y3+tmp_disp, ceil(tmp_rad/2), c_white, c_white, false);
	}
}

/*
clock_show = false;
clock_timer = 0;
clock_dur = 60;
clock_s_type = 0;
clock_s_timer = 0;
clock_s_dur = 0;
clock_n_move = 0;
clock_n_timer = 0;
clock_n_dur = 6;
*/

//NA
shader_start()
if (clock_s_timer>0){
	init_shader()
	if (clock_s_type = 1){
		var tmp_a1 = clamp(ease_quartIn( 40, 0, clock_s_timer, clock_s_dur ),0,100)/100
		var tmp_a2 = clamp(ease_quartIn( 80, 0, clock_s_timer, clock_s_dur ),0,100)/100
	}
	if (clock_s_type = 0){
		var tmp_a1 = clamp(ease_quartOut( 0, 40, clock_s_timer, clock_s_dur ),0,100)/100
		var tmp_a2 = clamp(ease_quartOut( 0, 80, clock_s_timer, clock_s_dur ),0,100)/100
	}
	var tmp_angle = ease_quartIn( clock_n_cur, clock_n_prev, clock_n_timer, clock_n_dur )
	draw_sprite_ext( sprite_get("na_clock"), 0, x-6, y+4, 1, 1, 0, -1, tmp_a1 )
	draw_sprite_ext( sprite_get("na_clock_needle"), 0, x+1, y-24, 1, 1, tmp_angle, -1, tmp_a2 )
}else if (clock_show){
	var tmp_angle = ease_quartIn( clock_n_cur, clock_n_prev, clock_n_timer, clock_n_dur )
	draw_sprite_ext( sprite_get("na_clock"), 3, x-6, y+4, 1, 1, 0, -1, 0.4 )
	draw_sprite_ext( sprite_get("na_clock_needle"), 0, x+1, y-24, 1, 1, tmp_angle, -1, 0.8 )
}
shader_end()















//draw_set_alpha(0);

//moved to article1_pre_draw
/*with (asset_get("obj_article1")){
	if (player_id == other.id){
		var hud_col = get_player_hud_color( player );
		draw_sprite_ext( sprite_get("na_bubble_ol"), image_index, x, y, spr_dir, 1, image_angle, hud_col, 0.5 )
	}
}*/