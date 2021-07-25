if (my_hitboxID.attack == AT_FAIR){
    if (my_hitboxID.hbox_num == 1){
        if (taunt_works_again && !taunt_works){
            taunt_works = true;
        }
    }
}

if (has_rune("M")){
    if (random_func(1,4,true) == 1){
        sound_play ( sound_get ("skill_star") );
        with (hit_player_obj){
            take_damage( player, -1, 15 );
        }
    }
}