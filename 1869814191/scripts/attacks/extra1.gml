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

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, 30);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 30);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 68);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, sound_get("sfx_soul_damage"));
set_hitbox_value(AT_EXTRA_1, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);

//Vertical bones

set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, 18);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, 30);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 68);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_SFX, sound_get("sfx_soul_damage"));
set_hitbox_value(AT_EXTRA_1, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);

#region ----- Blue Bones -----

//Left

var blu_dam = 3;
var blu_kb = 3;
var blu_kb_scale = .5;

set_hitbox_value(AT_EXTRA_1, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 7, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_1, 7, HG_LIFETIME, 60);
set_hitbox_value(AT_EXTRA_1, 7, HG_HITBOX_X, 18);
set_hitbox_value(AT_EXTRA_1, 7, HG_HITBOX_Y, 30);
set_hitbox_value(AT_EXTRA_1, 7, HG_PRIORITY, 4);
set_hitbox_value(AT_EXTRA_1, 7, HG_DAMAGE, blu_dam);
set_hitbox_value(AT_EXTRA_1, 7, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 7, HG_BASE_KNOCKBACK, blu_kb);
set_hitbox_value(AT_EXTRA_1, 7, HG_KNOCKBACK_SCALING, blu_kb_scale);
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
set_hitbox_value(AT_EXTRA_1, 8, HG_DAMAGE, blu_dam);
set_hitbox_value(AT_EXTRA_1, 8, HG_ANGLE, 135);
set_hitbox_value(AT_EXTRA_1, 8, HG_BASE_KNOCKBACK, blu_kb);
set_hitbox_value(AT_EXTRA_1, 8, HG_KNOCKBACK_SCALING, blu_kb_scale);
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

set_hitbox_value(AT_EXTRA_1, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 9, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_1, 9, HG_LIFETIME, 60);
set_hitbox_value(AT_EXTRA_1, 9, HG_HITBOX_X, 18);
set_hitbox_value(AT_EXTRA_1, 9, HG_HITBOX_Y, 30);
set_hitbox_value(AT_EXTRA_1, 9, HG_PRIORITY, 4);
set_hitbox_value(AT_EXTRA_1, 9, HG_DAMAGE, blu_dam);
set_hitbox_value(AT_EXTRA_1, 9, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 9, HG_BASE_KNOCKBACK, blu_kb);
set_hitbox_value(AT_EXTRA_1, 9, HG_KNOCKBACK_SCALING, blu_kb_scale);
set_hitbox_value(AT_EXTRA_1, 9, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_1, 9, HG_HITPAUSE_SCALING, .85);
set_hitbox_value(AT_EXTRA_1, 9, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_EXTRA_1, 9, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 9, HG_PROJECTILE_SPRITE, sprite_get("blue_bone_vertical"));
set_hitbox_value(AT_EXTRA_1, 9, HG_PROJECTILE_MASK, sprite_get("blue_bone_vertical"));
set_hitbox_value(AT_EXTRA_1, 9, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_EXTRA_1, 9, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_EXTRA_1, 9, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_1, 9, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_1, 9, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_EXTRA_1, 9, HG_EXTENDED_PARRY_STUN, true);

//Down

set_hitbox_value(AT_EXTRA_1, 10, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 10, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_1, 10, HG_LIFETIME, 60);
set_hitbox_value(AT_EXTRA_1, 10, HG_HITBOX_X, 18);
set_hitbox_value(AT_EXTRA_1, 10, HG_HITBOX_Y, 30);
set_hitbox_value(AT_EXTRA_1, 10, HG_PRIORITY, 4);
set_hitbox_value(AT_EXTRA_1, 10, HG_DAMAGE, blu_dam);
set_hitbox_value(AT_EXTRA_1, 10, HG_ANGLE, 270);
set_hitbox_value(AT_EXTRA_1, 10, HG_BASE_KNOCKBACK, blu_kb);
set_hitbox_value(AT_EXTRA_1, 10, HG_KNOCKBACK_SCALING, blu_kb_scale);
set_hitbox_value(AT_EXTRA_1, 10, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_1, 10, HG_HITPAUSE_SCALING, .85);
set_hitbox_value(AT_EXTRA_1, 10, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_EXTRA_1, 10, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_SPRITE, sprite_get("blue_bone_vertical"));
set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_MASK, sprite_get("blue_bone_vertical"));
set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_VSPEED, 5);
set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_1, 10, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_EXTRA_1, 10, HG_EXTENDED_PARRY_STUN, true);