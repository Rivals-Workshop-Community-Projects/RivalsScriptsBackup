alt_fix = player; //keep this line, on the online css the player is actually player 0, we later go on init_shader to check for this variable
alt_cur = get_player_color(player);

if(alt_prev != alt_cur){
	css_draw_time = 0;
	alt_prev = alt_cur;
}

if ("portrait" in self){
	var temp_x = floor(x+10);
	var temp_y = floor(y+10);
	
	var altbg = false;if(alt_cur==0 || alt_cur==3 || alt_cur==4 || alt_cur==6 || alt_cur==9 || alt_cur==10 || alt_cur==12
	|| alt_cur==15 || alt_cur==16 || alt_cur==17 || alt_cur==19 || alt_cur==20 || alt_cur==22 || alt_cur==30)altbg = true;
	draw_sprite_ext(altbg?sprite_get("charselectbg"):sprite_get("charselectbg_alt"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
	
	if ("prev_alt2" in self && prev_alt2 != alt_cur){
	    portrait = random_func(0, 10, true);//portrait = random_func(0, portrait_amount, true);
	    if(voicemode == 2)portrait = 0+random_func(0, 2, true);
	    if(portrait != 1){
		    set_victory_sidebar(sprite_get("result_small_1"));
	    }else{
		    set_victory_sidebar(sprite_get("result_small_2"));
	    }
	}
	
	prev_alt2 = alt_cur;
	
	if(portrait != 1){
	    draw_sprite_ext(sprite_get("charselect_1"),0,temp_x-2,temp_y-2,2,2,0,-1,1);//set_victory_portrait(sprite_get("portrait_1"));
	}else{
	    draw_sprite_ext(sprite_get("charselect_2"),0,temp_x-2,temp_y-2,2,2,0,-1,1);
	}
	     
	if(portrait > portrait_amount-1){
	    portrait = 0;
	}
}else{
	portrait = random_func(0, 10, true);//portrait = random_func(0, portrait_amount, true);
	if(voicemode == 2)portrait = 0+random_func(0, 2, true);
	if(portrait != 1){
		set_victory_sidebar(sprite_get("result_small_1"));//set_victory_portrait(sprite_get("portrait_1"));
	}else{
		set_victory_sidebar(sprite_get("result_small_2"));
	}
}

muno_event_type = 6;
user_event(14);

/*if(get_player_hud_color(player) != 8421504){
    draw_sprite_ext(sprite_get("css_button"), voicebutton, x+voice_button_pos[0], y+voice_button_pos[1], 2, 2, 0, c_white, 1);
}*/
draw_sprite_ext(sprite_get("css_button"), voicebutton, x+voice_button_pos[0], y+voice_button_pos[1], 2, 2, 0, c_white, 1);

cpu_hover_draw(); 

#define cpu_hover_draw()
    if (cpu_hover_time > 0) {
        var prog = min(cpu_hover_time/10, 1);
        var colprog = min(cpu_color_swap_time/5, 1);
        var col = merge_color(cpuh_prev_color, cpuh_new_color, colprog);
        draw_sprite_ext(cpu_hover_sprite, 0, x - 4, y - 6, 2, 2, 0, col, prog);
        draw_set_alpha(prog);
        draw_debug_text(plate_bounds[2]-17, plate_bounds[3]+1, `P${cpu_hovering_player}`);
        draw_set_alpha(1);
    }