if (enemy_hitboxID.kb_scale > 0){
    if (in_alarm_range){
                        if (alarm_obj != -4 && state == PS_HITSTUN){
                            with (alarm_obj){
                                if (player_id == other.id){
                                    if (state == 0){
                                        state = 1;
                                    	state_timer = 0;
                                    	player_hit = other;
                                    	player_who_hit = other.hit_player_obj;
                                    	other.alarm_obj = -4;
                                    }
                                }
                            }
                        }
    }
}