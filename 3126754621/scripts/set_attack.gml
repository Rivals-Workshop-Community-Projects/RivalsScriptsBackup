//set_attack

if attack == AT_USTRONG {
    ascend_plat = undefined
}

if attack == AT_FSTRONG {
    fuse_reticle_x = x
    fuse_reticle_y = y
    fuse_start_x = x
    fuse_start_y = y
}

if attack == AT_FTILT {
    reset_hitbox_value(AT_FTILT, 1, HG_WINDOW);
}
/*
if attack == AT_FTILT {
    //fuse_overlay = true
    if fuse_item_shield == 0 {
        reset_hitbox_value(AT_FTILT, 2, HG_WINDOW);
        reset_hitbox_value(AT_FTILT, 3, HG_WINDOW);
        reset_hitbox_value(AT_FTILT, 4, HG_WINDOW);
    }
}
*/

if attack == AT_TAUNT {
    if down_down {
        attack = AT_TAUNT_2
    }
}