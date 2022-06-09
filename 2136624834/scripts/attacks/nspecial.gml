set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 0);
set_attack_value(AT_NSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"))
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.4);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 32);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_bird_downspecial"));
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 14);

set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_bird_downspecial"));
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.4);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 17);

set_num_hitboxes(AT_NSPECIAL, 10);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 99999);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("snowball1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, 0.00);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.45);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_EXTENDED_PARRY_STUN, true);

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 99999);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("snowball2"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_AIR_FRICTION, 0.00);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 306);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 58);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 58);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_EXTENDED_PARRY_STUN, true);


set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 99999);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("snowball3"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_AIR_FRICTION, 0.00);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 306);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 90);
set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 16);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 3, HG_EXTENDED_PARRY_STUN, true);


set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 10);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 99999);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 10);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("snowball2"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_AIR_FRICTION, 0.01);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_HSPEED, -3);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_VSPEED, -8);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 306);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 58);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 58);
set_hitbox_value(AT_NSPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 9);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 4, HG_EXTENDED_PARRY_STUN, true);



set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, 10);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 99999);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X, 10);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("snowball2"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_AIR_FRICTION, 0.01);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_VSPEED, -8);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, 306);
set_hitbox_value(AT_NSPECIAL, 6, HG_WIDTH, 58);
set_hitbox_value(AT_NSPECIAL, 6, HG_HEIGHT, 58);
set_hitbox_value(AT_NSPECIAL, 6, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 9);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 6, HG_EXTENDED_PARRY_STUN, true);



set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 10);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 99999);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 10);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("snowball1"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_AIR_FRICTION, 0.01);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_VSPEED, -10);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, 0.45);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL, 5, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 1);



set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW, 10);
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_LIFETIME, 99999);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_X, 10);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NSPECIAL, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("snowball1"));
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_AIR_FRICTION, 0.01);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_HSPEED, -2);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_VSPEED, -10);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_ANIM_SPEED, 0.45);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 7, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 7, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL, 7, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 7, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITSTUN_MULTIPLIER, 1);


set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_WINDOW, 10);
set_hitbox_value(AT_NSPECIAL, 8, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_LIFETIME, 99999);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_X, 10);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NSPECIAL, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_SPRITE, sprite_get("snowball1"));
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_AIR_FRICTION, 0.00);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_VSPEED, -11);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_ANIM_SPEED, 0.45);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 8, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 8, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL, 8, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 8, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 8, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 8, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 8, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 8, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITSTUN_MULTIPLIER, 1);


set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 9, HG_WINDOW, 10);
set_hitbox_value(AT_NSPECIAL, 9, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_LIFETIME, 8);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_X, 10);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NSPECIAL, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_AIR_FRICTION, 0.00);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_WIDTH, 126);
set_hitbox_value(AT_NSPECIAL, 9, HG_HEIGHT, 126);
set_hitbox_value(AT_NSPECIAL, 9, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 9, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 9, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL, 9, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 9, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 9, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 9, HG_EXTENDED_PARRY_STUN, true);

set_hitbox_value(AT_NSPECIAL, 11, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 11, HG_WINDOW, 10);
set_hitbox_value(AT_NSPECIAL, 11, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 11, HG_LIFETIME, 8);
set_hitbox_value(AT_NSPECIAL, 11, HG_HITBOX_X, 10);
set_hitbox_value(AT_NSPECIAL, 11, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NSPECIAL, 11, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_AIR_FRICTION, 0.00);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 11, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL, 11, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 11, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 11, HG_DAMAGE, .1);
set_hitbox_value(AT_NSPECIAL, 11, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 11, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL, 11, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_NSPECIAL, 11, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 11, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 11, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 11, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 11, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 11, HG_EXTENDED_PARRY_STUN, true);

set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 10, HG_WINDOW, 10);
set_hitbox_value(AT_NSPECIAL, 10, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_LIFETIME, 8);
set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_X, 10);
set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NSPECIAL, 10, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_AIR_FRICTION, 0.00);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_DESTROY_EFFECT, 306);
set_hitbox_value(AT_NSPECIAL, 10, HG_WIDTH, 92);
set_hitbox_value(AT_NSPECIAL, 10, HG_HEIGHT, 92);
set_hitbox_value(AT_NSPECIAL, 10, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 10, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 10, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL, 10, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 10, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 10, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_NSPECIAL, 10, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 10, HG_EXTENDED_PARRY_STUN, true);

set_hitbox_value(AT_NSPECIAL, 20, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 20, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 20, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL, 20, HG_HITBOX_X,  100);
set_hitbox_value(AT_NSPECIAL, 20, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 20, HG_WIDTH, 94);
set_hitbox_value(AT_NSPECIAL, 20, HG_HEIGHT, 94);
set_hitbox_value(AT_NSPECIAL, 20, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 20, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 20, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 20, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 20, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_NSPECIAL, 20, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 20, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 20, HG_HITPAUSE_SCALING, 1.5);
set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 20, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NSPECIAL, 20, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 20, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 20, HG_PROJECTILE_IS_TRANSCENDENT, true );
