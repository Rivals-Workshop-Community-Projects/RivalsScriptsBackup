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
voiceLine = (random_func( 1, 4, true ) + 1);

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
			sound_stop(sound_get("vc_mk_taunt_1"));
			sound_stop(sound_get("vc_mk_cssButton_1"));
			sound_stop(sound_get("vc_mk_taunt_3"));
			sound_stop(sound_get("vc_mk_cssButton_2"));
			if (voiceLine == 1){
				sound_play(sound_get("vc_mk_taunt_1"));
			} else if (voiceLine == 2){
				sound_play(sound_get("vc_mk_cssButton_1"));
			} else if (voiceLine == 3){
				sound_play(sound_get("vc_mk_taunt_3"));
			} else if (voiceLine == 4){
				sound_play(sound_get("vc_mk_cssButton_2"));
			}
		} else {
			sound_stop(sound_get("vc_mk_taunt_1"));
			sound_stop(sound_get("vc_mk_cssButton_1"));
			sound_stop(sound_get("vc_mk_taunt_3"));
			sound_stop(sound_get("vc_mk_cssButton_2"));
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