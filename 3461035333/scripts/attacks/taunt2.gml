set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 6);
set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);

// Se met en position
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 2);

// Montée de la jambe
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX_FRAME, 3);

// Jambe en l'air
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);

// Descente de la jambe
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAME_START, 13);

// Coup de poing kung-fu
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_SFX_FRAME, 4);

// La fin
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_ANIM_FRAME_START, 19);