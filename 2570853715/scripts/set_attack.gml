user_event(13);

if(attack == AT_NSPECIAL){
    nspecial_charge_timer = 0;
    nspecial_charged = false;
}

if(attack == AT_DSPECIAL){
    var knife = false;
    with(pHitBox){
        if(player = other.player and attack == AT_DSPECIAL){
            knife = true;
        }
    }
    if(knife){
        attack = AT_DSPECIAL_2;
    }
}