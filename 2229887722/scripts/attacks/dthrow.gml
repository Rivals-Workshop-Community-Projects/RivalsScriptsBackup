set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_DTHROW, AG_AIR_SPRITE, sprite_get("jab"));
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_DTHROW, AG_HURTBOX_AIR_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 3);

//1st Jab
set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 2);

set_window_value(AT_DTHROW, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DTHROW, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTHROW, 3, AG_WINDOW_CANCEL_TYPE, 1);