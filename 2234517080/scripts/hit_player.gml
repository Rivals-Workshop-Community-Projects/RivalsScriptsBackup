if (my_hitboxID.attack == AT_BAIR){
    old_hsp = -8*spr_dir;
    old_vsp = -5;
    window = 4;
    window_timer = 4;
}

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1){
    destroy_hitboxes();
    attack = AT_FSPECIAL_2;
    window = 1;
    window_timer = 1
    old_vsp = -7;
    old_hsp = 0;
    if (my_hitboxID.attack == AT_FSPECIAL){
        grabbed = hit_player_obj;
    }
}