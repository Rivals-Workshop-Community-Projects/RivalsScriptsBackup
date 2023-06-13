//set_attack

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
reset_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH);
reset_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES);

if(jabbing && has_hit){
    set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 8);
    set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 7);
} else {
    reset_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH);
    reset_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME);
}

if(attack == AT_JAB){
    jabbing = true;
}