if swift_mode = true{
	swift_timer = 699;
}

if(radio == 1 && swift_mode = true){
	sound_play(sound_get("pain4"));
}

if (attack == AT_USPECIAL){
	window = 3;
	window_timer = 0;
}