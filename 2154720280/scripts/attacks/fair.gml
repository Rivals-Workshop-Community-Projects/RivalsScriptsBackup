set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);

set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));


set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));


set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);


set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 2);

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 33);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 74);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 105);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FAIR, 1, HG_HITSTUN_MULTIPLIER, 1);

set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 8);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -74);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 100);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 66);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 2);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FAIR, 2, HG_HITSTUN_MULTIPLIER, 1);

set_hitbox_value(AT_FAIR, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW, 9);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 5, HG_LIFETIME, 60);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_X, 40);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FAIR, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FAIR, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FAIR, 5, HG_PROJECTILE_SPRITE, sprite_get("bladewaveH"));
set_hitbox_value(AT_FAIR, 5, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FAIR, 5, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_FAIR, 5, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FAIR, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FAIR, 5, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_FAIR, 5, HG_PROJECTILE_DESTROY_EFFECT, 306);
set_hitbox_value(AT_FAIR, 5, HG_WIDTH, 45);
set_hitbox_value(AT_FAIR, 5, HG_HEIGHT, 76);
set_hitbox_value(AT_FAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 5, HG_DAMAGE, 9);
set_hitbox_value(AT_FAIR, 5, HG_ANGLE, 60);
set_hitbox_value(AT_FAIR, 5, HG_EFFECT, 1);
set_hitbox_value(AT_FAIR, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FAIR, 5, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 5, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_FAIR, 5, HG_HIT_SFX, asset_get("sfx_waterhit_heavy2"));
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 5, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FAIR, 5, HG_VISUAL_EFFECT, 306);

set_hitbox_value(AT_FAIR, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW, 9);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 6, HG_LIFETIME, 60);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_X, 40);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FAIR, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_SPRITE, sprite_get("bladewaveHd"));
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_VSPEED, 3);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_DESTROY_EFFECT, 306);
set_hitbox_value(AT_FAIR, 6, HG_WIDTH, 65);
set_hitbox_value(AT_FAIR, 6, HG_HEIGHT, 76);
set_hitbox_value(AT_FAIR, 6, HG_EFFECT, 1);
set_hitbox_value(AT_FAIR, 6, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 6, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 6, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 6, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FAIR, 6, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FAIR, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 6, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_FAIR, 6, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FAIR, 6, HG_VISUAL_EFFECT, 304);


set_hitbox_value(AT_FAIR, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FAIR, 7, HG_WINDOW, 9);
set_hitbox_value(AT_FAIR, 7, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 7, HG_LIFETIME, 60);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_X, 40);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FAIR, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_VSPEED, 3);
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_DESTROY_EFFECT, 306);
set_hitbox_value(AT_FAIR, 7, HG_WIDTH, 125);
set_hitbox_value(AT_FAIR, 7, HG_HEIGHT, 126);
set_hitbox_value(AT_FAIR, 7, HG_EFFECT, 1);
set_hitbox_value(AT_FAIR, 7, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 7, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 7, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 7, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FAIR, 7, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FAIR, 7, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 7, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_FAIR, 7, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FAIR, 7, HG_VISUAL_EFFECT, 304);