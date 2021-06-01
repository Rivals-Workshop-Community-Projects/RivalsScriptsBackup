set_attack_value(AT_EXTRA_1, AG_CATEGORY, 0);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("parry"));
set_attack_value(AT_EXTRA_1, AG_AIR_SPRITE, sprite_get("idle_air"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_1, AG_LANDING_LAG, 8);
set_attack_value(AT_EXTRA_1, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_sword_activate"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.01);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_EXTRA_1, 0);
