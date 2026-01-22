//AO CSS UPDATE

//x+166,y+38
//if (tmp_x[tmp_pt]>tmp_xl1 && tmp_x[tmp_pt]<tmp_xl2 && tmp_y[tmp_pt]>tmp_yl1 && tmp_y[tmp_pt]<tmp_yl2){

if (variable_instance_exists(id,"thing_init")){


var cur_x = get_instance_x(cursor_id)
var cur_y = get_instance_y(cursor_id)
var button_x = x+buttonloc_x
var button_y = y+buttonloc_y
var button_w = 15*2
var button_h = 13*2
var button_x_BR = button_x + button_w
var button_y_BR = button_y + button_h
var button_presser_dur = 6;

//my attempt at cpu cursor hover
var is_it_cpu = false;
var so_lets_say_it_is_hovered = false;
var lets_then_say_the_button_was_pressed = false;
if (get_player_hud_color( other.player ) == make_colour_rgb(128, 128, 128)){//this method breaks on TEAM mode cpu but c'est la vie
	is_it_cpu = true;
	//print("cpu it is")
	//my cursor code apparently
	var tmp_cur = 0;
	var tmp_i = [0, 0, 0, 0, 0];
	var tmp_x = [0, 0, 0, 0, 0];
	var tmp_y = [0, 0, 0, 0, 0];
	with(asset_get("cs_playercursor_obj")){
		tmp_cur = (!tmp_i[0])?0:(!tmp_i[1])?1:(!tmp_i[2])?2:(!tmp_i[3])?3:4
		tmp_i[tmp_cur] = 1
		tmp_x[tmp_cur] = get_instance_x( self )
		tmp_y[tmp_cur] = get_instance_y( self )
		if (tmp_x[tmp_cur]>button_x && tmp_x[tmp_cur]<button_x_BR && tmp_y[tmp_cur]>button_y && tmp_y[tmp_cur]<button_y_BR){
			so_lets_say_it_is_hovered = true;
		}
	}
}


if (cur_x>button_x && cur_x<button_x_BR && cur_y>button_y && cur_y<button_y_BR){//normal way
	so_lets_say_it_is_hovered = true;
}
//print(string(get_player_hud_color( player )))
if (so_lets_say_it_is_hovered){
	button_hover = true;
	if (is_it_cpu==false){//NOT cpu
		suppress_cursor = true;
		if (menu_a_pressed){
			lets_then_say_the_button_was_pressed = true;
		}
	}else{//IS cpu
		//then lets do some weird things
		if (cpu_hover>=cpu_hover_max){
			sound_stop(wacky_audio_shenanegans);
			lets_then_say_the_button_was_pressed = true;
		}else{
			cpu_hover++;
			sound_stop(wacky_audio_shenanegans);
			wacky_audio_shenanegans = sound_play(asset_get("mfx_hover"),false,noone,0.1+((cpu_hover/cpu_hover_max)/2),0.3+((cpu_hover/cpu_hover_max)/4));
		}
	}
	if (lets_then_say_the_button_was_pressed){
		if (button_cooldown==0){
			button_presstime = button_presser_dur;
			//print("local var PRE is : "+string(var_localstorage))
			if (var_localstorage==0){//if off
				var_localstorage = 1;//then on
				sound_play(asset_get("mfx_input_key"));
			}else{//if on
				var_localstorage = 0;//then off
				sound_play(asset_get("mfx_input_back"));
			}
			
			//sound_play(asset_get("mfx_option"))
			//print("local var is : "+string(var_localstorage))
			set_synced_var( player, var_localstorage );
			//print("synced var is : "+string(get_synced_var( player )))
		}
		button_cooldown = 6;
	}
	
	
}else{button_hover = false; suppress_cursor = false; 
if (cpu_hover>0){ if (cpu_hover >= cpu_hover_max){cpu_hover = 0;}else{cpu_hover=max(cpu_hover-2,0);}; button_cooldown = 0; };}
if (button_cooldown>0){ button_cooldown--; }
if (button_presstime>0){ button_presstime--; }


}