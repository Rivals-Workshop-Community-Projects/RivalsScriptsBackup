if (attack == AT_DSPECIAL) {
    if (free) {
        attack = AT_DSPECIAL_AIR;
        set_window_value(attack, 1, AG_WINDOW_LENGTH, tension_level == 4 ? DSPECIAL_STARTUP_TL4 : DSPECIAL_STARTUP);
        set_window_value(attack, 3, AG_WINDOW_LENGTH, tension_level == 4 ? DSPECIAL_ENDLAG_TL4 : DSPECIAL_ENDLAG);
    }
    else {
        set_window_value(attack, 1, AG_WINDOW_LENGTH, tension_level == 4 ? DSPECIAL_STARTUP_TL4 : DSPECIAL_STARTUP);
        set_window_value(attack, 3, AG_WINDOW_LENGTH, tension_level == 4 ? DSPECIAL_ENDLAG_TL4 : DSPECIAL_ENDLAG);
    }
}
if (attack == AT_TAUNT) {
    if (down_down) {
        attack = AT_TAUNT_2;
        clear_button_buffer(PC_TAUNT_PRESSED);
    }   
}