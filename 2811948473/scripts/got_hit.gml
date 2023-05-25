if (abs(orig_knock) > 10){
	soundpick=random_func( 1, 4,  true);	
	if(soundpick==0){ 
		sound_play(sound_get("ouch1"));
	} 
	if(soundpick==1){
		sound_play(sound_get("ouch2"));
	} 
	if(soundpick==2){
		sound_play(sound_get("ouch3"));
	}
	if(soundpick==3){
		sound_play(sound_get("ouch4"));
	} 
}

sound_stop(sound_get("psi"));
sound_stop(sound_get("psi_freeze"));



