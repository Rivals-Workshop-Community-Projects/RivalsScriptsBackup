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

//if (voice_button == 0 && emerald_button == 0 && attack_button == 0){ set_synced_var( player, 0); } //Everything is off
//if (voice_button == 1 && emerald_button == 1 && attack_button == 1){ set_synced_var( player, 1); } //Everything on should be the default
//if (voice_button == 0 && emerald_button == 1 && attack_button == 1){ set_synced_var( player, 2); } //Emeralds and Attacks only on
//if (voice_button == 0 && emerald_button == 0 && attack_button == 1){ set_synced_var( player, 3); } //Attacks only on
//if (voice_button == 0 && emerald_button == 1 && attack_button == 0){ set_synced_var( player, 4); } //Emeralds only on
//if (voice_button == 1 && emerald_button == 1 && attack_button == 0){ set_synced_var( player, 5); } //Voice and Emeralds only on
//if (voice_button == 1 && emerald_button == 0 && attack_button == 0){ set_synced_var( player, 6); } //Voice and Attacks only on
//if (voice_button == 1 && emerald_button == 0 && attack_button == 1){ set_synced_var( player, 7); } //Voice only on

//if "voice_state" not in self exit;

cursor_x = (get_instance_x(cursor_id));
cursor_y = (get_instance_y(cursor_id));
suppress_cursor = false;

/*
//The voice button
if cursor_x > temp_x2 + 14 && cursor_x < temp_x2 + 24 && cursor_y > temp_y2 + 14 && cursor_y < temp_y2 + 12 {
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
				sound_play(sound_get("Mecha_heh"), false, noone, 0.6, 1 );
				sound_play(sound_get("dair_sweetspot"), false, noone, 0.3, 1 );
			}
		}
} else if voice_lockout = 0 {
    voice_state = 0;
} else {
    voice_state = 2;
    voice_lockout--;
}

/*
if "emerald_state" not in self exit;

//The emerald button
if cursor_x > temp_x2 + 25 && cursor_x < temp_x2 - 25 && cursor_y > temp_y2 + 25 && cursor_y < temp_y2 - 25 {
cursor_bounds2 = true;
} else {
cursor_bounds2 = false;
}

if (cursor_bounds2 && emerald_lockout == 0){
	emerald_state = 1; suppress_cursor = true;
	if (menu_a_pressed) {
		//sound_play(asset_get("mfx_return_cursor"));
		sound_play(asset_get("mfx_option"));
		emerald_lockout = 5;
		if emerald_button {
			emerald_button = false;
			//with (player){ emerald_button = false; }
			//sound_play(asset_get("sfx_blow_heavy2"), false, noone, 0.5, 1 );
			} else {
				emerald_button = true;
				sound_play(sound_get("S3&K_emerald"), 0, 0, 0.2);
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

if (emerald_button == true && attack_button == true){
	//attack_button = false;
	//sound_play(asset_get("mfx_tut_fail"));
	//sound_play(asset_get("mfx_input_end"));
} //Can't use Emeralds with this style [WIP]
*/

if "attack_button" not in self exit;

//The attack button
//if cursor_x > temp_x + 25 && cursor_x < temp_x - 25 && cursor_y > temp_y + 25 && cursor_y < temp_y - 25 {
if cursor_x > temp_x2 + 184 && cursor_x < temp_x2 + 204 && cursor_y > temp_y2 + 54 && cursor_y < temp_y2 + 120 {
cursor_bounds = true;
} else {
cursor_bounds = false;
}

if (cursor_bounds && attack_lockout == 0){
	attack_state = 1; suppress_cursor = true;
	if (menu_a_pressed) {
		attack_lockout = 6;
		if attack_button {
			attack_button = false;
			set_synced_var( player, false);
			sound_play(asset_get("mfx_option"));
			sound_play(asset_get("sfx_holy_grass"));
			sound_play(asset_get("playerdefeated_sfx"));
			} else {
			attack_button = true;
			set_synced_var( player, true);
			sound_play(asset_get("mfx_option"));
			sound_play(asset_get("mfx_logo_shing"));
			sound_play(asset_get("mfx_orby_talk_done"));
			}
		}
} else if attack_lockout = 0 {
    attack_state = 0;
} else {
    attack_state = 2;
    attack_lockout--;
}