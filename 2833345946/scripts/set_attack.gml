//set_attack

breversed = false

nspec_multishot = false
reset_attack_value(AT_NSPECIAL, AG_SPRITE);

if attack == AT_USPECIAL || attack == AT_USPECIAL_2 {
    reset_window_value(attack, 2, AG_WINDOW_GOTO);
    
    if !free {
        set_window_value(attack, 1, AG_WINDOW_LENGTH, 6);
        set_window_value(attack, 1, AG_WINDOW_SFX_FRAME, 3);
    } else {
        reset_window_value(attack, 1, AG_WINDOW_LENGTH);
        reset_window_value(attack, 1, AG_WINDOW_SFX_FRAME);
    }
}

switch attack {
    case AT_USTRONG:
    //reset_window_value(AT_USTRONG, 1, AG_WINDOW_GOTO);
    break;
}

//use hilt attacks

//wall attack uses AT_FTHROW
if stance switch attack {
    case AT_JAB: attack = AT_EXTRA_1 break;
    case AT_BAIR: attack = AT_EXTRA_2 break;
    case AT_FAIR: attack = AT_EXTRA_3 break;
    case AT_DAIR: attack = AT_DTHROW break;
    case AT_DTILT: attack = AT_UTHROW break;
    case AT_NSPECIAL: attack = AT_FSPECIAL_2 break;
    case AT_FSPECIAL: attack = AT_NSPECIAL_2 break;
    case AT_USPECIAL: attack = AT_USPECIAL_2 break;
    case AT_DATTACK: attack = AT_FSPECIAL_AIR break;
    case AT_DSPECIAL: attack = AT_DSPECIAL_2 break;
    case AT_FSTRONG: attack = AT_FSTRONG_2 break;
    case AT_USTRONG: attack = AT_USTRONG_2 break;
    case AT_DSTRONG: attack = AT_DSTRONG_2 break;
    case AT_FTILT: attack = AT_DSPECIAL_AIR break;
}

switched = false