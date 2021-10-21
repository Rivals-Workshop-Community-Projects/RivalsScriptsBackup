
if (abs(orig_knock) > 5){
	soundpick=random_func( 1, 4,  true);	
	if(soundpick==0){ 
		sound_play(sound_get("hurt1"));
	} 
	if(soundpick==1){
		sound_play(sound_get("hurt2"));
	} 
	if(soundpick==2){
		sound_play(sound_get("hurt3"));
	} 
	if(soundpick==3){
		sound_play(sound_get("hurt4"));
	} 
}


if (abs(orig_knock) > 17){
	soundpick=random_func( 1, 2,  true);	
	if(soundpick==0){ 
		sound_play(sound_get("bunoo"));
	} 
	if(soundpick==1){
		sound_play(sound_get("lavu"));
	}
}