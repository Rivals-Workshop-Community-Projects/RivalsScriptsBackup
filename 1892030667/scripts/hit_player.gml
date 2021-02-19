//hit_player

//if my_hitboxID.y_pos == get_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y) && my_hitboxID.x_pos == get_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X) {
    //with hit_player_obj {
        //set_state(PS_TECH_GROUND);
    //}
//}

if my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num == 1 hit_player_obj.old_hsp = spr_dir*15;//-sign(x-hit_player_obj.x)*15;