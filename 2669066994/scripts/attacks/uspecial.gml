set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial_air"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1); //Jumping in
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_plant_ready"));

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1); //Ready to fire, angle
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_plant_eat"));

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1); //Shot out into Window 4 or 5
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 2); //It doesn't last long
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_troupple_fish_splash_in"));

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7); //Sent directly upwards
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 36);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_troupple_splash_big"));

set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 7); //Sent upwards and forwards
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 36);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_troupple_splash_big"));

set_num_hitboxes(AT_USPECIAL, 5);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 2); //Projectile flower left behind
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 30);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, 15);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
//set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("uspecial_blastup"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, 1);

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 2); //Nothing
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 30);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, -4);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, 15);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("uspecial_blastfront"));
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_PLASMA_SAFE, 1);

set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 2); //The little floor
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 90);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, -1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -9);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_PLASMA_SAFE, 1);

set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 25);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -45);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 90);
//set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, -5);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 25);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -45);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL, 5, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 95);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT_Y_OFFSET, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
