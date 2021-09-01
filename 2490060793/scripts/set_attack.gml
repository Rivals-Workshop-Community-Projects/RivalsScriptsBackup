//set_attack

user_event(0)

has_reduced = false;
has_increased = false;

/*
if attack == AT_NSPECIAL {
    attack = 49;
}
*/

/*
if attack == AT_TAUNT {
    attack = AT_TAUNT_2
}
*/

if attack == AT_USPECIAL {
    if !free {
        set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 6);
        set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 3);
    } else {
        reset_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH);
        reset_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME);
    }
}