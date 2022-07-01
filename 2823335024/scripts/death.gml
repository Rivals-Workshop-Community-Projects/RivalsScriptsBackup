// called when the character gets KO'd
if (joycon_drift = "on"){
	sound_play(sound_get("on"));
	joycon_drift_timer = 0;
	joycon_drift = "off"
}

usednspec = 0;