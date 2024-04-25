if (my_hitboxID.player != my_hitboxID.orig_player) exit;

if (my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 1){
    old_hsp -= 3*spr_dir;
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hit_priority == 3.1 && instance_exists(vigiGhost)){
    vigiGhost.state = "fade";
    vigiGhost.state_timer = 0;
}

if (my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num == 4){
    hit_player_obj.hitstun = get_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME) * ( 1 + (ease_linear(0, 1, strong_charge, 60) / 2));
    hit_player_obj.hitstun_full = get_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME) * ( 1 + (ease_linear(0, 1, strong_charge, 60) / 2));
    hit_player_obj.hurt_img = 5;
}

if( my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 1){
    clear_button_buffer(PC_ATTACK_PRESSED);
}