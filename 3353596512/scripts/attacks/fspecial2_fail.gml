//zap gun cooldown

set_attack_value(AT_FSPECIAL2_FAIL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL2_FAIL, AG_SPRITE, sprite_get("fspecial2_fail"));
set_attack_value(AT_FSPECIAL2_FAIL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL2_FAIL, AG_AIR_SPRITE, sprite_get("fspecial2_fail"));
set_attack_value(AT_FSPECIAL2_FAIL, AG_HURTBOX_SPRITE, sprite_get("fspecial2_fail_hurt"));
set_attack_value(AT_FSPECIAL2_FAIL, AG_MUNO_ATTACK_NAME, "FSpecial 2 (Fail)");

//startup
set_window_value(AT_FSPECIAL2_FAIL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL2_FAIL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL2_FAIL, 1, AG_WINDOW_ANIM_FRAMES, 3);

//scanning
set_window_value(AT_FSPECIAL2_FAIL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL2_FAIL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL2_FAIL, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//whiff endlag
set_window_value(AT_FSPECIAL2_FAIL, 3, AG_WINDOW_LENGTH, 26);
set_window_value(AT_FSPECIAL2_FAIL, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL2_FAIL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL2_FAIL, 3, AG_WINDOW_GOTO, 9);
