set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("fspecial_special"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial_special_hurt"));
set_attack_value(AT_NSPECIAL_2, AG_MUNO_ATTACK_NAME, "Fspecial Special");
set_attack_value(AT_NSPECIAL_2, AG_MUNO_ATTACK_USES_ROLES, 1);

//Startup
set_window_value(AT_NSPECIAL_2, 1, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HSPEED, 3.5);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_VSPEED, -9);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 7);

//Shoot
set_window_value(AT_NSPECIAL_2, 2, AG_MUNO_WINDOW_ROLE, 3);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//Endlag
set_window_value(AT_NSPECIAL_2, 3, AG_MUNO_WINDOW_ROLE, 3);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_NSPECIAL_2, 0);