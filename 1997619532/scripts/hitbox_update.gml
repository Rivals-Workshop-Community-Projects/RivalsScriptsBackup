if attack == AT_EXTRA_3 && hbox_num != 1 {
	
	if !free {
		destroyed = 1 
		sound_play(sound_get("slicel"));
	}
	
}

if attack == AT_NSPECIAL && hbox_num == 1 {
	
	if !free {
		destroyed = 1 
		sound_play(sound_get("slicel"));
	}
	
}