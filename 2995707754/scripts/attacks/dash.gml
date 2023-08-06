//dash
set_attack_value(48, AG_CATEGORY, 2);
set_attack_value(48, AG_OFF_LEDGE, 1);
set_attack_value(48, AG_SPRITE, sprite_get("forward_dash"));
set_attack_value(48, AG_NUM_WINDOWS, 3);
set_attack_value(48, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(48, 1, AG_WINDOW_TYPE, 1);
set_window_value(48, 1, AG_WINDOW_LENGTH, 5);
set_window_value(48, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(48, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(48, 1, AG_WINDOW_SFX, asset_get("sfx_dash_start"));
set_window_value(48, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(48, 2, AG_WINDOW_TYPE, 1);
set_window_value(48, 2, AG_WINDOW_LENGTH, 8);
set_window_value(48, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(48, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(48, 3, AG_WINDOW_TYPE, 1);
set_window_value(48, 3, AG_WINDOW_LENGTH, 8);
set_window_value(48, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(48, 3, AG_WINDOW_ANIM_FRAME_START, 3);