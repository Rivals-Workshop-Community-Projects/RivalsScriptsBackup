set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial_teleport"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 1);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("uspecial_teleport"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 60);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 19);  //It's all a single window
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_holy_tablet"));
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 30);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX, asset_get("mfx_timertick_holy2"));