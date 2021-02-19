// called when the character gets KO'd
if (safety_strap = "off"){
	sound_play(sound_get("on"));
	safety_strap_timer = 0;
	safety_strap = "on"
}