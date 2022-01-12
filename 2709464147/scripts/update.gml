
if(get_gameplay_time() <= 120){
	if(taunt_pressed && voice_on){
		voice_on = false;
		sound_play(asset_get("mfx_input_end"));
	}
	
}