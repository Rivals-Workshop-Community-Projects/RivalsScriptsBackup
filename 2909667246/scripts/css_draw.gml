alt_fix = player; //keep this line, on the online css the player is actually player 0, we later go on init_shader to check for this variable
alt_cur = get_player_color(player);

if(alt_prev != alt_cur){
	drawtime = 0;
	alt_prev = alt_cur;
}

if ("portrait" in self){
	var temp_x = floor(x+10);
	var temp_y = floor(y+10);
	
	draw_sprite_ext(sprite_get("charselectbg"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
	
	if ("prev_alt2" in self && prev_alt2 != alt_cur){
	    portrait = random_func(0, portrait_amount, true);
	    if(portrait == 0){
		    set_victory_sidebar(sprite_get("result_small_1"));
	    }else if(portrait == 1){
		    set_victory_sidebar(sprite_get("result_small_2"));
	    }
	}
	
	prev_alt2 = alt_cur;
	
	if(portrait == 0){
	    draw_sprite_ext(sprite_get("charselect_1"),0,temp_x-2,temp_y-2,2,2,0,-1,1);set_victory_portrait(sprite_get("portrait_1"));
	}else if(portrait == 1){
	    draw_sprite_ext(sprite_get("charselect_2"),0,temp_x-2,temp_y-2,2,2,0,-1,1);set_victory_portrait(sprite_get("portrait_2"));
	}
	     
	if(portrait > portrait_amount-1){
	    portrait = 0;
	}
}else{
	portrait = random_func(0, portrait_amount, true);
	if(portrait == 0){
		set_victory_sidebar(sprite_get("result_small_1"));set_victory_portrait(sprite_get("portrait_1"));
	}else if(portrait == 1){
		set_victory_sidebar(sprite_get("result_small_2"));set_victory_portrait(sprite_get("portrait_2"));
	}
}

if(get_player_color(player) >= 15 && get_player_color(player) <= 21){
	draw_sprite_ext(sprite_get("icon_gip_2"),1,x+183,y+114,2,2,0,-1,1);
}

muno_event_type = 6;
	user_event(14);