if (prev_state == PS_IDLE && state == PS_ATTACK_GROUND && attack == AT_TAUNT){
    attack = AT_TAUNT_2
}

if (attack == AT_TAUNT && up_down && get_player_color(player) == 4 && taunt_works && oof){
    taunt_rng = random_func(1, 4, true);
    if (taunt_rng >= 3){
    	attack = AT_EXTRA_2;
    	taunt_works = false;
    }
}



user_event(13);