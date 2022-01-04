if (attack == AT_USPECIAL){
    can_wall_jump = true;
    can_fast_fall = false;
    grav = 0;
    hitstop = 0;
    
    if (window == 1 || window == 3){
        hsp = 0;
        vsp = 0;
        if (window == 1){
            cancel = 0;
            actionable = 0;
            if (free == 1){
                aerial = 1;
            }
            else{
                aerial = 0;
            }
        }
        if (joy_pad_idle || round(joy_dir/45)*45 == round(firstdirection/45)*45){
            movedir = 90;
            if (window == 3){
                cancel = 1;
            }
        }
        else{
            movedir = round(joy_dir/45)*45;
        }
    }
    if (window == 3 && not free){
        actionable = 1;
    }
    if (window == 2 || window == 4){
        if (cancel = 0){
            hsp = lengthdir_x(23, movedir);
            vsp = lengthdir_y(23, movedir);
        }
        else{
            if (aerial == 1){
                set_state(PS_PRATFALL);
            }
            else{
                set_state(PS_IDLE_AIR);
            }
            
        }
        if (window == 2){
            firstdirection = movedir;
        }
        
    }
    if (window == 6 && actionable = 1){
            set_state(PS_IDLE_AIR)
        }
}




if (attack == AT_FSPECIAL){
    if (jump_down && djumps == 0 && vsp > -8){
        vsp -= 1;
        hovertime = 6;   //How many frames the player has after the end of fspecial to keep hovering
    }
    if (window == 2 && not special_down){
        window = 5;
        window_timer = 0;
    }
    if (window == 5 && window_timer == 4){
        window = 6;
        window_timer = 0;
    }
    midmissile = 2;
}




if (attack == AT_NSPECIAL){
    print_debug(window_timer);
    print_debug(window);
    if (window == 3 or window == 7){
        can_jump = true;
    }
    if (not special_down){ 
        if (window == 1){
            window = 3;
            shine_timer = 0;
            window_timer = 0;
            
        }
    
    }
    if (window == 2){
        window = 6;
        big_shine_timer = 0;
        window_timer = 0;
    }
}
    