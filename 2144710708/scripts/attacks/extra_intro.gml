// "INTRO"

set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("phone_open"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 1);
set_attack_value(AT_NTHROW, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_NTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_window_value(AT_NTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, sound_get("button15"));
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX_FRAME, 1);