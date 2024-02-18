//hit_player

if (my_hitboxID.type == 2 && my_hitboxID.attack != AT_FSPECIAL && my_hitboxID.attack != AT_DSPECIAL){
    hitpause = true;
    hitstop = my_hitboxID.hitpause;
    hitstop_full = my_hitboxID.hitpause;
    old_hsp = hsp;
    old_vsp = vsp;
}
  
if (my_hitboxID.attack == AT_FSPECIAL) && my_hitboxID.type == 1{
    window = 4;
    window_timer = 0;
    if my_hitboxID.hbox_num == 2{
        old_hsp = -2 * spr_dir;
        old_vsp = -8;
    }
}  
    
//if (attack == AT_DATTACK){
//    window_timer = 1;
//    window = 4;
//}
/*

if (attack == AT_FTILT && ftilt_back == true){
    hit_player_obj.spr_dir *= -1;
    ftilt_back = false;
}

