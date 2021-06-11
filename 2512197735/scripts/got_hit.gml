//gets out of the grab state
wario_grab = false;

if(voice){
		    	mix_voice_sfx =  random_func(0,7,true)
		    	sound_stop(mix_sound);
    			mix_sound = sound_play(mix_clip[mix_voice_sfx]);
}