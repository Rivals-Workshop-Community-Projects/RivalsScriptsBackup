if(!instance_exists(cursor_id)) exit;
//Button Location
var temp_xl = 0;
var temp_yl = 0;
if player == 0{ // player online
	temp_xl = 178
	temp_yl = 128
}
else {
	if get_player_hud_color(player) == 8421504 { //if CPU offline
		temp_xl = 178
		temp_yl = 34
	}else{ //if player offline
		temp_xl = 178
		temp_yl = 34
	}

}
var temp_bw = 30 // button width
var temp_bh = 26
var temp_xl1 = x+temp_xl
var temp_xl2 = temp_xl1+temp_bw
var temp_yl1 = y+temp_yl
var temp_yl2 = temp_yl1+temp_bh
draw_set_halign(fa_left);

if get_synced_var(player) > 3 {
	set_synced_var( player, 0)
}
if("cssframes" not in self){cssframes = 0;}
if("voiced" not in self){voiced = get_synced_var(player);}
if("voicebutton" not in self){voicebutton = voiced * 3;}
if("voicebuttoncurrent" not in self){voicebuttoncurrent =  voiced * 3;}
if voicebutton == 2 || voicebutton == 5 || voicebutton == 8 || voicebutton == 11 {
	if cssframes == 0{
	sound_stop(sound_get("rattle_me_bones0"));
	sound_stop(sound_get("cc_rattle_me_bones0"));
    sound_stop(sound_get("gf_rattle_me_bones0"));
		if voicebutton == 2{
			sound_play(sound_get("rattle_me_bones0"));
			voiced = 1;
			voicebuttoncurrent = voicebutton;
		}
		if voicebutton == 5{
			sound_play(sound_get("cc_rattle_me_bones0"));
			voiced = 2;
			voicebuttoncurrent = voicebutton;
		}
        if voicebutton == 8 {
            sound_play(sound_get("gf_rattle_me_bones0"));
            voiced = 3;
            voicebuttoncurrent = voicebutton;
        }
		if voicebutton == 11{
			voiced = 0;
			voicebuttoncurrent = voicebutton;
		}

	}
	cssframes++;
	if cssframes == 5{
		cssframes = 0;
		voicebutton += 1;
		if voicebutton > 11 {
			voicebutton -= 12;
		}
		voicebuttoncurrent = voicebutton;
	}
}

var x_temp = get_instance_x(cursor_id);
var y_temp = get_instance_y(cursor_id);
if (x_temp>temp_xl1 && x_temp<temp_xl2 && y_temp>temp_yl1 && y_temp<temp_yl2){ 	
	if voicebutton == voicebuttoncurrent {
		if voicebutton == 0 || voicebutton == 3 || voicebutton == 6 || voicebutton == 9 {
			voicebutton += 1;
		}
	}
}else{
	if voicebutton == 1 || voicebutton == 4 || voicebutton == 7 || voicebutton == 10 {
		voicebutton -= 1;
	}
	voicebuttoncurrent = voicebutton;
}
if voicebutton == 1 || voicebutton == 4 || voicebutton == 7 || voicebutton == 10 {
	if menu_a_pressed{
		voicebutton += 1;
		voicebuttoncurrent = voicebutton;
	}	
}