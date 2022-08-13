sound_stop(voice);

upb = false;move_cooldown[AT_USPECIAL] = 0;
diceluck = 0;takearideontherailroad = false;
//jailcard = false;

current_money2 = current_money;

if(get_player_stocks(player) <= 1){ //last stock
	current_money = 0;
    if(alt == 18){
        sound_play(sound_get("wario_death2"),false,noone,1);
    }else{
	    rand = random_func(0, 4, true);
    	if(rand == 0){
			sound_play(sound_get("im too young to go to jail"));
		}else if(rand == 1){
			sound_play(sound_get("you got the wrong tycoon"));
		}else if(rand == 2){
			sound_play(sound_get("lucky"));
		}else if(rand == 3){
			sound_play(sound_get("monopoly scream"));
		}
	}
	with(pHitBox){
	    if(player_id == other && (attack == AT_DSPECIAL && hbox_num <= 3)){
	    	destroying = true;playerdead = true;
	    }
	}
	if(!jailcard){
		set_victory_sidebar(sprite_get("result_small_jail"));jailcard = false;
	}else{
		set_victory_sidebar(sprite_get("result_small_jail2"));
	}
}else{
	current_money = floor(current_money/2);
	rand = random_func(0, 4, true);
	if(rand < 3){
		if(alt == 18){
        	rand = random_func(1, 3, true);
        	if(rand == 0){
    			sound_play(sound_get("wario_missed"),false,noone,1);
    		}else if(rand == 1){
    			sound_play(sound_get("wario_death"),false,noone,1);
    		}else if(rand == 2){
    			sound_play(sound_get("wario_death2"),false,noone,1);
    		}
    	}else{
	    	rand = random_func(1, 7, true);
        	if(rand == 0){
    			sound_play(sound_get("ow"),false,noone,0.75);
    		}else if(rand == 1){
    			sound_play(sound_get("ouch"),false,noone,0.75);
    		}else if(rand == 2){
    			sound_play(sound_get("ripoff"));
    		}else if(rand == 3){
    			sound_play(sound_get("ill get you"));
    		}else if(rand == 4){
				sound_play(sound_get("monopoly scream"));
			}else if(rand == 5){
				sound_play(sound_get("uh oh"));
			}else if(rand == 6){
				sound_play(sound_get("lucky"));
			}
	    }
	}
}

mask_index = asset_get("ex_guy_collision_mask");