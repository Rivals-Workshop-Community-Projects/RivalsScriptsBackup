if (attack == AT_USTRONG){
    sound_stop(sound_get("machinegun"));
}

if (attack == AT_USTRONG || attack == AT_DSTRONG || attack == AT_FSTRONG){
    sound_stop(sound_get("windup"));
}

/*
    if (in_daruma_range){
                        if (state == PS_HITSTUN){
                            with (asset_get("obj_article1")){
                                if (player_id == other.id){
                                    if (state == 1){
                                        state = 4;
                                    	state_timer = 0;
                                    	target_id = other;
                                    	targetter_id = other.hit_player_obj;
                                    }
                                }
                            }
                        }
    }
*/