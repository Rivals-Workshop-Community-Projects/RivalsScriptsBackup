if("url" in hit_player_obj && hit_player_obj.url == url){ //if opponent is monopoly
    current_money += floor(enemy_hitboxID.damage*250);
}else{ //anyone else
    current_money += floor(enemy_hitboxID.damage*350);
}
sound_play(sound_get("soldsfx"),false,noone,2);

rand = random_func(0, 20, true);
if(rand <= 2 || rand > 15){
	PlayVoiceClip("very skillful", 1.0);
}else if(rand == 3){
	PlayVoiceClip("thats more like it", 1.0);
}else if(rand == 4){
	PlayVoiceClip("thats the big time", 1.0);
}else if(rand == 5){
	PlayVoiceClip("youre playing like a million bucks", 1.0);
}else if(rand == 6){
	PlayVoiceClip("wow", 1.0);
}else if(rand == 7){
	PlayVoiceClip("lets go", 1.0);
}else if(rand == 8 || rand == 9){
	rand = random_func(0, 4, true);
	if(rand == 0){
    	PlayVoiceClip("monopoly laugh", 1.0);
    }else if(rand == 1){
    	PlayVoiceClip("monopoly laugh 2", 1.0);
    }else if(rand == 2){
    	PlayVoiceClip("monopoly laugh 3", 1.0);
    }else if(rand == 3){
    	PlayVoiceClip("monopoly laugh 4", 1.0);
    }
}else if(rand == 10){
	PlayVoiceClip("youre all wet", 1.0);
}else if(rand == 11){
	PlayVoiceClip("come on baby", 1.0);
}else if(rand == 12){
	PlayVoiceClip("couldnt have done it better myself", 1.0);
}else if(rand == 13){
	PlayVoiceClip("way to go", 1.0);
}else if(rand == 14){
	PlayVoiceClip("you want more", 1.0);
}else if(rand == 15){
	PlayVoiceClip("nicely done", 1.0);
}

#define PlayVoiceClip
	/// PlayVoiceClip(name,?volume)
	//Plays SFX
	//if(!muted){
		sound_stop(voice);
		voice = sound_play(sound_get(argument[0]/* + (alt==21?" df":"")*/),false,noone,argument_count>1?argument[1]:1, voicepitch);
	//}