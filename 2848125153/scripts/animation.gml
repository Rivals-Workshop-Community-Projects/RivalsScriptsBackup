if (attack == AT_DAIR){
    if(window == 3){
    	if(vsp < -4){
    	    image_index = 9;
    	}else if(vsp < 0){
    	    image_index = 6;
    	}else if(vsp < 4){
    	    image_index = 8;
    	}else{
    	    image_index = 7;
    	}
    }
}

if(state == PS_IDLE && up_down){
    if(lookuptime == 0){
        rand = random_func(0, 8, true);
	    if(rand == 0){
	    	PlayVoiceClip("ha", 0.75);
	    }else if(rand == 1){
	    	PlayVoiceClip("ha2", 0.75);
	    }else if(rand == 2){
	    	PlayVoiceClip("ha3", 0.75);
	    }else if(rand == 3){
	    	PlayVoiceClip("ha4", 0.75);
	    }else if(rand == 4){
	    	PlayVoiceClip("ha5", 0.75);
	    }else if(rand == 5){
	    	PlayVoiceClip("ha6", 0.75);
	    }else if(rand == 6){
	    	PlayVoiceClip("ha7", 0.75);
	    }else if(rand == 7){
	    	PlayVoiceClip("ha8", 0.75);
	    }
    }
    lookuptime += 1;
}else{
    if(state == PS_IDLE && lookuptime != 0){
        if(lookuptime > 0){lookuptime -= 1;}else if(lookuptime < 0){lookuptime += 1;}
    }else{
        lookuptime = 0;
    }
}
if(state == PS_IDLE && lookuptime > 0){
    sprite_index = sprite_get("lookup");image_index = floor(abs(lookuptime)/2);lookuptime = min(4,lookuptime);
    if(image_index > 2)image_index = 2;
}

money_frameignore--;
if(epic_riches <= 60){epic_riches++;epic_riches2--;if(epic_riches == 6)money_diff += 0.001;}
prev_money_diff = current_money-prev_money;

if(prev_money_diff != 0 && prev_money_diff != money_diff){ //riches difference
	money_diff = prev_money_diff;if(money_frameignore <= 0){epic_riches = 0;epic_riches2 = 60;money_frameignore = 4;}
}

if(money_frameignore <= 0)prev_money = current_money;


#define PlayVoiceClip
	/// PlayVoiceClip(name,?volume)
	//Plays SFX
	//if(!muted){
		sound_stop(voice);
		voice = sound_play(sound_get(argument[0]/* + (alt==21?" df":"")*/),false,noone,argument_count>1?argument[1]:1, voicepitch);
	//}