//set_attack

user_event(0)

has_reduced = false;
has_increased = false;

/*
if attack == AT_NSPECIAL {
    attack = 49;
}
*/

//limit charge
if practice_mode && attack == AT_TAUNT && (up_down || down_down) {
    attack = AT_TAUNT_2
}


if attack == AT_USPECIAL {
    if !free {
        set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 6);
        set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 3);
    } else {
        reset_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH);
        reset_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME);
    }
}

if attack == AT_FSPECIAL {
    moveangle = 0
    movespd = 0
    origx = x
    origy = y
    noprat = false
    reset_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE);
}