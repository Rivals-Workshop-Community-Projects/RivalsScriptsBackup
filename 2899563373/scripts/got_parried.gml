switch(my_hitboxID.attack){
    
    case AT_JAB:
        if(my_hitboxID.hbox_num == 1) was_parried = false;
        break;
    
    case AT_DSPECIAL:
        if(my_hitboxID.hbox_num == 1 && barrier != noone){
            barrier.state = 6;
            barrier.state_timer = 0;
        }
        break;
}

if(my_hitboxID.attack == AT_DSPECIAL /*&& my_hitboxID.type == 2*/){
    last_hit_dspec = true;
}else if(my_hitboxID.kb_scale > 0 || (my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 1)){
    last_hit_dspec = false;
}

if(in_float && my_hitboxID.type == 1){
    in_float = false;
    nspec_grav_cur = 0;
    nspec_float_cur = 0;
    sound_stop(sound_get("sfx_rapidjab"));
}