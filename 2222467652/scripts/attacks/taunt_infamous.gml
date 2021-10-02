set_attack_value(42, AG_SPRITE, sprite_get("infamous_taunt"));
set_attack_value(42, AG_NUM_WINDOWS, 3);
set_attack_value(42, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(42, AG_MUNO_ATTACK_EXCLUDE, 1);

set_window_value(42, 1, AG_WINDOW_TYPE, 1);
set_window_value(42, 1, AG_WINDOW_LENGTH, 20);
set_window_value(42, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(42, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(42, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(42, 1, AG_WINDOW_SFX_FRAME, get_window_value(42, 1, AG_WINDOW_LENGTH) - 1);

set_window_value(42, 2, AG_WINDOW_TYPE, 1);
set_window_value(42, 2, AG_WINDOW_LENGTH, 40);
set_window_value(42, 2, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(42, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(42, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(42, 2, AG_WINDOW_SFX, sound_get("crack2"));
set_window_value(42, 2, AG_WINDOW_SFX_FRAME, get_window_value(42, 2, AG_WINDOW_LENGTH) - 1);

set_window_value(42, 3, AG_WINDOW_TYPE, 1);
set_window_value(42, 3, AG_WINDOW_LENGTH, 56);
set_window_value(42, 3, AG_WINDOW_ANIM_FRAMES, 14);
set_window_value(42, 3, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(42, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(42, 3, AG_WINDOW_SFX, asset_get("sfx_blow_weak2"));
set_window_value(42, 3, AG_WINDOW_SFX_FRAME, get_window_value(42, 2, AG_WINDOW_LENGTH) - 1);