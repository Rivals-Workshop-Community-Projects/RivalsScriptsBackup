set_attack_value(AT_DTHROW, AG_CATEGORY, 0);
set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("spotdodge"));
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("penny_hurt"));

set_window_value(AT_DTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_quick_dodge"));
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 1);
