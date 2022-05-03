if(cheat){
    hitstop = 0;
    hitstop_full = 0;
    hitpause = false;
    attack = AT_DSPECIAL;
    state = PS_ATTACK_AIR;
    if(!free){
        state = PS_ATTACK_GROUND;
    }
    invincible = true;
    invince_time = 50;
    window = 2;
    window_timer = 0;
    if(hit_player_obj.knockback_adj < 1){
        hit_player_obj.knockback_adj = 1.2;
    }
}