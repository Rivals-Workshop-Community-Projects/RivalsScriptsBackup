// Check for Rain
if (raincloud != noone and raincloud.state < 3){
    if attack == AT_DSPECIAL{
        attack = AT_DSPECIAL_2;
    }
}

if free{
    switch(attack){
        case AT_NSPECIAL:
            attack = AT_NSPECIAL_AIR;
            break;
    }
} else {
    switch(attack){
        case AT_TAUNT:
            if (down_down or up_down) and !shield_down{
                attack = AT_EXTRA_1;
            }
            if shield_down or shield_pressed{
                shades_to_equip = 1;
                attack = AT_TAUNT_2;
            }
            break;
    }
}