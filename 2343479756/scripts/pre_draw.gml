// pre-draw

if (attack==AT_FSPECIAL && (state==PS_ATTACK_GROUND||state==PS_ATTACK_AIR)){
	var tmp_w = get_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH);
	var tmp_x = get_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X);
	var tmp_y = get_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y);
	var c_or_red = $4020ee
	var c_pink = $9060ee
	
	if (window==2){
		if (window_timer==0||window_timer==1){
			draw_line_width_colour(x+((tmp_x-(tmp_w/3))*spr_dir), y+tmp_y, x+((tmp_x+(tmp_w/2.1))*spr_dir), y+tmp_y, 2, c_or_red, c_or_red);
		}
		if (window_timer==2||window_timer==3||window_timer==4){
			draw_line_width_colour(x+((tmp_x+(tmp_w/4))*spr_dir), y+tmp_y, x+((tmp_x+(tmp_w/2.05))*spr_dir), y+tmp_y, 2, c_or_red, c_or_red);
		}
		if (window_timer==5||window_timer==6||window_timer==7||window_timer==8||window_timer==9||window_timer==10){
			draw_line_width_colour(x+((tmp_x+(tmp_w/2.3))*spr_dir), y+tmp_y, x+((tmp_x+(tmp_w/2))*spr_dir), y+tmp_y, 2, c_or_red, c_or_red);
		}
	}
	if (window==5){
		var tmp_x = abs(x - pre_fsp_x)/2
		var tmp_w = abs(x - pre_fsp_x)
		if (window_timer==0||window_timer==1||window_timer==2||window_timer==3){
			//draw_line_width_colour(pre_fsp_x-((tmp_x-(tmp_w/2.1))*spr_dir), y+tmp_y, x-((tmp_x+(tmp_w/2.1))*spr_dir), y+tmp_y, 6, c_or_red, c_or_red);
			draw_line_width_colour(x-((tmp_x-(tmp_w/2.1))*spr_dir), y+tmp_y, x-((tmp_x+(tmp_w/2.1))*spr_dir), y+tmp_y, 6, c_or_red, c_or_red);
			draw_line_width_colour(x-((tmp_x-(tmp_w/2.2))*spr_dir), y+tmp_y, x-((tmp_x+(tmp_w/2.2))*spr_dir), y+tmp_y, 6, c_pink, c_pink);
			draw_line_width_colour(x-((tmp_x-(tmp_w/1.8))*spr_dir), y+tmp_y, x-((tmp_x+(tmp_w/1.8))*spr_dir), y+tmp_y, 2, c_or_red, c_or_red);
			draw_line_width_colour(x-((tmp_x-(tmp_w/1.9))*spr_dir), y+tmp_y, x-((tmp_x+(tmp_w/1.9))*spr_dir), y+tmp_y, 2, c_pink, c_pink);
			draw_line_width_colour(x-((tmp_x-(tmp_w/2))*spr_dir), y+tmp_y, x-((tmp_x+(tmp_w/2))*spr_dir), y+tmp_y, 2, c_white, c_white);
			draw_line_width_colour(x-((tmp_x-(tmp_w/2.35))*spr_dir), y+tmp_y, x-((tmp_x+(tmp_w/2.35))*spr_dir), y+tmp_y, 6, c_white, c_white);
			
			//draw_line_width_colour(x, y+tmp_y, x+2, y+tmp_y, 6, c_lime, c_lime);
			//draw_line_width_colour(pre_fsp_x, y+tmp_y, pre_fsp_x+2, y+tmp_y, 6, c_fuchsia, c_fuchsia);
		}else{
			draw_line_width_colour(pre_fsp_x+((tmp_x+(tmp_w/2.25))*spr_dir), y+tmp_y, x-((tmp_x+(tmp_w/2.25))*spr_dir), y+tmp_y, 2, c_white, c_white);
		}
	}
}
if (state==PS_RESPAWN){
	draw_sprite_ext( sprite_get("plat_bg"), 0, x, y, spr_dir, 1, 0, -1, 1 ) 
}