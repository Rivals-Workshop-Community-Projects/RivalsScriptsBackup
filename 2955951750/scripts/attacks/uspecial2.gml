set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial_boosted"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL_2, AG_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("uspecial_boosted"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_boosted_hurt"));
set_attack_value(AT_USPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_TYPE, 1); //jumpstart
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 1); //initial grab
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 9);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.0);

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 1); //slower rise/cargo
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_TYPE, 7); //whiff fall
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.7);

set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_TYPE, 1); //falling start
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_LENGTH, 22);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.7);

set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_TYPE, 9); //SUPLEX
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_num_hitboxes(AT_USPECIAL_2, 1);

set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 15);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 46);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 20);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 0.1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_TECHABLE, 3); //no tech or bounce
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL_2, 2, HG_LIFETIME, 20);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_SPRITE, sprite_get("boom"));
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_MASK, sprite_get("boom"));
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, -47);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WIDTH, 20);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_USPECIAL_2, 2, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_DAMAGE, 16);
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_USPECIAL_2, 2, HG_VISUAL_EFFECT, stronghit);