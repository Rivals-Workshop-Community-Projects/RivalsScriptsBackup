//for voice effect
if(get_gameplay_time() <= 120){
	if(voice == false){
		draw_debug_text(temp_x, temp_y - 20, "Taunt to hear more Wario.");
	}
	if(taunt_pressed){
		if(voice == false){
			sound_play(sound_get("voice_enable"));
			voice = true;
		}
	}
}