set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial_2"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_DSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial_2_hurt"));

set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 40);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_num_hitboxes(AT_DSPECIAL_2, 0);