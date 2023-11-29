//this voice toggle code is from Conkdor (from Mario)
if "voice_state" not in self exit;

cursor_x = (get_instance_x(cursor_id));
cursor_y = (get_instance_y(cursor_id));
suppress_cursor = false;

if cursor_x > temp_x + 174 && cursor_x < temp_x + 204 && cursor_y > temp_y + 94 && cursor_y < temp_y + 120 {
cursor_bounds = true;
} else {
cursor_bounds = false;
}

if cursor_bounds && voice_lockout = 0 {
    voice_state = 1;
	suppress_cursor = true;
	    if (menu_a_pressed) {
		    sound_play(asset_get("mfx_option"));
			voice_lockout = 5;
			
			//sound_stop(sound_get("Mecha_EAUH"));
			/*
			sound_stop(sound_get("voc_select_ac2"));
			sound_stop(sound_get("voc_select_ac3"));
			sound_stop(sound_get("voc_select_furry1"));
			sound_stop(sound_get("voc_select_furry2"));
			sound_stop(sound_get("voc_select_me1"));
			sound_stop(sound_get("voc_select_me2"));
			sound_stop(sound_get("voc_misc_good1"));
			sound_stop(sound_get("voc_misc_good2"));
			sound_stop(sound_get("voc_misc_good3"));
			sound_stop(sound_get("voc_misc_good4"));
			sound_stop(sound_get("voc_uspecial0"));
			sound_stop(sound_get("voc_uspecial1"));
			*/
			
			if voice_button {
			    voice_button = false;
			    with (player){ voice_button = false; }
				//sound_play(asset_get("sfx_blow_heavy2"), false, noone, 0.5, 1 );
			} else {
			    voice_button = true;
				//sound_play(sound_get("Mecha_heh"), false, noone, 0.4, 1 );
				//sound_play(sound_get("ARC_BTL_CMN_Hit_XLarge"), false, noone, 0.4, 1 );
				with (player){ voice_button = true; }
			}
		}
} else if voice_lockout = 0 {
    voice_state = 0;
} else {
    voice_state = 2;
    voice_lockout--;
}

