//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//if (attack == AT_NSPECIAL){
//    if (window == 3){
//        if (special_pressed){
//            window = 1;
//            window_timer = 0;
//        }
//    }
//}

if (attack == AT_FSPECIAL){
        can_move = true;
    }


if (attack == AT_NAIR && window == 2 && window_timer == 1){
        can_jump = true;
    }
if (attack == AT_TAUNT && down_down){
    set_attack(AT_TAUNT_2);}
    
//if (attack == AT_DAIR && window == 2 && window_timer == 1){
//    can_fast_fall = false;}