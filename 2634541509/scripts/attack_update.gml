//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
    /*
    if (attack == AT_NSPECIAL){
        if (joy_dir >= 45 && joy_dir <= 135){
            set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
            set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -10);
        } else {
            set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
            set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -2);
        }
    }
    */
}

if (attack == AT_DAIR){
    can_fast_fall = false;
}