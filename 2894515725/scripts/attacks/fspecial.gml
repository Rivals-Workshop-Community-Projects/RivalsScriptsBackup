set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 5);

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 50); // load the shotgun
if has_rune("B") {
    set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 150); // load the shotgun
    set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.01)
    set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, true)
}
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 10); // load the shotgun

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 15); // put away
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 15);