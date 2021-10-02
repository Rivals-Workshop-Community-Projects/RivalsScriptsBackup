set_attack_value(43, AG_SPRITE, sprite_get("golden_taunt"));
set_attack_value(43, AG_NUM_WINDOWS, 4);
set_attack_value(43, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(43, AG_MUNO_ATTACK_EXCLUDE, 1);

set_window_value(43, 1, AG_WINDOW_TYPE, 1);
set_window_value(43, 1, AG_WINDOW_LENGTH, 20);
set_window_value(43, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(43, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(43, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(43, 1, AG_WINDOW_SFX_FRAME, get_window_value(43, 1, AG_WINDOW_LENGTH) - 1);

set_window_value(43, 2, AG_WINDOW_TYPE, 1);
set_window_value(43, 2, AG_WINDOW_LENGTH, 40);
set_window_value(43, 2, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(43, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(43, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(43, 2, AG_WINDOW_SFX, sound_get("crack2"));
set_window_value(43, 2, AG_WINDOW_SFX_FRAME, get_window_value(43, 2, AG_WINDOW_LENGTH) - 1);

set_window_value(43, 3, AG_WINDOW_TYPE, 1);
set_window_value(43, 3, AG_WINDOW_LENGTH, 56);
set_window_value(43, 3, AG_WINDOW_ANIM_FRAMES, 14);
set_window_value(43, 3, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(43, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(43, 3, AG_WINDOW_SFX, asset_get("sfx_blow_weak2"));
set_window_value(43, 3, AG_WINDOW_SFX_FRAME, get_window_value(43, 2, AG_WINDOW_LENGTH) - 1);

set_window_value(43, 4, AG_WINDOW_TYPE, 1);
set_window_value(43, 4, AG_WINDOW_LENGTH, 42);
set_window_value(43, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(43, 4, AG_WINDOW_ANIM_FRAME_START, 29);