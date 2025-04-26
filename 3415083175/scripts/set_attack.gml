//set_attack

empowered_cloud = false

if fire_stance {
    switch attack {
        case AT_FTILT:
        attack = AT_FTHROW
        break;
        
        case AT_FAIR:
        attack = AT_FSTRONG_2
        break;
        
        case AT_UTILT:
        attack = AT_UTHROW
        break;
        
        case AT_JAB:
        attack = AT_NTHROW
        break;
        
        case AT_DAIR:
        attack = AT_DTHROW
        break;
    }
}

if attack == AT_TAUNT && down_down && move_cooldown[AT_TAUNT_2] == 0 {
    attack = AT_TAUNT_2
}
/*
fire_moves = [
    AT_FTHROW, AT_UAIR, AT_DATTACK, AT_NTHROW, AT_DSPECIAL, AT_FSPECIAL
]

var is_fire_move = false
for (var i = 0; i < array_length(fire_moves); i++) {
    if attack == fire_moves[i] {
        is_fire_move = true
    }
}

if !is_fire_move {
    fire_stance = false
    fire_amount = 0
}
*/