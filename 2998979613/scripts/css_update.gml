//template
cpu_hover_update(); //put this at the VERY TOP of the file.

alt_cur = get_player_color("alt_fix" in self? alt_fix: player);
onlpl = "alt_fix" in self? alt_fix: player;

if alt_cur != 0{
	set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("result_small"));
	set_ui_element(UI_CHARSELECT, sprite_get("charselect"));
	set_ui_element(UI_HUD_ICON, sprite_get("hud"));
	set_ui_element(UI_OFFSCREEN, sprite_get("offscreen"));
}else{
	set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait_corrected"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("result_small_corrected"));
	set_ui_element(UI_CHARSELECT, sprite_get("charselect_corrected"));
	set_ui_element(UI_CHARSELECT, sprite_get("charselect_corrected"));
	set_ui_element(UI_HUD_ICON, sprite_get("hud_corrected"));
	set_ui_element(UI_OFFSCREEN, sprite_get("offscreen_corrected"));
}

//rotate centre segment randomly
if randrot_cool randrot_cool--
else if random_func_2(89, 5, 1) >= 3{
    mid_angle_target = floor(random_func_2(abs(floor(x%200)), 90, 1) - 45);
    randrot_cool = floor(abs(mid_angle_target)/4) + random_func_2(5, 20, 1);
}else{
	randrot_cool = floor(abs(mid_angle_target)/4) + random_func_2(5, 20, 1);
}
if css_angles[1] != mid_angle_target css_angles[@1] += sign(mid_angle_target - css_angles[1]);

//fx
if spr_alpha > 0{
	spr_alpha -= .05;
	offsets[@0] += .2 + 1.3*(spr_alpha < 1); 
	txt_alpha -= .05;
	text_offset += .05;
}
if prev_alt != alt_cur{
	sound_play(sound_get("css_change_alt"));
	offsets = [40, 100];
	text_offset = 0;
	spr_alpha = 6;
	txt_alpha = 6;
}

prev_alt = alt_cur;


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
print(get_synced_var(player))
if get_synced_var(onlpl) > 1{
	set_synced_var(onlpl, 0);
	voiced = 0;
}
if voicebutton == 2 || voicebutton == 5{
	if cssframes == 0{
	sound_stop(sound_get("voice_toggle"));
		if voicebutton == 2{
			sound_play(sound_get("voice_toggle"));
			voiced = 1;
			voicebuttoncurrent = voicebutton;
		}
		if voicebutton == 5{
			sound_play(sound_get("voice_toggle"));
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

//as always, #defines go at the bottom of the script.
#define cpu_hover_update()
var p = player;
var is_cpu = (get_player_hud_color(p) == 8421504);

if (is_cpu) {
    var pb = plate_bounds, cs = cursors;
    if (cpu_is_hovered) {
        var c = cs[@cpu_hovering_player]
        cursor_id = c;
        var cx = get_instance_x(c),
            cy = get_instance_y(c);
        if (cpu_hover_time < 10) cpu_hover_time++;
        if (cpu_color_swap_time < 5) cpu_color_swap_time++;
        if (cx != clamp(cx, pb[0],pb[2]) || cy != clamp(cy, pb[1],pb[3])) {
            cpu_is_hovered = false;
            c = cs[@p];
            cursor_id = c;
        }
    } else {
        var hplayer = get_new_hovering_player();
        if (cpu_hover_time > 0) cpu_hover_time--;
        if (hplayer != -1) {
            cpuh_new_color = get_player_hud_color(hplayer);
            if (cpu_hover_time > 0) {
                cpuh_prev_color = get_player_hud_color(cpu_hovering_player);
                cpu_color_swap_time = 0;
            } else { //if the player indicator is not being displayed already
                cpuh_prev_color = cpuh_new_color;
                cpu_color_swap_time = 10;
            }
            cpu_is_hovered = true;
            cpu_hovering_player = hplayer;
            cursor_id = cs[@hplayer];
        }
    }
}

#define get_new_hovering_player()
var pb = plate_bounds, cs = cursors;
for (var i = 1; i <= 4; i++) {
    var c = cs[@i];
    var cx = get_instance_x(c);
    var cy = get_instance_y(c);
    if cx == clamp(cx, pb[@0], pb[@2]) && cy == clamp(cy, pb[@1], pb[@3]) {
        return i;
    } 
}
return -1;