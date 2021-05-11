//debug-draw

//draw_debug_text(x,y,string(id));
//draw_debug_text(x,y,string(enemykirby));

if (aodev == true){
	
	var scrleft = floor(view_get_xview());
	var scrmiddle = floor(view_get_xview()+(view_get_wview()/2));
	var scrtop = floor(view_get_yview());
	
	draw_debug_text(scrleft+16,scrtop+16,string(floor(fps))+" fps");
	
	if (y > scrtop+250 || x > scrleft+250){
	draw_debug_text(scrleft+16,scrtop+32,"player "+string(player)+" - hsp "+string(hsp)+" - vsp "+string(vsp));
	draw_debug_text(scrleft+16,scrtop+48,"state ["+get_state_name(state)+"] ("+string(state)+") - ("+string(state_cat)+")");
	draw_debug_text(scrleft+16,scrtop+64,"attack ("+string(attack)+") - ("+string(window)+") - ("+string(window_timer)+")");
	draw_debug_text(scrleft+16,scrtop+80,"spr_index ("+string(sprite_index)+") - ("+string(clamp(image_index,0,100))+")");
	draw_debug_text(scrleft+16,scrtop+96,"hb_index ("+string(hurtboxID.sprite_index)+") - ("+string(hurtboxID.image_index)+") tst:"+string(move_cooldown[AT_FSPECIAL]));
	draw_debug_text(scrleft+16,scrtop+112,"id: "+string(id)+" sp: "+string(is_special_pressed( DIR_DOWN ))+" a: "+string(fsp_buffer));
	
	draw_debug_text(scrleft+16,scrtop+144,"AODEV is "+string(aodev)+".");
	
	if (id % 10 == 0){
	draw_debug_text(scrleft+16,scrtop+160,"turn off playstation");
	draw_debug_text(scrleft+16,scrtop+176,"marvin picks up tool");
	draw_debug_text(scrleft+16,scrtop+192,"hurts me when");
	draw_debug_text(scrleft+16,scrtop+208,"playstation on");
	}
	else{
	draw_debug_text(scrleft+16,scrtop+160,"please turn off AODEV");
	draw_debug_text(scrleft+16,scrtop+176,"before releasing");
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


}