muno_event_type = 6;
user_event(14);

var alt_cur = get_player_color(player);
var num_alts = 12;
var offset = 0;
for(i = 0; i < num_alts; i++){
    var draw_color = (i == alt_cur - offset) ? c_white : c_gray * 0.5;
    var draw_x = x + 78 + 8 * i;
    rectDraw(draw_x, y + 10, 5, 3, draw_color);
}
sprite_change_offset("hud_base", 0, -2);
set_ui_element(UI_HUD_ICON, sprite_get("hud_base"));
set_ui_element(UI_HUDHURT_ICON, sprite_get("hudhurt_base"));
set_ui_element(UI_OFFSCREEN, sprite_get("offscreen_base"));
// Button Code
	if get_player_hud_color(player) == 8421504{
		var tmp_cur = 0;
		var tmp_i = [0, 0, 0, 0, 0];
		var tmp_x = [0, 0, 0, 0, 0];
		var tmp_y = [0, 0, 0, 0, 0];
		with(asset_get("cs_playercursor_obj")){
			tmp_cur = (!tmp_i[0])?0:(!tmp_i[1])?1:(!tmp_i[2])?2:(!tmp_i[3])?3:4
			tmp_i[tmp_cur] = 1
			tmp_x[tmp_cur] = get_instance_x( self );
			tmp_y[tmp_cur] = get_instance_y( self );
		}
		var tmp_pt = abs(player-5)-1
		var temp_x = x + 8;
		var temp_y = y + 9;
	}else{
		var tmp_cur = 0;
		var tmp_i = [0, 0, 0, 0, 0];
		var tmp_x = [0, 0, 0, 0, 0];
		var tmp_y = [0, 0, 0, 0, 0];
		with(asset_get("cs_playercursor_obj")){
			tmp_cur = (!tmp_i[0])?0:(!tmp_i[1])?1:(!tmp_i[2])?2:(!tmp_i[3])?3:4
			tmp_i[tmp_cur] = 1
			tmp_x[tmp_cur] = get_instance_x( self );
			tmp_y[tmp_cur] = get_instance_y( self );
		}
		var tmp_pt = abs(player-5)-1
		var temp_x = x + 8;
		var temp_y = y + 9;
	}

//Button Location
if player == 0{ // player online
	var tmp_xl = 16
	var tmp_yl = 48
}else{
	if get_player_hud_color(player) == 8421504 { //if CPU offline
		var tmp_xl = 58
		var tmp_yl = 178
	}else{ //if player offline
		var tmp_xl = 74
		var tmp_yl = 178
	}

}
var tmp_bw = 30 // button width
var tmp_bh = 26
var tmp_xl1 = x+tmp_xl
var tmp_xl2 = tmp_xl1+tmp_bw
var tmp_yl1 = y+tmp_yl
var tmp_yl2 = tmp_yl1+tmp_bh
draw_set_halign(fa_left);

if get_synced_var(player) > 2 {
	set_synced_var( player, 0)
}
if("cssframes" not in self){cssframes = 0;}
if("voiced" not in self){voiced = get_synced_var(player);}
if("voicebutton" not in self){voicebutton = voiced * 3;}
if("voicebuttoncurrent" not in self){voicebuttoncurrent =  voiced * 3;}
if voicebutton == 2 || voicebutton == 5 || voicebutton == 8 {
	if cssframes == 0{
	sound_stop(sound_get("vcEN_vgkn600"));
	sound_stop(sound_get("vcJP_vgkn600"));
		if voicebutton == 2{
			sound_play(sound_get("vcEN_vgkn600"));
			voiced = 1;
			voicebuttoncurrent = voicebutton;
		}
		if voicebutton == 5{
			sound_play(sound_get("vcJP_vgkn600"));
			voiced = 2;
			voicebuttoncurrent = voicebutton;
		}
		if voicebutton == 8{
			voiced = 0;
			voicebuttoncurrent = voicebutton;
		}

	}
	cssframes++;
	if cssframes == 5{
		cssframes = 0;
		voicebutton += 1;
		if voicebutton > 8 {
			voicebutton -= 9;
		}
		voicebuttoncurrent = voicebutton;
	}
}
if (tmp_x[tmp_pt]>tmp_xl1 && tmp_x[tmp_pt]<tmp_xl2 && tmp_y[tmp_pt]>tmp_yl1 && tmp_y[tmp_pt]<tmp_yl2){ 	
	if voicebutton == voicebuttoncurrent {
		if voicebutton == 0 || voicebutton == 3 || voicebutton == 6 {
			voicebutton += 1;
		}
	}
}else{
	if voicebutton == 1 || voicebutton == 4 || voicebutton == 7 {
		voicebutton -= 1;
	}
	voicebuttoncurrent = voicebutton;
}
if voicebutton == 1 || voicebutton == 4 || voicebutton == 7 {
	if menu_a_pressed{
		voicebutton += 1;
		voicebuttoncurrent = voicebutton;
	}	
}
set_synced_var( player, voiced)
draw_sprite_ext(sprite_get("cssvoice_button"), 0+voicebutton, x + tmp_xl, y + tmp_yl, 1, 1, 0, c_white, 1);

#define rectDraw(x1, y1, width, height, color)
draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);