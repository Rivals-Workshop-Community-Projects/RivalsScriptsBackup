if state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND{
    switch(attack){
        case AT_TAUNT_2:
            if window == 6 or window == 5{
                suppress_stage_music(0, 1);
            }
            if window == 7 and window_timer == 1{
                suppress_stage_music(1, 1);
            }
            break;
    }
}