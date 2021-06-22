if (attack == AT_FSPECIAL && window == 2) {
        window = 3;
        window_timer = 0;
        //hit_out = true;
        hit_kb = 0;
}

if (my_hitboxID.attack == AT_NSPECIAL) {
    with (hit_player_obj) {
        hitstop += 7;
    }
}

if (attack == AT_USPECIAL && my_hitboxID.hbox_num != 5) {
    hit_player_obj.waterfalled = true;
}