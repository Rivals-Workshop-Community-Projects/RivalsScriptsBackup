set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

//startup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
//lighting bolt
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);
//this part only plays if he actually teleports
set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 32);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 9);


set_num_hitboxes(AT_USPECIAL, 1);

//telefrag
set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -37);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 70);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_EFFECT, 11);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL, 1, HG_THROWS_ROCK, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_cloud_crackle"));

//Building self-destruct hitbox
set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 400000);//it costs 400000 frames to use this attack, for 12 frames
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, 68);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 300);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 65);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_USPECIAL, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 17);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 164);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_USPECIAL, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_MASK, sprite_get("demolition"));
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);

//sentry gun bullet damage
set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 400000);//it costs 400000 frames to use this attack, for 12 frames
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, 68);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 65);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 1);
// set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_USPECIAL, 3, HG_IGNORES_PROJECTILES, 1);
// set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, sprite_get("sentry_crosshair"));
set_hitbox_value(AT_USPECIAL, 3, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_MASK, sprite_get("sentry_range_mask"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_GROUND_FRICTION, 100);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_AIR_FRICTION, 100);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_PLASMA_SAFE, 1);

//sentry gun rockets
set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 400000);//it costs 400000 frames to use this attack, for 12 frames
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 30);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, 68);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 65);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_USPECIAL, 4, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 17);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 164);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("rockets"));
// set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_MASK, sprite_get("rocket"));
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_HSPEED, 9);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 0);