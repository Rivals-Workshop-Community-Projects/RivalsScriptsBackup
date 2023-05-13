
if(alt == 30){
	rand = random_func(0, 2, true);
	if(rand == 0){
		PlayVoiceClip("craig missed it just a little 2", 2);
	}else if(rand == 1){
		PlayVoiceClip("craig_you_missed_one_easy_putt", 2);
	}
}

#define PlayVoiceClip
/// PlayVoiceClip(name,?volume)
//Plays SFX
//if(!muted){
	sound_stop(voice);
	voice = sound_play(sound_get(argument[0]/* + (alt==21?" df":"")*/),false,noone,argument_count>1?argument[1]:1);
//}