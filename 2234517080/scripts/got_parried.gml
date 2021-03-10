with (pHitBox){
    if (player == other.player){
        if (attack == AT_DSPECIAL && hbox_num == 2 && hsp == 0){
            player_id.star_cooldown = player_id.star_cooldown_time;
            destroyed = true;
        }
    }
}

if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1){
    state = PS_PRATFALL;
}