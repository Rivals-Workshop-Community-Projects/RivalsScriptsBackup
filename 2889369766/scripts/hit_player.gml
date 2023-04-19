//CALLED WHEN PLAYER IS HIT

if (my_hitboxID.attack == AT_FTILT && my_hitboxID.hbox_num == 1){ //on hit go into next hit
    window = 4;
    window_timer = 0;
    my_hitboxID.destroyed = true;
}

if (my_hitboxID.attack == AT_NSPECIAL){
    with (asset_get("obj_article1")){
        if (player_id == other.id && !create_field){
            create_field = 1;
        }
    }
}