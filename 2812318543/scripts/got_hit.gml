if(pandoria.pandy_control){
    pandoria.hsp = 0;
    pandoria.state_timer = 0;
    pandoria.state = 12;
}

if(in_affinity){
    if(enemy_hitboxID.kb_scale > 0){
        pandoria.affinity -= 8;
    }else{
        pandoria.affinity -= 3;
    }
}

//voice lines
if(va_enabled > 0 && enemy_hitboxID.hitstun_factor > -1){
    if(enemy_hitboxID.kb_scale > 0){
        sound_stop(va_current);
    }
    if(enemy_hitboxID.kb_scale > 0.7 || enemy_hitboxID.kb_value >= 9 || enemy_hitboxID.damage > 12){
        va_type = 5;
    }else{
        va_type = 4;
    }

    if(va_cd <= 0 && random_func(0, 1, false) > (1 - va_freq_atk)){
        user_event(0);
    }
}