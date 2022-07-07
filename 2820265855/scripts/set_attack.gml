// ==================== GRAFFITI SET_ATTACK  ======================
if attack == AT_TAUNT && get_synced_var(player) == true {
    attack = AT_TAUNT_2;
}
// ================================================================


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