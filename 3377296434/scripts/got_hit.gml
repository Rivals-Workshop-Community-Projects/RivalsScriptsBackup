if (prev_state == PS_ATTACK_AIR || prev_state == PS_ATTACK_GROUND){
    if (attack == AT_DSPECIAL_2 && instance_exists(brick)){
        if (brick.state == 3){
            brick.state = 2;
            brick.state_timer = 0;
            brick.hsp = 0;
            brick.vsp = -8;
        }
    }
}

if (state_cat == SC_HITSTUN){
    mach_timer = 0;
    mach_mode = false;
}