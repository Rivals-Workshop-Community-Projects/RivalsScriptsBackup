if (attack == AT_FSPECIAL){
    if (window == 1){
        vsp = clamp(vsp, -99, 1);
         can_fast_fall = false;
    }
    if (window == 3){
        hsp = clamp(hsp, -5, 5);
        can_fast_fall = true;
        move_cooldown[AT_FSPECIAL] = 20;
    }
    if (window > 1){
        can_wall_jump = true;
    }
}

if(attack == AT_DSPECIAL and window == 2 and window_timer == 2){
  move_cooldown[AT_DSPECIAL] = 700;
}

if(attack == AT_NSPECIAL and window == 3 and window_timer == 2){
  move_cooldown[AT_NSPECIAL] = 60;
}

