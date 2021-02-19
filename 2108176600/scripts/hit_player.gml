//hit_player - called when one of your hitboxes hits a player

if my_hitboxID.attack == AT_DAIR { 
    with my_hitboxID.player_id {
        dair_hit = 1;
    }
}

if my_hitboxID.attack == AT_UTILT && my_hitboxID.hbox_num == 1 {
    with my_hitboxID.player_id {
        utilt_hit = 1;
        grabbed = other.hit_player_obj;
        spr_dir2 = 0;
    }
}
if my_hitboxID.attack == AT_FTILT && my_hitboxID.hbox_num == 1 {
    with my_hitboxID.player_id {
        ftilt_hit = 1;
        grabbed = other.hit_player_obj;
        spr_dir2 = 0;
    }
}

