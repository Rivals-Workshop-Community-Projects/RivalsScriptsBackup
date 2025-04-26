// css_update.gml

if("css_voicedMode_enabled" not in self) exit;
if("voiceLine" not in self) exit;
if("myXPos" not in self) exit;
if("myYPos" not in self) exit;
if(!instance_exists(cursor_id)) exit;

var cursorX = get_instance_x(cursor_id);
var cursorY = get_instance_y(cursor_id);

//print("Cursor X: " + string(cursorX) + ", Cursor Y: " + string(cursorY));

//print(player);
voiceLine = (random_func( 1, 9, true ) + 1);

//print("my x pos:" + string(myXPos));
//print("my y pos:" + string(myYPos));

if ((cursorX >= myXPos + 178 && cursorX <= myXPos + 202) && (cursorY >= myYPos + 34 && cursorY <= myYPos + 58)){//>
	//print("on button");
	suppress_cursor = true;
	buttonShouldHighlight = true;
	// checking to see if the user pressed on this button
	if (menu_a_pressed){
		buttonPressed = true;
		sound_play(asset_get("mfx_forward"));
		if (css_voicedMode_enabled == 0){
			css_voicedMode_enabled++;
			sound_stop(sound_get("cssvoice"));
			sound_stop(sound_get("vc_mario_herewego"));
			sound_stop(sound_get("vc_mario_yeehaw"));
			sound_stop(sound_get("vc_mario_itsame"));
			sound_stop(sound_get("vc_mario_yeah"));
			sound_stop(sound_get("vc_mario_ohyeah"));
			sound_stop(sound_get("vc_mario_wahoo_2"));
			sound_stop(sound_get("vc_mario_i_got_it"));
			sound_stop(sound_get("vc_mario_ohyeah_2"));
			if (voiceLine == 1){
				sound_play(sound_get("cssvoice"));
			} else if (voiceLine == 2){
				sound_play(sound_get("vc_mario_herewego"));
			} else if (voiceLine == 3){
				sound_play(sound_get("vc_mario_yeehaw"));
			} else if (voiceLine == 4){
				sound_play(sound_get("vc_mario_itsame"));
			} else if (voiceLine == 5){
				sound_play(sound_get("vc_mario_yeah"));
			} else if (voiceLine == 6){
				sound_play(sound_get("vc_mario_ohyeah"));
			} else if (voiceLine == 7){
				sound_play(sound_get("vc_mario_wahoo_2"));
			} else if (voiceLine == 8){
				sound_play(sound_get("vc_mario_i_got_it"));
			} else if (voiceLine == 9){
				sound_play(sound_get("vc_mario_ohyeah_2"));
			}
		} else {
			sound_stop(sound_get("cssvoice"));
			sound_stop(sound_get("vc_mario_herewego"));
			sound_stop(sound_get("vc_mario_yeehaw"));
			sound_stop(sound_get("vc_mario_itsame"));
			css_voicedMode_enabled--;
		}
		set_synced_var(player, css_voicedMode_enabled);
	} else {
		buttonPressed = false;
	}
} else {
	//print("nah");
	buttonShouldHighlight = false;
}