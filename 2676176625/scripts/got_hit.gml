
if (abs(orig_knock) > 7){
	soundpick=random_func( 1, 5,  true);	
	if(soundpick==0){ 
		sound_play(sound_get("pain1"));
	} 
	if(soundpick==1){
		sound_play(sound_get("pain2"));
	} 
	if(soundpick==2){
		sound_play(sound_get("pain3"));
	} 
	if(soundpick==3){
		sound_play(sound_get("pain4"));
	} 
	if(soundpick==4){
		sound_play(sound_get("pain5"));
	} 
}