// Variable Definition
var hitmove = my_hitboxID.attack;

if(hitmove == AT_DSPECIAL){
    if(window == 2 && grabbedid == noone){
        with(enderman){
            if (player_id == other.id){
                enderhit = 1;
            }
        }
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
	    grabbedid.ungrab = 0;
    }
}


if(hitmove == AT_NSPECIAL){
    if(tntout){
        with(tnt){
        	if(state != 50 && state != 0 && state != 1 && state != 10){
				state = 100;
        	}
        }
    }
}
if(hitmove == AT_FSTRONG){
	sound_play(sound_get("hit1"));
}

if(hitmove == AT_USTRONG){
	sound_play(sound_get("hit1"));
}

if(hitmove == AT_DSTRONG){
	sound_play(sound_get("hit1"));
}

if(hitmove == AT_BAIR){
	sound_play(sound_get("hit1"));
}

if(hitmove == AT_DATTACK){
	sound_play(sound_get("hit1"));
}

if(hitmove == AT_DAIR){
	sound_play(sound_get("hit1"));
}


