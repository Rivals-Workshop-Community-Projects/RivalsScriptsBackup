alt_cur = get_player_color("alt_fix" in self? alt_fix: player);

if(!instance_exists(cursor_id)) exit;
//Button Location
if player == 0{ // player online
	var tmp_xl = 80
	var tmp_yl = 12
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
var tmp_bh = 26 // button height
var tmp_xl1 = x+tmp_xl
var tmp_xl2 = tmp_xl1+tmp_bw
var tmp_yl1 = y+tmp_yl
var tmp_yl2 = tmp_yl1+tmp_bh
draw_set_halign(fa_left);
if get_synced_var(onlpl) > 1{
	set_synced_var(onlpl, 0);
}

if voicebutton == 2 || voicebutton == 5{
	if cssframes == 0{
	sound_stop(voice_playing_sound);
		if voicebutton == 2{
			voice_play(VC_CSS);
			voiced = 1;
			voicebuttoncurrent = voicebutton;
		}
		if voicebutton == 5{
			voiced = 0;
			voicebuttoncurrent = voicebutton;
		}

	}
	cssframes++;
	if cssframes == 5{
		cssframes = 0;
		voicebutton += 1;
		if voicebutton > 5 voicebutton -= 6;
		voicebuttoncurrent = voicebutton;
	}
}
var x_temp = get_instance_x(cursor_id);
var y_temp = get_instance_y(cursor_id);
if (x_temp>tmp_xl1 && x_temp<tmp_xl2 && y_temp>tmp_yl1 && y_temp<tmp_yl2){ 
	if player == 0 suppress_cursor = true;
	if voicebutton == voicebuttoncurrent && (voicebutton == 0 || voicebutton == 3) voicebutton += 1;
}else{
	if voicebutton == 1 || voicebutton == 4 voicebutton -= 1;
	voicebuttoncurrent = voicebutton;
}
if (voicebutton == 1 || voicebutton == 4) && menu_a_pressed{
	voicebutton += 1;
	voicebuttoncurrent = voicebutton;
}
set_synced_var(onlpl, voiced);


#define voice_play
/// voice_play(idx, force_voice = -1, flash = 0;)
var idx = argument[0];
var force_voice = argument_count > 1 ? argument[1] : -1;
var flash = argument_count > 2 ? argument[2] : 0;;

if !voice return;

var selected = (force_voice >= 0? force_voice: min(random_func(idx, vcs[idx][0] + vcs[idx][1], true), vcs[idx][0] - 1 + vcs[idx][1]));
if selected >= vcs[idx][0] return;
selected = (idx/10 >= 1? "": "0") + string(idx) + string(selected);

if selected != noone{
	sound_stop(voice_playing_sound);
	voice_playing_sound = sound_play(sound_get("vc_" + selected), false, noone, 200);
}