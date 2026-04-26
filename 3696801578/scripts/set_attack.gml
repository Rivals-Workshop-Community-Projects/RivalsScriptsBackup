if attack == AT_FSPECIAL {
    fspecial_cache = false
}

fspecial_ledgeforgiven = false



if jake_cooldown != 0 {
    switch attack {
        case AT_NSPECIAL:
            attack = AT_NSPECIAL_2
            nspecial_grabbed_opps = []        
        break;
        case AT_FSPECIAL:
            attack = AT_FSPECIAL_2
        break;
    }
}

if !instance_exists(jake_obj) exit
    
switch attack {
    case AT_NSPECIAL:
        attack = AT_NSPECIAL_2
        nspecial_grabbed_opps = []        
    break;
    case AT_FSPECIAL:
        attack = AT_FSPECIAL_2
    break;
    case AT_DSPECIAL:
        attack = AT_DSPECIAL_2
    break;
    case AT_TAUNT:
        attack = AT_EXTRA_2
    break;
}