set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL_2, AG_USES_CUSTOM_GRAVITY, true);

//startup
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_buzzsaw_hit"));
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

//travel
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, uspec_max_travel);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

//jump, used to be window 3
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 12); //was 24
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_SFX, asset_get("sfx_buzzsaw_throw"));
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_num_hitboxes(AT_USPECIAL_2, 0);
