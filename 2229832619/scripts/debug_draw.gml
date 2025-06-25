//N/A debug-draw
	
if (nadev){
	
	var scrleft = floor(view_get_xview());
	var scrmiddle = floor(view_get_xview()+(view_get_wview()/2));
	var scrtop = floor(view_get_yview())+120;

	draw_debug_text(scrleft+16,scrtop+16,string(floor(fps))+" fps - NADEV is on.");// down on rightstick + shield to toggle display.");
	draw_debug_text(scrleft+16,scrtop+32,"Its appetite is all-consuming.");
	draw_debug_text(scrleft+16,scrtop+48,"Your splintered soul will be its repast.");
	if (nadev_display){
		draw_debug_text(scrleft+16,scrtop+64,string(na_dsp_charge))
		draw_debug_text(scrleft+16,scrtop+80,string(id))
		draw_debug_text(scrleft+16,scrtop+96,string(clock_n_timer))
		draw_debug_text(scrleft+16,scrtop+(16*7),string(v_fstrong))
		draw_debug_text(scrleft+16,scrtop+(16*8),"window "+string(window)+" timer "+string(window_timer))
		draw_debug_text(scrleft+16,scrtop+(16*9),string(hsp))
		draw_debug_text(scrleft+16,scrtop+(16*10),string(air_friction))
		draw_debug_text(scrleft+16,scrtop+(16*11),string(usp_ls_cooldown))
		draw_debug_text(scrleft+16,scrtop+(16*12),string(joy_dir))
	if (clock_dur != clock_dur_orig){
	var tmp_angle = ease_cubeIn( clock_n_cur, clock_n_prev, clock_n_timer, clock_n_dur )
	}else{
	var tmp_angle = ease_quartIn( clock_n_cur, clock_n_prev, clock_n_timer, clock_n_dur )
	}
		draw_debug_text(scrleft+16,scrtop+(16*13),string(tmp_angle)+" = "+string(clock_n_cur)+", "+string(clock_n_prev)+", "+string(clock_n_timer)+", "+string(clock_n_dur))
		draw_debug_text(scrleft+16,scrtop+(16*14),string(joy_dir))
		/*
		with ("dust_fx_obj"){
		draw_debug_text(x,y+30,"here");
		draw_debug_text(x,y+45,string(player));
		}
		*/
		/*
		with(asset_get("oPlayer")){
		draw_circle_colour(x, y, 3, c_aqua, c_aqua, true);
		draw_circle_colour(x, y-round(char_height/2), 3, c_green, c_green, true);
		//if (variable_instance_exists(id, "temp_level")){
		//draw_debug_text(x,y+30,"computer confirmed");
		//}
		}
		
		with(asset_get("obj_article1")){
			if (player_id == other.id){
				draw_circle_colour(x, y, void_range/1.5, c_red, c_red, true);
				draw_circle_colour(x, y, disable_range/1.5, c_green, c_green, true);
			}
		}
		with(asset_get("obj_article2")){
			if (player_id == other.id){
				var tmp_dist = 18;
				var tmp_angle = (image_angle / 180 * -3.14);
				var tmp_x = x+(tmp_dist * cos(tmp_angle));
				var tmp_y = y+(tmp_dist * sin(tmp_angle));
				draw_line_width_colour(x, y, tmp_x, tmp_y, 1, c_red, c_red);
				draw_circle_colour(x, y, 6, c_red, c_red, true);
			}
		}
		with(asset_get("obj_article3")){
			if (player_id == other.id){
				draw_debug_text(x+16,y+16,string(alp2))
				draw_debug_text(x+16,y+32,string(tmp_x_str))
				draw_debug_text(x+16,y+48,string(tmp_y_str))
				draw_debug_text(x+16,y+64,string(image_angle))
			}
		}*/ //makin a better version below
	}
}

//display
if (get_match_setting( SET_HITBOX_VIS ) == true){
		with(asset_get("oPlayer")){
		//draw_circle_colour(x, y, 3, c_aqua, c_aqua, true);
		
		if (id == other.id){
			draw_circle_colour(x, y-round(char_height/2), 3, c_aqua, c_aqua, true);
			draw_circle_colour(x, y-round(char_height/2), 2, c_aqua, c_aqua, true);
		}
		//if (variable_instance_exists(id, "temp_level")){
		//draw_debug_text(x,y+30,"computer confirmed");
		//}
		}
		
		with(asset_get("obj_article1")){
			if (player_id == other.id){
				draw_circle_colour(x, y, void_range, c_red, c_red, true);
				draw_circle_colour(x, y, (void_range)+0.5, c_red, c_red, true);
				draw_circle_colour(x, y, (void_range)+1, c_red, c_red, true);
				draw_circle_colour(x, y, disable_range, c_gray, c_gray, true);
				draw_circle_colour(x, y, disable_range+0.5, c_gray, c_gray, true);
				draw_circle_colour(x, y, disable_range+1, c_gray, c_gray, true);
				//timer
				var tmp_angle = (((idle_cycle/idle_max)*360)+90) / 180 * -3.14;
				var tmp_xoffset = round(disable_range * cos(tmp_angle));
				var tmp_yoffset = round(disable_range * sin(tmp_angle));
				var tmp_xoffsetB = round(3 * cos(tmp_angle));
				var tmp_yoffsetB = round(3 * sin(tmp_angle));
				draw_line_width_colour(x, y-disable_range-5, x, y-disable_range+5, 6, c_purple, c_purple);
				draw_line_width_colour(x+tmp_xoffset-tmp_xoffsetB, y+tmp_yoffset-tmp_yoffsetB, x+tmp_xoffset+tmp_xoffsetB, y+tmp_yoffset+tmp_yoffsetB, 3, c_fuchsia, c_fuchsia);
			}
		}
		with(asset_get("obj_article2")){
			if (player_id == other.id){
				var tmp_dist = 18;
				var tmp_angle = (image_angle / 180 * -3.14);
				var tmp_x = x+(tmp_dist * cos(tmp_angle));
				var tmp_y = y+(tmp_dist * sin(tmp_angle));
				draw_line_width_colour(x, y, tmp_x, tmp_y, 1, c_red, c_red);
				draw_circle_colour(x, y, 6, c_red, c_red, true);
			}
		}
		with(asset_get("obj_article3")){
			if (player_id == other.id){
				/*draw_debug_text(x+16,y+16,string(alp2))
				draw_debug_text(x+16,y+32,string(tmp_x_str))
				draw_debug_text(x+16,y+48,string(tmp_y_str))
				draw_debug_text(x+16,y+64,string(image_angle))*/
			}
		}
		with(asset_get("pHitBox")){
			if (player_id == other.id){
				if (attack == AT_NSPECIAL_AIR && hbox_num == 2){
					//print("yea?")
					mask_index = sprite_get("fake_circle")
					draw_sprite_ext( asset_get("hitbox_circle_spr"), 0, x, y, image_xscale, image_yscale, image_angle, c_white, 0.5 );
				}
			}
		}
}