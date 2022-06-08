// ENTRANCE

set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("entrance"));
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 1);


set_window_value(AT_NTHROW, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 130);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 31);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, sound_get("myturn"));