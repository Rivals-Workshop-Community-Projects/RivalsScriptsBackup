//got_parried.gml
// Variable Definition
var parrymove = my_hitboxID.attack;

if (parrymove == AT_NSPECIAL) {
    with devilsknife {
        state = 4;
        state_timer = 0;
    }
}

if (parrymove == AT_FSPECIAL || parrymove == AT_FSPECIAL_2) {
    my_hitboxID.hitbox_timer = 0;
    my_hitboxID.hsp *= 2;
}

if !diamondbutbetterkrisbbutbetter{
    if my_hitboxID.type == 2{
        tp_gauge -= 10;
    } else {
        tp_gauge -= 20;
    }
}

if runesUpdated{
    if runeN{
        if naturevalleynaenae >= 9{
            set_state(PS_IDLE);
        }
    }
    
    if runeN && diamondbutbetterkrisbbutbetter{
        invinc_time = invinc_time + 30;
    }
}