//got parried


// Manual firecracker explosion parry 


if(my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1){
    with(pHitBox)
    if((attack == AT_EXTRA_3 && player_id == other.enemykirby) || (orig_player == other.player && (attack == AT_NSPECIAL) && hbox_num == 1)){
        reset = false;
        currentPlayer = other.hit_player_obj;
    }
}