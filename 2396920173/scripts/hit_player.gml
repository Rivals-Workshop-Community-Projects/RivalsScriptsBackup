//hit-player

if my_hitboxID.type == 1 {
    sound_play(sfx_capture)
} else if my_hitboxID.type == 2 {
    sound_play(sfx_move)
}

if my_hitboxID.attack == AT_FTHROW && my_hitboxID.hbox_num == 1 {
    my_hitboxID.owner.hitstop = 10;
    if my_hitboxID.owner.piece == "P" {
        if pawn_meter < 7 pawn_meter++;
    }
}

if my_hitboxID.attack == AT_DSPECIAL_2 && my_hitboxID.hbox_num == 2 {
    my_hitboxID.owner.has_hit = true;
}

if my_hitboxID.attack == AT_NSPECIAL_2 && my_hitboxID.hbox_num == 1 {
    my_hitboxID.destroyed = true;
    var hitbox = create_hitbox(AT_NSPECIAL_2, 2, my_hitboxID.x, my_hitboxID.y);
        hitbox.hsp = 0;
        hitbox.vsp = 0;
        hitbox.counter = 0;
}

if my_hitboxID.attack == AT_USPECIAL {
     set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 0);
}

//trailer_phase++;