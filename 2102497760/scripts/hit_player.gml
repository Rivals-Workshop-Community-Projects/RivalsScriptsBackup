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

if tutorial_on && cur_scene == 16 {
    if (attack == AT_FTILT || attack == AT_UTILT) && my_hitboxID.type == 2 {
        cpu_hit_full = true;
    }
}

if is_ou && attack != AT_FSPECIAL && my_hitboxID.type == 2 { //If attack is from Ou
    Ou.has_hit_en = true;
}