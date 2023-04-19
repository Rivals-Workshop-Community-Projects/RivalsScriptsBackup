//debug-draw

//draw_debug_text(x,y,string(id));
//draw_debug_text(x,y,string(enemykirby));


//TESTSTESTSETSETSETSETSETSETSTSTEESTESTSTSTSETS
	var s_l = floor(view_get_xview()); //screen_left
	var s_m = floor(view_get_xview()+(view_get_wview()/2)); //screen_middle
	var s_t = floor(view_get_yview()); //screen_top
	
	var bn_x = s_l+16;//begin_x
	var bn_y = s_t+128;//begin_y
	var bn_xr = bn_x+4;//begin_xreal
	var b_w = 180;//bar_width
	var b_h = 24;//bar_height
	
/*
	var c_w = c_white
	var c_b = c_black
	var c_aA = $FFEEBB//$a16622//#2266a1;//$FFEEBB//#BEF;
	var c_aB = $BFF2DF//$2c703b//#3b702c;//$BFF2DF//#DFF2BF;
	var c_aC = $B3EFFE//$1c5b80//#805b1c;//$B3EFFE//#FEEFB3;
	var c_aD = $BABAFF//$312c8a//#8a2c31;//$BABAFF//#FFBABA;
	var c_bA = $a16622
	var c_bB = $2c703b
	var c_bC = $1c5b80
	var c_bD = $312c8a
	
	var c_wl_t = $555555;//color_whifflag_true
	var c_wl_f = $999999;//color_whifflag_false
	
	var str_w_length = 0;//storage_window_length (array probably)
	var str_t_length = 0;//storage_total_length
	var str_w_exists = 0;//storage_window_exists (array probably)
	var str_w_e_total = 0;//storage_window_exists_total
	var str_w_hasbreak = 0;//storage_window_hasbreak ("window list has blank window inbetween")
	//var str_w_e_nosp = 0;//storage_window_exists_nospace (array probably, ridiculous)
	
	var maxwindow = 20;//amount of windows to check.
	
	
for (var t = 1; t <= maxwindow; t += 1){
	str_w_length[t] = get_window_value( attack, t, AG_WINDOW_LENGTH );
	str_t_length += get_window_value( attack, t, AG_WINDOW_LENGTH );
	if (str_w_length[t]!=0){
		str_w_exists[t] = true;
		str_w_e_total++;
		if (t>2){//minimum
			if (str_w_length[t-1]==0){//checks for entry before, if false...
				str_w_hasbreak++;
			}
		}
	}else{
		str_w_exists[t] = false;
	}
}//forloop
	//print("---");
	//print("current window dur: "+string(str_w_length[window]));
	//print("window dur total: "+string(str_t_length));
	//print("window exist total: "+string(str_w_e_total));
	//print("break detected: "+string(str_w_hasbreak));
	
	draw_set_alpha(0.3);
	//temporary bg
	draw_rectangle_colour(bn_xr, bn_y, bn_xr+b_w-1, bn_y+b_h-1, c_w, c_w, c_w, c_w, false);
	draw_set_alpha(1);
	
	var total_win_final = str_w_e_total + str_w_hasbreak;
	var total_dur_final = str_t_length + (str_w_hasbreak*4);
	var drawn_window_cur = 0;//keeps track how many windows it has drawn thus far
	var drawn_window_a = 0;//keeps track of drawn windows/breaks in order. it's an array, ridiculous. it stores the x coords
	var drawn_window_w = 0;//keeps track of drawn windows/breaks in order. it's an array, ridiculous. it stores the width
	var drawn_window_wtotal = 0;
	var color_track = 0;
	var cur_ref_seek = 0;
	var cur_ref_x = 0;
	
for (var t = 1; t <= maxwindow; t += 1){
	if(str_w_exists[t]){
		//yes
		if (t>2){//minimum
			if (str_w_length[t-1]==0){//checks for entry before, if false...
				if (drawn_window_cur>0){
					drawn_window_a[drawn_window_cur] = drawn_window_a[drawn_window_cur-1]+drawn_window_w[drawn_window_cur-1];
					drawn_window_w[drawn_window_cur] = round( b_w/(total_dur_final/4) );
					drawn_window_cur++;
					//drawn_window_w[drawn_window_cur-1]+=round( b_w/(total_dur_final/4) );
					//print("happened at: "+string(t))
				}
			}
		}
		var tmp_w = round( b_w/(total_dur_final/str_w_length[t]) ); //180(41/6), etc
		var coltouse = (color_track==0)?c_aA:(color_track==1)?c_aB:(color_track==2)?c_aC:(color_track==3)?c_aD:c_b
		var colbg = (color_track==0)?c_bA:(color_track==1)?c_bB:(color_track==2)?c_bC:(color_track==3)?c_bD:c_b
		var bn_xt = (drawn_window_cur==0)?bn_xr: drawn_window_a[drawn_window_cur-1]+drawn_window_w[drawn_window_cur-1] ;//begin_xtrue
		var endofcube = (drawn_window_cur+1==total_win_final)?(bn_xr+b_w-1):(bn_xt+tmp_w-1)
		//print(string(drawn_window_cur)+string(total_win_final))
		if (get_window_value( attack, t, AG_WINDOW_HAS_WHIFFLAG )){
			//wiffed lag
			var wl_color = (has_hit_player)?c_wl_f:c_wl_t
			draw_rectangle_colour(bn_xt, bn_y+b_h-1, endofcube, bn_y+b_h+4-1, wl_color, wl_color, wl_color, wl_color, false);
		}
		//main color square
		draw_rectangle_colour(bn_xt, bn_y, endofcube, bn_y+b_h-1, colbg, colbg, colbg, colbg, false);
		if (tmp_w > 4){
			//inside square
			draw_rectangle_colour(bn_xt+2, bn_y+2, endofcube-2, bn_y+b_h-2-1, coltouse, coltouse, coltouse, coltouse, false);
		}
		drawn_window_a[drawn_window_cur] = bn_xt;
		drawn_window_w[drawn_window_cur] = tmp_w;
		drawn_window_cur++;
		color_track++; if (color_track>3){color_track=0}
		if (t==window){
			if (get_window_value( attack, t, AG_WINDOW_HAS_WHIFFLAG )&&!has_hit_player){
			var wltest = 1.5;
			}else{
			var wltest = 1;
			}
			cur_ref_seek = round( tmp_w*( (window_timer)/(str_w_length[t]*wltest) ) );
			cur_ref_x = bn_xt
			//print(string(cur_ref_seek));
		}
	}else{
		//
	}
}//forloop
	
	//var cur_x_pc = attack_timer/str_t_length;//cursor_x_precalculate
	//var cur_x_pc = //???;//cursor_x_precalculate
	
	//-the outline's:
	//l
	draw_rectangle_colour(bn_x-2, bn_y-2, bn_x+4-1, bn_y+b_h+2-1, c_b, c_b, c_b, c_b, false);
	//r
	draw_rectangle_colour(bn_x+b_w+8-4, bn_y-2, bn_x+b_w+8+2-1, bn_y+b_h+2-1, c_b, c_b, c_b, c_b, false);
	//-the real:
	//leftmost border
	draw_rectangle_colour(bn_x, bn_y, bn_x+2-1, bn_y+b_h-1, c_w, c_w, c_w, c_w, false);
	//rightmost border
	draw_rectangle_colour(bn_x+b_w+8-2, bn_y, bn_x+b_w+8-1, bn_y+b_h-1, c_w, c_w, c_w, c_w, false);
	//the cursor
	//transparent (upper half)
	draw_set_alpha(0.15);
	draw_rectangle_colour(cur_ref_x+cur_ref_seek-2, bn_y+8, cur_ref_x+cur_ref_seek+2+1, bn_y+b_h-1, c_b, c_b, c_b, c_b, false);
	draw_set_alpha(1);
	//solid (lower half)
	draw_rectangle_colour(cur_ref_x+cur_ref_seek-2, bn_y+b_h, cur_ref_x+cur_ref_seek+2+1, bn_y+b_h+10-1, c_b, c_b, c_b, c_b, false);
	//main
	draw_rectangle_colour(cur_ref_x+cur_ref_seek, bn_y+10, cur_ref_x+cur_ref_seek+1, bn_y+b_h+8-1, c_w, c_w, c_w, c_w, false);
	
	*/
	
	
	
	
	
//-------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------

if (aodev == true){
	
	var scrleft = floor(view_get_xview());
	var scrmiddle = floor(view_get_xview()+(view_get_wview()/2));
	var scrtop = floor(view_get_yview());
	
	draw_debug_text(scrleft+16,scrtop+16,string(floor(fps))+" fps");
	draw_debug_text(scrmiddle+250,scrtop+16," ... "+"Last refresh: "+string(floor(( aodevcount/60 )/60))+" Minute(s)");
	
	if (y > scrtop+250 || x > scrleft+250){
	draw_debug_text(scrleft+16,scrtop+32,"player "+string(player)+" - hsp "+string(hsp)+" - vsp "+string(vsp));
	draw_debug_text(scrleft+16,scrtop+48,"state ["+get_state_name(state)+"] ("+string(state)+") - ("+string(state_cat)+") - ("+string(state_timer)+")");
	draw_debug_text(scrleft+16,scrtop+64,"attack ("+string(attack)+") - ("+string(window)+") - ("+string(window_timer)+")");
	draw_debug_text(scrleft+16,scrtop+80,"spr_index ("+string(sprite_index)+") - ("+string(clamp(image_index,0,100))+")");
	draw_debug_text(scrleft+16,scrtop+96,"hb_index ("+string(hurtboxID.sprite_index)+") - ("+string(hurtboxID.image_index)+") tst:"+string(move_cooldown[AT_FSPECIAL]));
	draw_debug_text(scrleft+16,scrtop+112,"id: "+string(id)+" sp: "+string(is_special_pressed( DIR_DOWN ))+" a: "+string(fsp_buffer));
	
	//draw_debug_text(scrleft+16,scrtop+144,"AODEV is "+string(aodev)+".");
	draw_debug_text(scrleft+16,scrtop+144+b_h+4,"AODEV is "+string(aodev)+".");
	
	if (id % 10 == 0){
	draw_debug_text(scrleft+16,scrtop+160+b_h+4,"turn off playstation");
	draw_debug_text(scrleft+16,scrtop+176+b_h+4,"marvin picks up tool");
	draw_debug_text(scrleft+16,scrtop+192+b_h+4,"hurts me when");
	draw_debug_text(scrleft+16,scrtop+208+b_h+4,"playstation on");
	}
	else{
	draw_debug_text(scrleft+16,scrtop+160+b_h+4,"please turn off AODEV");
	draw_debug_text(scrleft+16,scrtop+176+b_h+4,"before releasing");
	}
	
	}
	else{
		draw_debug_text(scrleft+16,scrtop+32,"elements hidden");
	}
	
	if (state==32){
	draw_debug_text(scrleft+16,scrtop+240,"topblast "+string(get_stage_data( SD_TOP_BLASTZONE )));
	draw_debug_text(scrleft+16,scrtop+256,"bottomblast "+string(get_stage_data( SD_BOTTOM_BLASTZONE )));
	draw_debug_text(scrleft+16,scrtop+272,"sideblast "+string(get_stage_data( SD_SIDE_BLASTZONE )));
	draw_debug_text(scrleft+16,scrtop+288,"roomwidth "+string(room_width));
	draw_debug_text(scrleft+16,scrtop+304,"roomheight "+string(room_height));
	draw_debug_text(scrleft+16,scrtop+320,"roomspeed "+string(room_speed));
	}
	
	
	
with (obj_article1){
draw_debug_text(x+30,y,string("article 1"));
	if (player_id == other.id){
		draw_debug_text(x+30,y+16,"ao's");
	}
}
with (obj_article2){
draw_debug_text(x+30,y,string("article 2"));
	if (player_id == other.id){
		draw_debug_text(x+30,y+16,"ao's");
		draw_debug_text(x+30,y+32,string(state_end));
	}
}
with (obj_article3){
draw_debug_text(x+30,y,string("article 3"));
	if (player_id == other.id){
		draw_debug_text(x+30,y+16,"ao's");
	}
}
with (hit_fx_obj){
draw_debug_text(round(x+30),round(y),string("hitfx"));
	draw_debug_text(round(x+30),round(y+16),string(hit_fx));
}

with (oPlayer){
	if (id != other.id){
		draw_debug_text(x-50,y+16,"hsp:"+string(hsp));
		draw_debug_text(x+30,y+16,"old:"+string(old_hsp));
		draw_debug_text(x-50,y+32,"vsp:"+string(vsp));
		draw_debug_text(x+30,y+32,"old:"+string(old_vsp));
		draw_debug_text(x-40,y+48,"last_attack "+string(last_attack)+" - "+string(last_hbox_num));
		draw_debug_text(x-40,y+64,"a: "+string("a"));
		draw_debug_text(x-40,y+80,"attack: "+string(attack));
		draw_debug_text(x-40,y+96,string(orig_knock));
	}
}


}//aodev check













