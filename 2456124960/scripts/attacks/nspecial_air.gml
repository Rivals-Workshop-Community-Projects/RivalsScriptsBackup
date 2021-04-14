set_attack_value(AT_NSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NSPECIAL_AIR, AG_LANDING_LAG, 8);
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_HAS_WHIFFLAG, 12);

set_num_hitboxes(AT_NSPECIAL_AIR, 1);