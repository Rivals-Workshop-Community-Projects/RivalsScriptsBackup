//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
    if (window == 1){
        move_cooldown[AT_NSPECIAL] = 270;
        }
}

if (attack == AT_FSPECIAL){
    if (window == 1){
        move_cooldown[AT_FSPECIAL] = 80;
        }
        if (window == 2){
        hsp = 0;
        vsp = 0;
    }
        if (window == 3){
        can_wall_jump = true;
    }
}

if (attack == AT_USPECIAL) {
    if (window == 1){
        hsp = 0;
        vsp = 0;
        can_move = false;
    }
    if (window == 2){
        if(!joy_pad_idle){
            teleport_sp = -32;
            vsp = (dsin(joy_dir)*teleport_sp);
            hsp = (dcos(joy_dir)*-teleport_sp);
        }
    }
    if (window == 3){
        hsp = 0;
        vsp = 0;
        can_wall_jump = true;
    }
  
}

if (attack == AT_DSPECIAL){
    if (window == 2 && !was_parried){
        can_jump = true;
        }
    if (window == 1){
        hsp = 0;
        vsp = 0;
        move_cooldown[AT_DSPECIAL] = 60;
        }
    can_fast_fall = false;
    can_move = false
}
