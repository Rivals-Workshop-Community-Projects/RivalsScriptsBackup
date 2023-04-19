// Stealing Supersonic's CPU Toggler script, ty Supersonic!

cpu_hover_update(); //put this at the VERY TOP of the file.

if ("eust_voicebuttCD" in self){
if(eust_voicebuttCD > 0){eust_voicebuttCD--;}
}

var cursedX = get_instance_x(cursor_id);
var cursedY = get_instance_y(cursor_id);

//literally stealing this shit from Muno
//he must never know about this

if player == 0{ // player online
	var buttposX = 16
	var buttposY = 48
}else{
	if get_player_hud_color(player) == 8421504 { //if CPU offline
		var buttposX = 58
		var buttposY = 178
	}else{ //if player offline
		var buttposX = 74
		var buttposY = 178
	}

}

var muteBW = 30;
var muteBH = 26;
var muteXLim = x + buttposX;
var muteYLim = y + buttposY;

//thanks muno ily

if (get_synced_var(player) >= 2) {set_synced_var(player, 0);}

if ("eust_voicebuttCD" in self) && ("eust_vobuttcycle" in self){
if((cursedX > muteXLim) && (cursedX < (muteXLim + muteBW)) && (cursedY > muteYLim) && (cursedY < (muteYLim + muteBH))){
	if(eust_vobuttcycle == 0){eust_vobuttcycle = 1;}
	if(eust_vobuttcycle == 3){eust_vobuttcycle = 4;}
	if(menu_a_pressed && eust_voicebuttCD == 0){
		eust_vobuttcycle++;
		eust_voicebuttCD = 30;	// half-second cooldown between pressing the button or not
		if (get_synced_var(player) == 0){set_synced_var(player, 1);} else {set_synced_var(player, 0);}
		sound_play(asset_get("mfx_input_key"));
	}
}
else{
	if(eust_vobuttcycle == 1){eust_vobuttcycle = 0;}
	if(eust_vobuttcycle == 4){eust_vobuttcycle = 3;}
}

if(eust_vobuttcycle == 2 && eust_voicebuttCD < 24){eust_vobuttcycle = 3;}
if(eust_vobuttcycle == 5 && eust_voicebuttCD < 24){eust_vobuttcycle = 0;}

if(eust_voicebuttCD == 29){
	if(get_synced_var(player) == 0){sound_play(sound_get("css_select"));}
	if(get_synced_var(player) == 1){sound_play(sound_get("css_mute"));}
}
}



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