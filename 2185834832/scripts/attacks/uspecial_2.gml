set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 1);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecialair"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL_2, AG_LANDING_LAG, 11);
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecialair_hurt"));

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 12);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_orca_soak"));

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -10);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_num_hitboxes(AT_USPECIAL_2, 2);

set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1)
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, -7);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 3.5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.12);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 270);