with(asset_get("draw_result_screen")){
    if(results_timer == 5){
    	sidebar = false;
        rand = 1+random_func(0, 29, true);
		if(rand == 1){
			sound_play(sound_get("congratulations"));
		}else if(rand == 2){
			sound_play(sound_get("congratulations 2"));
		}else if(rand == 3 || rand == 4){
	    	sound_play(sound_get("very skillful"));
	    }else if(rand == 5){
	    	sound_play(sound_get("monopoly byebyenow"));
	    }else if(rand == 6){
	    	sound_play(sound_get("youre all wet"));
	    }else if(rand == 7){
	    	sound_play(sound_get("thats more like it"));
	    }else if(rand == 8){
	    	sound_play(sound_get("thats the big time"));
	    }else if(rand == 9){
	    	sound_play(sound_get("youre playing like a million bucks"));
	    }else if(rand == 10){
	    	sound_play(sound_get("wow"));
	    }else if(rand == 11){
	    	sound_play(sound_get("lets go"));
	    }else if(rand == 12){
	    	rand = random_func(1, 4, true);
	    	if(rand == 0){
		    	sound_play(sound_get("monopoly laugh"));
		    }else if(rand == 1){
		    	sound_play(sound_get("monopoly laugh 2"));
		    }else if(rand == 2){
		    	sound_play(sound_get("monopoly laugh 3"));
		    }else if(rand == 3){
		    	sound_play(sound_get("monopoly laugh 4"));
		    }
	    }else if(rand == 13){
	    	sound_play(sound_get("youre all wet"));
	    }else if(rand == 14){
	    	sound_play(sound_get("couldnt have done it better myself"));
	    }else if(rand == 15){
	    	sound_play(sound_get("not bad"));
	    }else if(rand == 16){
	    	sound_play(sound_get("way to go"));
	    }else if(rand == 17){
	    	sound_play(sound_get("nicely done"));
	    }else if(rand == 18){
	    	sound_play(sound_get("i love building houses"));
	    }else if(rand == 19){
	    	sound_play(sound_get("jackpot"));
	    }else if(rand == 20){
	    	sound_play(sound_get("lets collect that rent now"));
	    }else if(rand == 21){
	    	sound_play(sound_get("owning property never goes out of style"));
	    }else if(rand == 22){
	    	sound_play(sound_get("im feeling lucky today"));
	    }else if(rand == 23){
	    	sound_play(sound_get("its a housing boom"));
	    }else if(rand == 24){
	    	sound_play(sound_get("were swimming in it now"));
	    }else if(rand == 25){
	    	sound_play(sound_get("welcome to the tycoon club"));
	    }else if(rand == 26){
	    	sound_play(sound_get("quite a haul"));
	    }else if(rand == 27){
	    	sound_play(sound_get("cash grab"));
	    }else if(rand == 28){
	    	sound_play(sound_get("quite a haul"));
	    }
    }
    
    if(results_timer >= 10 && someone_pressed && !sidebar){
    	sound_play(sound_get("lets see how you did"));sidebar = true;
    }
}
