if (has_knife == false && enemy_hitboxID.player_id != id){
    has_knife = true;
}

if ( enemy_hitboxID.player == player && invincible == true && invince_time == 60){
    invincible_time = 0;
    invincible = false;
}