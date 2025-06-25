// pre-draw

/*
if (state==PS_AIR_DODGE||state==PS_ROLL_BACKWARD||state==PS_ROLL_FORWARD||state==PS_TECH_BACKWARD||state==PS_TECH_FORWARD){
	var fog_save = gpu_get_fog();
		var make_color_a = make_colour_rgb(get_color_profile_slot_r( get_player_color(player), 3), get_color_profile_slot_g( get_player_color(player), 3), get_color_profile_slot_b( get_player_color(player), 3));
		var make_color_b = make_colour_rgb(get_color_profile_slot_r( get_player_color(player), 2), get_color_profile_slot_g( get_player_color(player), 2), get_color_profile_slot_b( get_player_color(player), 2));
	gpu_set_fog(true, make_color_b, 0, 1);
		draw_sprite_ext(sprite_index,image_index,x-hsp*2,y-vsp*2,spr_dir,1,0,-1,1)
	gpu_set_fog(true, make_color_a, 0, 1);
		draw_sprite_ext(sprite_index,image_index,x-hsp*1,y-vsp*1,spr_dir,1,0,-1,1)
	gpu_set_fog(fog_save[0],fog_save[1],fog_save[2],fog_save[3]);
}*/



if (attack == AT_USPECIAL&&(state==PS_ATTACK_AIR||state==PS_ATTACK_GROUND)){
	if (window<=3){
		var tmp_range1 = ease_cubeIn( 160, 40, state_timer, 40 )//50
		var tmp_range2 = clamp(ease_cubeIn( 70, 0, state_timer, 22 ), 0, 80)
		
		var tmp_alpha1 = ease_cubeIn( 0, 100, state_timer, 40 )/100//50
		var tmp_alpha2 = clamp(ease_cubeIn( 100, 0, state_timer, 22 )/100, 0, 1)
		var tmp_alpha3 = tmp_alpha2 - clamp(ease_cubeIn( 100, 0, state_timer, 6 )/100, 0, 1)
		var tmp_alpha4 = ease_quadOut( 0, 60, state_timer, 40 )/100//50
		
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
	if (clock_dur != clock_dur_orig){
	var tmp_angle = ease_cubeIn( clock_n_cur, clock_n_prev, clock_n_timer, clock_n_dur )
	}else{
	var tmp_angle = ease_quartIn( clock_n_cur, clock_n_prev, clock_n_timer, clock_n_dur )
	}
	//print(string(tmp_angle)+" = "+string(clock_n_cur)+", "+string(clock_n_prev)+", "+string(clock_n_timer)+", "+string(clock_n_dur))
	draw_sprite_ext( sprite_get("na_clock"), 0, x-6, y+4, 1, 1, 0, -1, tmp_a1 )
	draw_sprite_ext( sprite_get("na_clock_needle"), 0, x+1, y-24, 1, 1, tmp_angle, -1, tmp_a2 )
}else if (clock_show){
	if (clock_dur != clock_dur_orig){
	var tmp_angle = ease_cubeIn( clock_n_cur, clock_n_prev, clock_n_timer, clock_n_dur )
	}else{
	var tmp_angle = ease_quartIn( clock_n_cur, clock_n_prev, clock_n_timer, clock_n_dur )
	}
	//print(string(tmp_angle)+" = "+string(clock_n_cur)+", "+string(clock_n_prev)+", "+string(clock_n_timer)+", "+string(clock_n_dur))
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


