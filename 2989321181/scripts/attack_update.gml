if (attack == AT_TAUNT && get_gameplay_time() > 120 && !hitpause && beyTimer){
    
    if (left_down){
        if (beyTimer > 5400 || has_rune("E"))
            hsp -= 0.1 * (1 + 4*has_rune("A"));
        else
            hsp -= 0.05 * (1 + 4*has_rune("A"));
            
        if (has_rune("N") && hsp > 0){
            hsp = hsp/1.2;
        }
    }
    else if (right_down){
        if (beyTimer > 5400 || has_rune("E"))
            hsp += 0.1 * (1 + 4*has_rune("A"));
        else
            hsp += 0.05 * (1 + 4*has_rune("A"));
        
        if (has_rune("N") && hsp < 0){
            hsp = hsp/1.2;
        }
    }
    //else
        //hsp = hsp/1.1;
    if (has_rune("N") && !left_down && !right_down)
        hsp = hsp/1.1;
}

if (attack == AT_TAUNT && window == 2 && window_timer == 1){
    window_timer = 0;
}