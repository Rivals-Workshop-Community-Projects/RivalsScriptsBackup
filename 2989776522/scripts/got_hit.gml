//hit_player - called when one of your hitboxes hits a player

if((state == PS_HITSTUN || state == PS_HITSTUN_LAND) && hitpause){
	sound_stop(sfx);
    sound_stop(voice);
    
    voicecooldown = 0; //attack sounds
	voicecooldown3 = 0; //galaxy hit sounds
    
	/*if(instance_exists(grabbedtarget)){
		if(grabbedobject){
	    	grabbedobject = false;grabbedtarget.KoB_grabbed = false;
	    	if(grabbedarticle){
	    		grabbedtarget.state = 1;grabbedtarget.timer = 60;
	    		if("StarterBlock" in grabbedtarget){grabbedtarget.state = 2;}
	    		grabbedtarget.visible = true;
	    	}
	    }else{
	    	grabbedtarget.visible = true;
		}
    }*/
    
    if(voicecooldown2 <= 0){
    	rand = random_func(1, 3, true);
		if(rand == 0 && voicecooldown2 <= 0){
			voicecooldown2 = 60;
	        if(voicemode == 0){ //adventure
				rand = random_func(0, 6, true);
			    if(rand == 0){
			    	PlayVoiceClip("adv_hurt", 1.75);
			    }else if(rand == 1){
			    	PlayVoiceClip("adv_hurt2", 1.75);
			    }else if(rand == 2){
			    	PlayVoiceClip("adv_hurt3", 1.75);
			    }else if(rand == 3){
			    	PlayVoiceClip("adv_ouch", 1.75);
			    }else if(rand == 4){
			    	PlayVoiceClip("adv_hurt4", 1.75);
			    }else if(rand == 5){
			    	PlayVoiceClip("adv_hurt5", 1.75);
			    }
			}else if(voicemode == 1){ //modern
				rand = random_func(0, 8, true);
			    if(rand == 0){
			    	PlayVoiceClip("pollock_hurt", 1.5);
			    }else if(rand == 1){
			    	PlayVoiceClip("pollock_hurt2", 1.75);
			    }else if(rand == 2){
			    	PlayVoiceClip("pollock_grunt", 1.75);
			    }else if(rand == 3){
			    	PlayVoiceClip("pollock_hurt3", 1.75);
			    }else if(rand == 4){
			    	PlayVoiceClip("pollock_hurt4", 1.75);
			    }else if(rand == 5){
			    	PlayVoiceClip("pollock_hurt5", 1.75);
			    }else if(rand == 6){
			    	PlayVoiceClip("pollock_hurt6", 1.75);
			    }else if(rand == 7){
			    	PlayVoiceClip("pollock_hurt7", 1.75);
			    }
			}else if(voicemode == 2){ //alfred
				rand = random_func(0, 6, true);
			    if(rand == 0){
			    	PlayVoiceClip("alfred_hurt", 1.75);
			    }else if(rand == 1){
			    	PlayVoiceClip("alfred_hurt2", 1.75);
			    }else if(rand == 2){
			    	PlayVoiceClip("alfred_hurt3", 1.75);
			    }else if(rand == 3){
			    	PlayVoiceClip("alfred_hurt4", 1.75);
			    }else if(rand == 4){
			    	PlayVoiceClip("alfred_hurt5", 1.75);
			    }else if(rand == 5){
			    	PlayVoiceClip("alfred_hurt6", 1.75);
			    }
			}
		}
    }
}

#define PlayVoiceClip
	/// PlayVoiceClip(name,?volume)
	//Plays SFX
	//if(!muted){
		sound_stop(voice);
		voice = sound_play(sound_get(argument[0]/* + (alt==21?" df":"")*/),false,noone,argument_count>1?argument[1]:1);
	//}