//a

with (asset_get("obj_article1")){
	if (player_id == other.player_id){
		//if (point_distance(x, y, player_id.x, player_id.y-round(player_id.char_height/2)) <= disable_range){
			var tmp_dist = round( point_distance(x, y, player_id.x, player_id.y-round(player_id.char_height/2)) )
			var tmp_a = ease_sineIn( 100, 0, min((max(disable_range,tmp_dist)-disable_range),round(disable_range)), round(disable_range) )/300
			//var tmp_blend = gpu_get_blendmode();
			//gpu_set_blendmode(bm_add);
			//draw_sprite_ext( sprite_get("na_dot"), 0, player_id.x, player_id.y-1-round(player_id.char_height/2), 2, 2, 0, c_white, tmp_a/((tmp_dist<=disable_range&&state==1)?1:3) );
			//gpu_set_blendmode(tmp_blend);
			
			/*if (tmp_dist<=disable_range*2){
			if (get_gameplay_time()%9==id%9){
			//hbtx = round(disp_1 * cos(angle_1));
			//hbty = round(disp_1 * sin(angle_1));
			var tmp_angle = point_direction(x, y, player_id.x+player_id.hsp, (player_id.y-round(player_id.char_height/2))+player_id.vsp) / 180 * -3.14;
			var tmp_angle = tmp_angle-0.2+random_func_2( 5, 40, true )/100
			var tmp_xoffset = round(disable_range * cos(tmp_angle));
			var tmp_yoffset = round(disable_range * sin(tmp_angle));
			spawn_hit_fx( x+tmp_xoffset, y+tmp_yoffset, player_id.na_dot2 )
			}
			}*/
			
			var tmp_angle = point_direction(x, y, player_id.x+player_id.hsp, (player_id.y-round(player_id.char_height/2))+player_id.vsp) / 180 * -3.14;
			var tmp_xoffset = round(disable_range * cos(tmp_angle));
			var tmp_yoffset = round(disable_range * sin(tmp_angle));
			var tmp_xoffsetC = round(disable_range * cos(tmp_angle+0.3));
			var tmp_yoffsetC = round(disable_range * sin(tmp_angle+0.3));
			var tmp_xoffsetD = round(disable_range * cos(tmp_angle-0.3));
			var tmp_yoffsetD = round(disable_range * sin(tmp_angle-0.3));
			
			var tmp_blend = gpu_get_blendmode();
			gpu_set_blendmode(bm_add);
			var tmp_aget = draw_get_alpha();
			draw_set_alpha(tmp_a);
			
			var col_R = get_color_profile_slot_r( get_player_color(player), 3);
			var col_G = get_color_profile_slot_g( get_player_color(player), 3);
			var col_B = get_color_profile_slot_b( get_player_color(player), 3);

			var col_final = make_color_rgb(col_R, col_G, col_B);
			
			draw_line_width_colour(x+tmp_xoffset, y+tmp_yoffset, x+tmp_xoffsetC, y+tmp_yoffsetC, 2, c_white, col_final);
			draw_line_width_colour(x+tmp_xoffset, y+tmp_yoffset, x+tmp_xoffsetD, y+tmp_yoffsetD, 2, c_white, col_final);
			
			gpu_set_blendmode(tmp_blend);
			draw_set_alpha(tmp_aget);
			//print("yea its runnin alright")
			
		//}
	}
}