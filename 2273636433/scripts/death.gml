// called when the character gets KO'd
message = 0;

if(voice_toggle){
soundpick=random_func( 1, 3, true);			//Chooses a DAMAGE sound
	if(soundpick==0){
		sound_play( sound_get("medic8"));
	} 
	if(soundpick==1){
		sound_play( sound_get("medic9"));
	}
	if(soundpick==2){
		sound_play( sound_get("medic10"));
	} 
}