set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("airdodge"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("airdodge"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1); // startup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ori_dtilt_perform"));

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1); // boop
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1); // endlag
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_blow_medium3"));
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);