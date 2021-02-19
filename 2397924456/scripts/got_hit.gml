if !array_equals(stopped_sounds, []){
	for (var i = 0; i < array_length(stopped_sounds); i++){
		sound_stop(stopped_sounds[i]);
	}
	stopped_sounds = [];
}