//uspecial (no tools)
set_attack_value(AT_USPECIAL_FAIL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_FAIL, AG_SPRITE, sprite_get("uspecial_fail"));
set_attack_value(AT_USPECIAL_FAIL, AG_NUM_WINDOWS, 2);
set_attack_value(AT_USPECIAL_FAIL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_FAIL, AG_AIR_SPRITE, sprite_get("uspecial_fail"));
set_attack_value(AT_USPECIAL_FAIL, AG_HURTBOX_SPRITE, sprite_get("uspecial_fail_hurt"));
set_attack_value(AT_USPECIAL_FAIL, AG_MUNO_ATTACK_NAME, "USpecial (Fail)");

//startup
set_window_value(AT_USPECIAL_FAIL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_FAIL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_FAIL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_FAIL, 1, AG_WINDOW_SFX, sound_get("jetpack_break"));
set_window_value(AT_USPECIAL_FAIL, 1, AG_WINDOW_SFX_FRAME, 5);

//"thrust"
set_window_value(AT_USPECIAL_FAIL, 2, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_FAIL, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USPECIAL_FAIL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_FAIL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL_FAIL, 2, AG_WINDOW_VSPEED, -11);
set_window_value(AT_USPECIAL_FAIL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_FAIL, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_USPECIAL_FAIL, 2, AG_WINDOW_HSPEED_TYPE, 2);