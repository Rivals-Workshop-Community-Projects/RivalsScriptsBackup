//if attack == AT_TAUNT{
//    if down_down{attack = AT_TAUNT_2}
//}



if (attack == AT_DSPECIAL){
    if (vsp < -1){
    vsp = -1
    }  
if (vsp > 0){
    vsp = 0
    }
}

if (attack == AT_DSPECIAL)
if (window == 2 && special_pressed)
attack = AT_FIRE