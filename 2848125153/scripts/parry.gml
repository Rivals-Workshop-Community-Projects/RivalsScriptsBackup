if("url" in hit_player_obj && hit_player_obj.url == url){ //if opponent is monopoly
    current_money += floor(enemy_hitboxID.damage*250);
}else{ //anyone else
    current_money += floor(enemy_hitboxID.damage*350);
}
sound_play(sound_get("soldsfx"),false,noone,2);

rand = random_func(0, 20, true);
	    if(rand <= 2 || rand > 15){
	    	sound_stop(voice);voice = sound_play(sound_get("very skillful"));
	    }else if(rand == 3){
	    	sound_stop(voice);voice = sound_play(sound_get("thats more like it"));
	    }else if(rand == 4){
	    	sound_stop(voice);voice = sound_play(sound_get("thats the big time"));
	    }else if(rand == 5){
	    	sound_stop(voice);voice = sound_play(sound_get("youre playing like a million bucks"));
	    }else if(rand == 6){
	    	sound_stop(voice);voice = sound_play(sound_get("wow"));
	    }else if(rand == 7){
	    	sound_stop(voice);voice = sound_play(sound_get("lets go"));
	    }else if(rand == 8 || rand == 9){
	    	rand = random_func(0, 4, true);
	    	if(rand == 0){
		    	sound_stop(voice);voice = sound_play(sound_get("monopoly laugh"));
		    }else if(rand == 1){
		    	sound_stop(voice);voice = sound_play(sound_get("monopoly laugh 2"));
		    }else if(rand == 2){
		    	sound_stop(voice);voice = sound_play(sound_get("monopoly laugh 3"));
		    }else if(rand == 3){
		    	sound_stop(voice);voice = sound_play(sound_get("monopoly laugh 4"));
		    }
	    }else if(rand == 10){
	    	sound_stop(voice);voice = sound_play(sound_get("youre all wet"));
	    }else if(rand == 11){
	    	sound_stop(voice);voice = sound_play(sound_get("come on baby"));
	    }else if(rand == 12){
	    	sound_stop(voice);voice = sound_play(sound_get("couldnt have done it better myself"));
	    }else if(rand == 13){
	    	sound_stop(voice);voice = sound_play(sound_get("way to go"));
	    }else if(rand == 14){
	    	sound_stop(voice);voice = sound_play(sound_get("you want more"));
	    }else if(rand == 15){
	    	sound_stop(voice);voice = sound_play(sound_get("nicely done"));
	    }