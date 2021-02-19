if attack == AT_DAIR{
    reset_window_value(attack, 4, AG_WINDOW_SFX);
}
indicator_timer = 0;
indicator_scale = 0;

//Dspecial reset
reset_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE);
reset_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH);
reset_window_value(attack, 2, AG_WINDOW_ANIM_FRAMES);
reset_window_value(attack, 2, AG_WINDOW_ANIM_FRAME_START);