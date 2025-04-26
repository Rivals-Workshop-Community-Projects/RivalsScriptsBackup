sound_stop(voice);

if(!muted){
    var rand = random_func(0, 5-(get_stage_data(SD_ID) == 2956178243), true);
	if(rand == 0){
		PlayVoiceClip("mario fuck");
	}else if(rand == 1){
		PlayVoiceClip("uh oh", 3);
	}else if(rand == 2){
		PlayVoiceClip("where am i", 2);
	}else if(rand == 3){
		PlayVoiceClip("its been one of those days", 2);
	}else if(rand == 4){
		PlayVoiceClip("bowserlaugh");
	}
}

downspecialcharge = round(downspecialcharge/1.25);
nspecial_charge = 0;
respawnplat = 1;

#define PlayVoiceClip
/// PlayVoiceClip(name,?volume,?stopprev)
	//Plays SFX
	if(!muted && !hitpause){
		if(argument_count>2?argument[2]!=false:true)sound_stop(voice);
		voice = sound_play(sound_get(argument[0]),false,noone,argument_count>1?argument[1]:1,("voicepitch" in self)?voicepitch:1);
		if(argument_count>1)sound_volume(voice, argument[1], 0);
	}
