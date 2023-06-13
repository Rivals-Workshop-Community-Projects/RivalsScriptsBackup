if(enemy_hitboxID.attack == AT_FSPECIAL && hit_player_obj == self){
    invincible = false;
    invince_time = 0;
}

if(enemy_hitboxID.attack == AT_USTRONG_2 && hit_player_obj == self){
    invincible = false;
    invince_time = 0;
    state = PS_PRATFALL;
    state_timer = 0;
    was_parried = true;
}