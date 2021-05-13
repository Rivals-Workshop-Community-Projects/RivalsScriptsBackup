set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USTRONG, AG_CATEGORY, 0);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_jumpair"));
set_window_value(AT_USTRONG, 5, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_USTRONG,4);



set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 60);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -70);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_SPRITE, sprite_get("ustrongs1"));
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_VSPEED, -20);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_ANIM_SPEED, 0.45);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_DESTROY_EFFECT, 14);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 30);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_clairen_tip_weak"));
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);

set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 60);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, -10);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -70);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_SPRITE, sprite_get("ustrongs1"));
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_VSPEED, -20);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_ANIM_SPEED, 0.45);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_DESTROY_EFFECT, 14);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 30);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_clairen_tip_weak"));
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);

set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 60);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 10);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -70);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_SPRITE, sprite_get("ustrongs1"));
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_VSPEED, -20);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_ANIM_SPEED, 0.45);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_DESTROY_EFFECT, 14);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 30);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_USTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_clairen_tip_weak"));
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true);
