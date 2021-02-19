set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_EXTRA_1, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 3);

//These bone hitboxes need to go somewhere, so I'm putting them in here

//Horizontal bones

set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 4, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 4, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_X, 18);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_Y, 30);
set_hitbox_value(AT_EXTRA_1, 4, HG_WIDTH, 30);
set_hitbox_value(AT_EXTRA_1, 4, HG_HEIGHT, 68);
set_hitbox_value(AT_EXTRA_1, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_HIT_SFX, sound_get("sfx_soul_damage"));
set_hitbox_value(AT_EXTRA_1, 4, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);

//Vertical bones

set_hitbox_value(AT_EXTRA_1, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 5, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_1, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 5, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 5, HG_HITBOX_X, 18);
set_hitbox_value(AT_EXTRA_1, 5, HG_HITBOX_Y, 30);
set_hitbox_value(AT_EXTRA_1, 5, HG_WIDTH, 68);
set_hitbox_value(AT_EXTRA_1, 5, HG_HEIGHT, 30);
set_hitbox_value(AT_EXTRA_1, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_EXTRA_1, 5, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_EXTRA_1, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_1, 5, HG_HIT_SFX, sound_get("sfx_soul_damage"));
set_hitbox_value(AT_EXTRA_1, 5, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);

//Small bones

set_hitbox_value(AT_EXTRA_1, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 6, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_1, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 6, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 6, HG_HITBOX_X, 18);
set_hitbox_value(AT_EXTRA_1, 6, HG_HITBOX_Y, 30);
set_hitbox_value(AT_EXTRA_1, 6, HG_WIDTH, 30);
set_hitbox_value(AT_EXTRA_1, 6, HG_HEIGHT, 40);
set_hitbox_value(AT_EXTRA_1, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 6, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_EXTRA_1, 6, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_EXTRA_1, 6, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_1, 6, HG_HIT_SFX, sound_get("sfx_soul_damage"));
set_hitbox_value(AT_EXTRA_1, 6, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);

//Horizontal blue bones

//Left

set_hitbox_value(AT_EXTRA_1, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 7, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_1, 7, HG_LIFETIME, 60);
set_hitbox_value(AT_EXTRA_1, 7, HG_HITBOX_X, 18);
set_hitbox_value(AT_EXTRA_1, 7, HG_HITBOX_Y, 30);
set_hitbox_value(AT_EXTRA_1, 7, HG_PRIORITY, 4);
set_hitbox_value(AT_EXTRA_1, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 7, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 7, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_EXTRA_1, 7, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_EXTRA_1, 7, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_1, 7, HG_HITPAUSE_SCALING, .85);
set_hitbox_value(AT_EXTRA_1, 7, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_EXTRA_1, 7, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_SPRITE, sprite_get("blue_bone_horizontal"));
set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_MASK, sprite_get("blue_bone_horizontal"));
set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_EXTRA_1, 7, HG_EXTENDED_PARRY_STUN, true);

//Right

set_hitbox_value(AT_EXTRA_1, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 8, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_1, 8, HG_LIFETIME, 60);
set_hitbox_value(AT_EXTRA_1, 8, HG_HITBOX_X, 18);
set_hitbox_value(AT_EXTRA_1, 8, HG_HITBOX_Y, 30);
set_hitbox_value(AT_EXTRA_1, 8, HG_PRIORITY, 4);
set_hitbox_value(AT_EXTRA_1, 8, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 8, HG_ANGLE, 135);
set_hitbox_value(AT_EXTRA_1, 8, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_EXTRA_1, 8, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_EXTRA_1, 8, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_1, 8, HG_HITPAUSE_SCALING, .85);
set_hitbox_value(AT_EXTRA_1, 8, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_EXTRA_1, 8, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_SPRITE, sprite_get("blue_bone_horizontal"));
set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_MASK, sprite_get("blue_bone_horizontal"));
set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_HSPEED, -5);
set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_EXTRA_1, 8, HG_EXTENDED_PARRY_STUN, true);

//Vertical blue bones

//Up

set_hitbox_value(AT_EXTRA_1, 10, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 10, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_1, 10, HG_LIFETIME, 60);
set_hitbox_value(AT_EXTRA_1, 10, HG_HITBOX_X, 18);
set_hitbox_value(AT_EXTRA_1, 10, HG_HITBOX_Y, 30);
set_hitbox_value(AT_EXTRA_1, 10, HG_PRIORITY, 4);
set_hitbox_value(AT_EXTRA_1, 10, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 10, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 10, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_EXTRA_1, 10, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_EXTRA_1, 10, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_1, 10, HG_HITPAUSE_SCALING, .85);
set_hitbox_value(AT_EXTRA_1, 10, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_EXTRA_1, 10, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_SPRITE, sprite_get("blue_bone_vertical"));
set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_MASK, sprite_get("blue_bone_vertical"));
set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_EXTRA_1, 10, HG_EXTENDED_PARRY_STUN, true);

//Down

set_hitbox_value(AT_EXTRA_1, 12, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 12, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_1, 12, HG_LIFETIME, 60);
set_hitbox_value(AT_EXTRA_1, 12, HG_HITBOX_X, 18);
set_hitbox_value(AT_EXTRA_1, 12, HG_HITBOX_Y, 30);
set_hitbox_value(AT_EXTRA_1, 12, HG_PRIORITY, 4);
set_hitbox_value(AT_EXTRA_1, 12, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 12, HG_ANGLE, 270);
set_hitbox_value(AT_EXTRA_1, 12, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_EXTRA_1, 12, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_EXTRA_1, 12, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_1, 12, HG_HITPAUSE_SCALING, .85);
set_hitbox_value(AT_EXTRA_1, 12, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_EXTRA_1, 12, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 12, HG_PROJECTILE_SPRITE, sprite_get("blue_bone_vertical"));
set_hitbox_value(AT_EXTRA_1, 12, HG_PROJECTILE_MASK, sprite_get("blue_bone_vertical"));
set_hitbox_value(AT_EXTRA_1, 12, HG_PROJECTILE_VSPEED, 5);
set_hitbox_value(AT_EXTRA_1, 12, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_EXTRA_1, 12, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_1, 12, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_1, 12, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_EXTRA_1, 12, HG_EXTENDED_PARRY_STUN, true);

//Small blue bones

set_hitbox_value(AT_EXTRA_1, 14, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 14, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_1, 14, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 14, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 14, HG_HITBOX_X, 18);
set_hitbox_value(AT_EXTRA_1, 14, HG_HITBOX_Y, 30);
set_hitbox_value(AT_EXTRA_1, 14, HG_WIDTH, 30);
set_hitbox_value(AT_EXTRA_1, 14, HG_HEIGHT, 40);
set_hitbox_value(AT_EXTRA_1, 14, HG_PRIORITY, 4);
set_hitbox_value(AT_EXTRA_1, 14, HG_DAMAGE, 3);
set_hitbox_value(AT_EXTRA_1, 14, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 14, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_EXTRA_1, 14, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_EXTRA_1, 14, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_1, 14, HG_HITPAUSE_SCALING, .85);
set_hitbox_value(AT_EXTRA_1, 14, HG_HIT_LOCKOUT, 30);
set_hitbox_value(AT_EXTRA_1, 14, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_EXTRA_1, 14, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_EXTRA_1, 14, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 14, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_1, 14, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 14, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_EXTRA_1, 14, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_1, 14, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_1, 14, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_EXTRA_1, 14, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_EXTRA_1, 14, HG_PROJECTILE_DOES_NOT_REFLECT, true);

//Bone Pile
set_hitbox_value(AT_EXTRA_1, 15, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 15, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_1, 15, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 15, HG_SHAPE, 1);
set_hitbox_value(AT_EXTRA_1, 15, HG_HITBOX_X, 0);
set_hitbox_value(AT_EXTRA_1, 15, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_1, 15, HG_WIDTH, 100);
set_hitbox_value(AT_EXTRA_1, 15, HG_HEIGHT, 32);
set_hitbox_value(AT_EXTRA_1, 15, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 15, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 15, HG_ANGLE, 270);
set_hitbox_value(AT_EXTRA_1, 15, HG_HIT_LOCKOUT, 8);
set_hitbox_value(AT_EXTRA_1, 15, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_EXTRA_1, 15, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_1, 15, HG_HIT_SFX, sound_get("sfx_soul_damage"));
set_hitbox_value(AT_EXTRA_1, 15, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 15, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_1, 15, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 15, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_EXTRA_1, 15, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_1, 15, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_1, 15, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_EXTRA_1, 15, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_EXTRA_1, 15, HG_PROJECTILE_IS_TRANSCENDENT, true);