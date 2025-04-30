if (get_instance_x(cursor_id) >= preview_x + 136 && get_instance_x(cursor_id) <= preview_x + 142 + 30 
	&& get_instance_y(cursor_id) >= preview_y + 138 && get_instance_y(cursor_id) <= preview_y + 138 + 26)
{ if (voicebuttoncurrent == voicebutton){
	if (voicebutton != 7 && menu_a_pressed){
    		voicebutton = 7;
    		set_synced_var(player, 7);
    		voicebuttoncurrent = voicebutton;
    		sound_play(asset_get("mfx_change_color"));
    	}
	else if (voicebutton == 7 && menu_a_pressed){
    		voicebutton = 0;
    		set_synced_var(player, 0);
    		voicebuttoncurrent = voicebutton;
    		sound_play(asset_get("mfx_change_color"));
    		sound_play(sound_get("sfx_attack" + ( string (1 + round ( random_func_2(1, 4, false) ) ) ) ) );
    	}
	}
}

voicebuttonsprite = voicebutton;