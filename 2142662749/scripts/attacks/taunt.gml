set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("ru_hurtbox"));

set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 2);

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 24);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 28);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 0);