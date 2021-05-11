if (attack == AT_UTILT){
	if (has_hit){
	soundpick=random_func( 1, 3,  true);	
	if(soundpick==0) { 
		sound_play(sound_get("pan1"));
	} 
	if(soundpick==1) {
		sound_play(sound_get("pan2"));
	} 
	if(soundpick==2) {
		sound_play(sound_get("pan3"));
	}
	}
}

if (attack == AT_FSTRONG){
	if (has_hit){
	soundpick=random_func( 1, 6,  true);	
	if(soundpick==0) { 
		sound_play(sound_get("lucas1"));
	} 
	if(soundpick==1) {
		sound_play(sound_get("lucas2"));
	} 
	if(soundpick==2) {
		sound_play(sound_get("lucas3"));
	}
	if(soundpick==3) {
		sound_play(sound_get("lucas4"));
	} 
	if(soundpick==4) {
		sound_play(sound_get("lucas5"));
	} 
	if(soundpick==5) {
		sound_play(sound_get("lucas6"));
	} 
	}
}
