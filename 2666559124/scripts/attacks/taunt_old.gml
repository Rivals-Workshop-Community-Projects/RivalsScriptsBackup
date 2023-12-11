set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt_old"));
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("taunt_old_hurt"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 3);

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);
