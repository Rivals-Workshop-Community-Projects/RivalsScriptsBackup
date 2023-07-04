if(!instance_exists(cursor_id)) exit;

cpu_hover_update(); //put this at the VERY TOP of the file.

if(get_player_hud_color(player) == 8421504){
    voice_button_pos = [
        62,
        178,
        62 + sprite_get_width(sprite_get("css_button"))+10,
        178 + sprite_get_height(sprite_get("css_button"))+10
    ];
}else{
	voice_button_pos = [
	    74,
	    178,
	    74 + sprite_get_width(sprite_get("css_button"))+10,
	    178 + sprite_get_height(sprite_get("css_button"))+10
	];
	 
	if(player == 0){
	    voice_button_pos[0] = 42;
	    voice_button_pos[1] = 148;
	    voice_button_pos[2] = 42 + sprite_get_width(sprite_get("css_button"))+10;
	    voice_button_pos[3] = 148 + sprite_get_height(sprite_get("css_button"))+10;    
	}
}

//button stuff
var cur_x = get_instance_x(cursor_id);
var cur_y = get_instance_y(cursor_id);

if (cur_x > x+voice_button_pos[0] && cur_x < x+voice_button_pos[2] && cur_y > y+voice_button_pos[1] && cur_y < y+voice_button_pos[3] && !instance_exists(oTestPlayer)){
    if(!voice_hover && button_cool == 0){
        voice_hover = true;
        voicebutton = 1;
        voicebutton = voicemode*3+(voicebutton+4) % 4;
    }
    if (menu_a_pressed && button_cool == 0){
        button_cool = 8;
        voicebutton = 2;
        voicebutton = voicemode*3+(voicebutton+5) % 5;
        voicemode+=1;voicemode = (voicemode+5) % 5;
        set_synced_var(player, voicemode);
        sound_play(asset_get((voicemode==0)?"mfx_forward":"mfx_input_back"));
        voice_hover = false;
    }    
}else{
    voicebutton = 0;
    if(button_cool == 0)voicebutton = voicemode*3+(voicebutton+5) % 5;
    voice_hover = false;
}suppress_cursor = voice_hover;
if(button_cool>0)button_cool--;

if("css_draw_time" in self)css_draw_time++;
alt_fix = player;

if(css_draw_time == 1){
    sound_stop(voice);
	if(voicemode == 0){ //adventure
	    /*rand = random_func(0, 14, true);
	    if(rand == 0){
	    	voicemode = sound_play(sound_get(""));
	    }else if(rand == 1){
	    	voicemode = sound_play(sound_get(""));
	    }else if(rand == 2){
	    	voicemode = sound_play(sound_get(""));
	    }*/
	}
}
sound_stop(sound_get("hover loop"));
sound_stop(sound_get("hornet_loop"));
sound_stop(sound_get("laser charge loop"));

if(get_color_profile_slot_r(0,0) != 225){
    set_color_profile_slot(0, 0, 225, 28, 28);
}

if("css_timer" not in self)css_timer = 0; //why
css_timer += 1;
if(css_timer == 1800){
	if(voicemode == 0){ //adventure
		PlayVoiceClip("adv_stop_reading", 2);
	}else if(voicemode == 1){ //modern
		PlayVoiceClip("pollock_wasted_my_time", 2);
	}else if(voicemode == 2){ //alfred
		PlayVoiceClip("alfred_17_days", 2.25);
	}
}
if(css_timer == 3600){
	if(voicemode == 2){ //alfred
		PlayVoiceClip("alfred_3years", 2);
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
	
#define PlayVoiceClip
	/// PlayVoiceClip(name,?volume)
	//Plays SFX
	//if(!muted){
		sound_stop(sfx);
		sfx = sound_play(sound_get(argument[0]/* + (alt==21?" df":"")*/),false,noone,argument_count>1?argument[1]:1);
	//}