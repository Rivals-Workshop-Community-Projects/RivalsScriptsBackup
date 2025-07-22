//USHR CSS UPDATE

//x+166,y+38
//if (tmp_x[tmp_pt]>tmp_xl1 && tmp_x[tmp_pt]<tmp_xl2 && tmp_y[tmp_pt]>tmp_yl1 && tmp_y[tmp_pt]<tmp_yl2){

if (variable_instance_exists(id,"thing_init")){

var cur_x = get_instance_x(cursor_id)
var cur_y = get_instance_y(cursor_id)
var buttonloc_x = 14;//166
var buttonloc_y = 44;//38
var button_x = x+buttonloc_x
var button_y = y+buttonloc_y
var button_w = 18*2
var button_h = 18*2
var button_x_BR = button_x + button_w
var button_y_BR = button_y + button_h
if (get_synced_var( player )==2){//B
	if (get_player_color( player ) == 2){//starburst
		init_shader();
	}
}
if (cur_x>button_x && cur_x<button_x_BR && cur_y>button_y && cur_y<button_y_BR){
	button_hover = true;
	suppress_cursor = true;
	switch_pal_let = true;
	init_shader();
	if (menu_a_pressed){
		if (button_cooldown==0){
			//print("local var PRE is : "+string(var_localstorage))
			var_localstorage++;
			if (var_localstorage>3){
				var_localstorage = 0
			}
			reset_color_list = true;
			sound_stop(sound_get("gui_accept"))
			sound_play(sound_get("gui_accept"))
			sound_play(asset_get("mfx_change_color"))
			//print("local var is : "+string(var_localstorage))
			set_synced_var( player, var_localstorage );
			e_buffer = 0;
			//print("synced var is : "+string(get_synced_var( player )))
		}
		button_cooldown = 6;
	}
	if (menu_y_pressed&&menu_b_pressed){// !?
		if (button_cooldown==0){
			//print("local var PRE is : "+string(var_localstorage))
				e_buffer = 1;
			sound_stop(sound_get("gui_accept"))
			sound_stop(sound_get("gui_open"))
			sound_play(sound_get("gui_open"))
			sound_play(asset_get("mfx_change_color"))
			set_synced_var( player, var_localstorage );
		}
		button_cooldown = 6;
	}
	if (e_buffer >= 1 && e_buffer < 5){
		//print("yea")
		if (button_cooldown==0){
			if (menu_b_pressed){
				//sound_play(asset_get("mfx_change_color"))
				//print("ye")
				e_buffer++;
				button_cooldown = 6;
			}
			if (menu_y_pressed||menu_x_pressed){
				e_buffer = 0;
				button_cooldown = 60;
			}
		}
	}else if (e_buffer == 5){
		//print("mhm")
		if (menu_y_pressed && get_player_color(player)==0 && var_localstorage==3){
			if (button_cooldown==0){
				//print("local var PRE is : "+string(var_localstorage))
					var_localstorage = 4;
				reset_color_list = true;
				sound_stop(sound_get("gui_accept"))
				sound_stop(sound_get("gui_start"))
				sound_play(sound_get("gui_start"))
				sound_play(asset_get("mfx_change_color"))
				//print("local var is : "+string(var_localstorage))
				set_synced_var( player, var_localstorage );
				//print("synced var is : "+string(get_synced_var( player )))
			}
			button_cooldown = 6;
		}
		if (menu_b_pressed){
			sound_play(sound_get("gui_error"))
			e_buffer=0;
			button_cooldown = 60;
		}
	}else{
		if (menu_y_pressed){// ...
			if (button_cooldown==0){
				/*sound_stop(sound_get("gui_accept"))
				sound_stop(sound_get("gui_error"))
				sound_play(sound_get("gui_error"))*/
			button_cooldown = 60;
			}
		}
	}
}else{button_hover = false; suppress_cursor = false;}
if (button_cooldown>0){ button_cooldown--; }

}