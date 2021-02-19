set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_SPRITE, spr_fthrow);
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 2);
set_attack_value(AT_FTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_FTHROW, AG_MUNO_ATTACK_NAME, "FSpecial (Synced) (Akira)");

// startup
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, sfx_astral_chain_normal_swipe_1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX_FRAME, 16);

// active
set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 5);