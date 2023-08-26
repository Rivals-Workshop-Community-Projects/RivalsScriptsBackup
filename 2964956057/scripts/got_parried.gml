if my_hitboxID.attack == AT_NSPECIAL{
    if my_hitboxID.has_been_parried = true{
        hit_player_obj.invincibility = 1;
        hit_player_obj.invince_time = 1;
    }
    else{
        my_hitboxID.has_been_parried = true;
    }
}