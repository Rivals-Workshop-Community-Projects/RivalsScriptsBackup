// Variable Definition
var hitmove = my_hitboxID.attack;

if(hitmove == AT_DSPECIAL){
    if(window == 2 && grabbedid == noone){
    	if (hit_player_obj.state == PS_HITSTUN){
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

//tdude land
if (hitmove == AT_NAIR){
	if (my_hitboxID.hbox_num == 1){
		sound_play(asset_get("sfx_blow_medium2"));
	}
	if (my_hitboxID.hbox_num == 2){
		sound_play(asset_get("sfx_blow_weak2"));
	}
}

if (hitmove == AT_UAIR){
	if (my_hitboxID.hbox_num == 4){
		sound_play(asset_get("sfx_blow_medium1"));
	}
}

if (hitmove == AT_FTILT){
	if (my_hitboxID.hbox_num != 1){
		sound_play(asset_get("sfx_blow_weak1"));
	}
	else{
		sound_play(asset_get("sfx_blow_medium3"));
	}
}

if (hitmove == AT_DTILT){
	if (my_hitboxID.hbox_num == 4){
		sound_play(asset_get("sfx_blow_medium2"));
	}
	else{
		sound_play(asset_get("sfx_blow_weak1"));
	}
}

if (hitmove == AT_NSPECIAL){
	if (my_hitboxID.hbox_num == 1){
		sound_play(asset_get("sfx_blow_heavy1"));
	}
}

if (hitmove == AT_FSPECIAL){
	with (my_hitboxID){
		sound_play(asset_get("sfx_blow_medium2"));
	}
}

if (hitmove == AT_DSPECIAL){
	if (!refreshed_djump){
		if (my_hitboxID.hbox_num != 2 && my_hitboxID.hbox_num != 4){
			djumps = 0;
		}
	}
	
	if (my_hitboxID.hbox_num == 1){
		hit_player_obj.should_make_shockwave = false;
	}
}