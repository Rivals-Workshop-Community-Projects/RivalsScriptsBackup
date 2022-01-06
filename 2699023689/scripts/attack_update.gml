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
        if (joy_pad_idle){
            movedir = 90;
        }
        else{
            movedir = round(joy_dir/45)*45;
        }
        if (window == 3 && round(joy_dir/45)*45 == round(firstdirection/45)*45){
            if (round(joy_dir/45)*45 == round(joy_dir/90)*90){ //if first direction was up down left or right
                movedir = round((joy_dir-45)/90)*90+45;
            }
            if (round(joy_dir/45)*45 == round((joy_dir-45)/90)*90+45){ //if first direction was diagonal
                movedir = round(joy_dir/90)*90;
            }
            if (abs(joy_dir - firstdirection)<10){
                cancel = 1;
            }
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
    if (jump_down && djumps == 0 && vsp > -6){
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

    if (window > 2){
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

if (attack == AT_NAIR){
    if (free){
        last_speed = vsp;
    }
    if window = 1{
        attack_held = true;
    }
    if (not attack_down){
        attack_held = 0;
    }
    if (not free && window == 2 && attack_held){
        attack_end();
        free = true;
        vsp = last_speed * -0.5;
        window_timer = 0;
        window = 1;
        no_other_hit = 0;
    }
}


if (attack == AT_DSPECIAL){
    can_fast_fall = false;
    if (free){
        set_attack(AT_DSPECIAL_AIR);
        landed = false;
        hsp = 0;
        vsp = 0;
    }
    else{
        if (window == 1){
            hsp = 0;
            vsp = 0;
        }
        if (window = 2){
            hsp = spr_dir*10;
        }
        if (has_hit and window != 5){
            djumps = 0;
            hsp = 0;
            vsp = 0;
            window = 5;
            window_timer = 0;
        }
    }
}

if (attack == AT_DSPECIAL_AIR){
    can_fast_fall = false;
    if ((not free) and was_free){
        window = 4;
        was_free = false;
        window_timer = 0;
        landed = true;
    }
    if free{
         was_free = true;
         if (landed){
             set_state(PS_IDLE_AIR);
         }
         if (has_hit and window != 5){
            djumps = 0;
            hsp = 0;
            vsp = 0;
            window = 5;
            window_timer = 0;
        }
    }
    
    
}
