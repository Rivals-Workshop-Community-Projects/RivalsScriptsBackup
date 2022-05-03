//hit_player

if (my_hitboxID.attack == AT_DAIR && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3) ) {
    dairHitPlayer = true;
}

if ((my_hitboxID.attack == AT_FSPECIAL || my_hitboxID.attack == AT_FSPECIAL_AIR) && my_hitboxID.hbox_num == 1) {
    should_swing = true;
}

if (my_hitboxID.attack == AT_NSPECIAL_2 && (my_hitboxID.hbox_num == 2) ) {
    with (asset_get( "obj_article2" )) {
        shoulddie = 1;
    }
}

if (my_hitboxID.attack == AT_USPECIAL_2 && (my_hitboxID.hbox_num == 9) ) {
    for (var i = 0; i < 20; i++){
        can_hit[i] = 1;
    }
}

if (my_hitboxID.attack == AT_NSPECIAL_2 && (my_hitboxID.hbox_num == 2) ) {
    with (asset_get( "obj_article2" )) {
        shoulddie = 1;
    }
}