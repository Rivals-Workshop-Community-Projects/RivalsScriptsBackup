//this voice toggle code is from Conkdor (from Mario)
/*
if "voice_state" not in self exit;

cursor_x = (get_instance_x(cursor_id));
cursor_y = (get_instance_y(cursor_id));
suppress_cursor = false;

if cursor_x > temp_x + 168 && cursor_x < temp_x + 184 && cursor_y > temp_y + 94 && cursor_y < temp_y + 120 {
cursor_bounds = true;
} else {
cursor_bounds = false;
}

if (cursor_bounds && voice_lockout = 0) {
	voice_state = 1; suppress_cursor = true;
	if (menu_a_pressed) {
		sound_play(asset_get("mfx_option"));
		voice_lockout = 5;
		if (voice_button) {
			voice_button = false;
			//with (player){ voice_button = false; }
			//sound_play(asset_get("sfx_blow_heavy2"), false, noone, 0.5, 1 );
			} else {
				voice_button = true;
				sound_play(sound_get("Mecha_heh"), false, noone, 0.2, 1 );
				sound_play(sound_get("Dair_sweetspot"), false, noone, 0.2, 1 );
				//with (player){ voice_button = true; }
			}
		}
} else if voice_lockout = 0 {
    voice_state = 0;
} else {
    voice_state = 2;
    voice_lockout--;
}
*/

if "voice_state" not in self exit;

cursor_x = (get_instance_x(cursor_id));
cursor_y = (get_instance_y(cursor_id));
suppress_cursor = false;

if cursor_x > temp_x + 174 && cursor_x < temp_x + 194 && cursor_y > temp_y + 94 && cursor_y < temp_y + 120 {
cursor_bounds = true;
} else {
cursor_bounds = false;
}

if cursor_bounds && voice_lockout = 0 {
    voice_state = 0;
	suppress_cursor = true;
	    if (menu_a_pressed) && (get_player_color(player) != 8){
		    sound_play(asset_get("mfx_option"));
			voice_lockout = 5;
			
			if (voice_button) {
			    voice_button = false;
			    //sound_play(asset_get("sfx_blow_heavy2"), false, noone, 0.5, 1 );
			} else {
			    voice_button = true;
				sound_play(sound_get("Mecha_heh"), false, noone, 0.5, 1 );
				sound_play(sound_get("Dair_sweetspot"), false, noone, 0.5, 1 );
			}
		}
} else if voice_lockout = 0 {
    voice_state = 0;
} else {
    voice_state = 2;
    voice_lockout--;
}

if cursor_x > temp_x2 + 174 && cursor_x < temp_x2 + 204 && cursor_y > temp_y2 + 94 && cursor_y < temp_y2 + 120 {
cursor_bounds2 = true;
} else {
cursor_bounds2 = false;
}

if (cursor_bounds2 && emerald_lockout == 0){
	emerald_state = 1; suppress_cursor = true;
	if (menu_a_pressed) {
		sound_play(asset_get("mfx_return_cursor"));
		//sound_play(asset_get("playerdefeated_sfx"));
		emerald_lockout = 5;
		if emerald_button {
			emerald_button = false;
			//with (player){ emerald_button = false; }
			//sound_play(asset_get("sfx_blow_heavy2"), false, noone, 0.5, 1 );
			} else {
				emerald_button = true;
				//sound_play(sound_get("Mecha_heh"), false, noone, 0.4, 1 );
				//sound_play(sound_get("ARC_BTL_CMN_Hit_XLarge"), false, noone, 0.4, 1 );
				//with (player){ emerald_button = true; }
			}
		}
} else if emerald_lockout = 0 {
    emerald_state = 0;
} else {
    emerald_state = 2;
    emerald_lockout--;
}