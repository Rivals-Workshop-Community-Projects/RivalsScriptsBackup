set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
//set_attack_value(AT_USPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);


//startup.
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_absa_whip_charge"));

//active.
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);

//recovery.
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 2);

