//N/A debug-draw
	
if (nadev){
	
	var scrleft = floor(view_get_xview());
	var scrmiddle = floor(view_get_xview()+(view_get_wview()/2));
	var scrtop = floor(view_get_yview())+120;

	draw_debug_text(scrleft+16,scrtop+16,string(floor(fps))+" fps - NADEV is on. down on rightstick + shield to toggle display.");
	draw_debug_text(scrleft+16,scrtop+32,"Its appetite is all-consuming.");
	draw_debug_text(scrleft+16,scrtop+48,"Your splintered soul will be its repast.");
	if (nadev_display){
		draw_debug_text(scrleft+16,scrtop+64,string(na_dsp_charge))
		draw_debug_text(scrleft+16,scrtop+80,string(id))
		draw_debug_text(scrleft+16,scrtop+96,string(clock_n_timer))
		draw_debug_text(scrleft+16,scrtop+(16*7),string(v_fstrong))
		draw_debug_text(scrleft+16,scrtop+(16*8),"window "+string(window)+" timer "+string(window_timer))
		/*
		with ("dust_fx_obj"){
		draw_debug_text(x,y+30,"here");
		draw_debug_text(x,y+45,string(player));
		}
		*/
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
		}
	}
}