//set_attack

if attack == AT_FSPECIAL {
    reset_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED);
    reset_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW);
    reset_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW);
    reset_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_FSPECIAL, 1, HG_FINAL_BASE_KNOCKBACK);
}

if attack == AT_USPECIAL {
    uspec_grounded = false
}

if attack == AT_DSPECIAL {
    dspec_explosion_timer = -1
}