set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial_armor_2"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("uspecial_armor_2"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_armor_2_hurt"));
//set_attack_value(AT_USPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_shatter"));
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX_FRAME, get_window_value(AT_USPECIAL_2,1,AG_WINDOW_LENGTH)-1);

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -10);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);