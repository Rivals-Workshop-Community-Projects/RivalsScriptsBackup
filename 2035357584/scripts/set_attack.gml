//set_attack

//turn attacks into grenade variant when hasgrenade = true
if(has_grenade){
    switch(attack){
        case AT_USTRONG:
            attack = AT_USTRONG_G;
        break;
        
        case AT_DSTRONG:
            attack = AT_DSTRONG_G;
        break;
        
        case AT_FSPECIAL:
            attack = AT_FSPECIAL_G;
        break;
        
        case AT_DSPECIAL:
            attack = AT_DSPECIAL_G;
        break;
        
        case AT_USPECIAL:
            attack = AT_USPECIAL_G;
        break;
        
        case AT_NSPECIAL:
            window = 3;
            window_timer = 0;
        break;
        
        case AT_JAB:
            attack = AT_JAB_G;
        break;
        
        case AT_DATTACK:
            attack = AT_DATTACK_G;
        break;
        
        case AT_FTILT:
            attack = AT_FTILT_G;
        break;
        
        case AT_UTILT:
            attack = AT_UTILT_G;
        break;
        
        case AT_DTILT:
            attack = AT_DTILT_G;
        break;
        
        case AT_NAIR:
            attack = AT_NAIR_G;
        break;
        
        case AT_FAIR:
            attack = AT_FAIR_G;
            reset_attack_value(AT_FAIR_G, AG_HAS_LANDING_LAG)
        break;
        
        case AT_BAIR:
            attack = AT_BAIR_G;
        break;
        
        case AT_DAIR:
            attack = AT_DAIR_G;
        break;
        
        case AT_UAIR:
            attack = AT_UAIR_G;
        break;
        
        case AT_TAUNT:
            window = 4;
        break;
        
        default: break;
    }
}
else{
    switch(attack){
        case AT_DSPECIAL:
            if(free){
                window = 5;
                window_timer = 0;
            }
        break;
            
        case AT_FSPECIAL:
            if(free){
                window = 9;
                window_timer = 0;
                vsp = 0;
            }
        break;
            
        default: break;
    }
}