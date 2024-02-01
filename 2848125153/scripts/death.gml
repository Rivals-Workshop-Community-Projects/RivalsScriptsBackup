sound_stop(voice);

upb = false;move_cooldown[AT_USPECIAL] = 0;
diceluck = 0;takearideontherailroad = false;
//jailcard = false;

current_money2 = current_money;

if(get_player_stocks(player) <= 1){ //last stock
	current_money = 0;
    if(alt == 19){
        PlayVoiceClip("wario_death2", 1.0);
    }else{
	    rand = random_func(0, 4, true);
    	if(rand == 0){
			PlayVoiceClip("im too young to go to jail", 1.0);
		}else if(rand == 1){
			PlayVoiceClip("you got the wrong tycoon", 1.0);
		}else if(rand == 2){
			PlayVoiceClip("lucky", 1.0);
		}else if(rand == 3){
			PlayVoiceClip("monopoly scream", 1.0);
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
		if(alt == 19){
        	rand = random_func(1, 3, true);
        	if(rand == 0){
    			PlayVoiceClip("wario_missed", 1.0);
    		}else if(rand == 1){
    			PlayVoiceClip("wario_death", 1.0);
    		}else if(rand == 2){
    			PlayVoiceClip("wario_death2", 1.0);
    		}
    	}else{
	    	rand = random_func(1, 7, true);
        	if(rand == 0){
    			PlayVoiceClip("ow", 0.75);
    		}else if(rand == 1){
    			PlayVoiceClip("ouch", 0.75);
    		}else if(rand == 2){
    			PlayVoiceClip("ripoff", 1.0);
    		}else if(rand == 3){
    			PlayVoiceClip("ill get you", 1.0);
    		}else if(rand == 4){
				PlayVoiceClip("monopoly scream", 1.0);
			}else if(rand == 5){
				PlayVoiceClip("uh oh", 1.0);
			}else if(rand == 6){
				PlayVoiceClip("lucky", 1.0);
			}
	    }
	}
}

mask_index = asset_get("ex_guy_collision_mask");

#define PlayVoiceClip
	/// PlayVoiceClip(name,?volume)
	//Plays SFX
	//if(!muted){
		sound_stop(voice);
		voice = sound_play(sound_get(argument[0]/* + (alt==21?" df":"")*/),false,noone,argument_count>1?argument[1]:1, voicepitch);
	//}