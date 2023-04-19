set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_SPRITE, sprite_get("fs"));
set_attack_value(49, AG_NUM_WINDOWS, 6);
set_attack_value(49, AG_HAS_LANDING_LAG, 1);
set_attack_value(49, AG_LANDING_LAG, 8);
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(49, 1, AG_WINDOW_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_LENGTH, 15);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(49, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(49, 2, AG_WINDOW_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_LENGTH, 26);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(49, 3, AG_WINDOW_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_LENGTH, 24);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(49, 4, AG_WINDOW_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_LENGTH, 16);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(49, 5, AG_WINDOW_TYPE, 1);
set_window_value(49, 5, AG_WINDOW_LENGTH, 8);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAME_START, 17);

set_window_value(49, 6, AG_WINDOW_TYPE, 1);
set_window_value(49, 6, AG_WINDOW_LENGTH, 9);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAME_START, 21);

set_num_hitboxes(49, 3);

set_hitbox_value(49, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(49, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 6);
set_hitbox_value(49, 1, HG_SHAPE, 2);
set_hitbox_value(49, 1, HG_LIFETIME, 3);
set_hitbox_value(49, 1, HG_HITBOX_Y, -40);
set_hitbox_value(49, 1, HG_HITBOX_X, 0);
set_hitbox_value(49, 1, HG_WIDTH, 100);
set_hitbox_value(49, 1, HG_HEIGHT, 100);
set_hitbox_value(49, 1, HG_PRIORITY, 2);
set_hitbox_value(49, 1, HG_DAMAGE, 30);
set_hitbox_value(49, 1, HG_ANGLE,  70);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, 2);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(49, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(49, 1, HG_TECHABLE, 0);

set_hitbox_value(49, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(49, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(49, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 2, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(49, 2, HG_WINDOW, 1);
set_hitbox_value(49, 2, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(49, 2, HG_LIFETIME, 32);
set_hitbox_value(49, 2, HG_PRIORITY, 8);
set_hitbox_value(49, 2, HG_DAMAGE, 6);
set_hitbox_value(49, 2, HG_HITBOX_Y, -70);
set_hitbox_value(49, 2, HG_PROJECTILE_SPRITE, sprite_get("rat"));
set_hitbox_value(49, 2, HG_PROJECTILE_MASK, sprite_get("rat"));
set_hitbox_value(49, 2, HG_PROJECTILE_IS_TRANSCENDENT, true)
set_hitbox_value(49, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(49, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 21);
set_hitbox_value(49, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(49, 2, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(49, 2, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(49, 2, HG_TECHABLE, 0);
set_hitbox_value(49, 2, HG_ANGLE, 135);
set_hitbox_value(49, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(49, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(49, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(49, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(49, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 3, HG_WINDOW, 3);
set_hitbox_value(49, 3, HG_SHAPE, 2);
set_hitbox_value(49, 3, HG_LIFETIME, 24);
set_hitbox_value(49, 3, HG_HITBOX_Y, -20);
set_hitbox_value(49, 3, HG_HITBOX_X, 0);
set_hitbox_value(49, 3, HG_WIDTH, 20);
set_hitbox_value(49, 3, HG_HEIGHT, 20);
set_hitbox_value(49, 3, HG_PRIORITY, 2);
set_hitbox_value(49, 3, HG_DAMAGE, 5);
set_hitbox_value(49, 3, HG_ANGLE,  70);
set_hitbox_value(49, 3, HG_BASE_KNOCKBACK, 25);
set_hitbox_value(49, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(49, 3, HG_BASE_HITPAUSE, 0);
set_hitbox_value(49, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(49, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(49, 3, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(49, 3, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(49, 3, HG_TECHABLE, 0);
