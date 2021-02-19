//debug-draw

//draw_debug_text(x,y,string(id));
//draw_debug_text(x,y,string(enemykirby));

if (natdev == true){
	
	var scrleft = floor(view_get_xview());
	var scrmiddle = floor(view_get_xview()+(view_get_wview()/2));
	var scrtop = floor(view_get_yview())+120
	
	draw_debug_text(scrleft+16,scrtop+16,string(floor(fps))+" fps");
	
	if (y > scrtop+250 || x > scrleft+250){
	draw_debug_text(scrleft+16,scrtop+32,"player "+string(player)+" - hsp "+string(hsp)+" - vsp "+string(vsp));
	draw_debug_text(scrleft+16,scrtop+48,"state ["+get_state_name(state)+"] ("+string(state)+") - ("+string(state_cat)+") - ("+string(clamp(state_timer,-2,500))+")");
	draw_debug_text(scrleft+16,scrtop+64,"attack ("+string(attack)+") - ("+string(window)+") - ("+string(window_timer)+")");
	draw_debug_text(scrleft+16,scrtop+80,"spr_index ("+string(sprite_index)+") - ("+string(clamp(image_index,0,100))+")");
	draw_debug_text(scrleft+16,scrtop+96,"hb_index ("+string(hurtboxID.sprite_index)+") - ("+string(hurtboxID.image_index)+")");
	draw_debug_text(scrleft+16,scrtop+112,"id: "+string(id)+" charge: "+string(strong_charge)+" - prevstate:("+string(prev_state)+")");
	
	draw_debug_text(scrleft+16,scrtop+144,"NATDEV is "+string(natdev)+".");
	
	if (id % 10 == 0){
	draw_debug_text(scrleft+16,scrtop+160,"turn off playstation");
	draw_debug_text(scrleft+16,scrtop+176,"marvin picks up tool");
	draw_debug_text(scrleft+16,scrtop+192,"hurts me when");
	draw_debug_text(scrleft+16,scrtop+208,"playstation on");
	}
	else{
	draw_debug_text(scrleft+16,scrtop+160,"please turn off NATDEV");
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
	
	
//	draw_debug_text(x-10,y+10,string(get_attack_value(AT_FAIR, AG_LANDING_LAG)));
//	draw_debug_text(x-10,y+10,string(arc_active));
//	draw_debug_text(x-10,y+10,string(hitpause));
//	draw_debug_text(x-10,y+10,string(asset_get("empty_sprite")));
//	draw_debug_text(x-10,y+10,string(arc_num_max));
//	draw_debug_text(x-10,y+10,string(ar_rain_immune));
//	draw_debug_text(x-10,y+10,string(jiseffect));
//	draw_debug_text(x-10,y+10,string(current_second));
//	draw_debug_text(x-10,y+10,string(AT_FTHROW));
	
	
	
	

with (oPlayer){
	if (id != other.id){
		draw_debug_text(x-50,y+16,"hsp:"+string(hsp));
		draw_debug_text(x+30,y+16,"old:"+string(old_hsp));
		draw_debug_text(x-50,y+32,"vsp:"+string(vsp));
		draw_debug_text(x+30,y+32,"old:"+string(old_vsp));
		draw_debug_text(x-40,y+48,"last_attack "+string(last_attack)+" - "+string(last_hbox_num));
		draw_debug_text(x-40,y+80,"attack: "+string(attack));
		draw_debug_text(x-40,y+96,string(orig_knock));
	}
}


}