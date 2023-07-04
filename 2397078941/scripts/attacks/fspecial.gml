set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 0);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"))
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("stand_box"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_boss_fireball_land"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_boss_fireball_land"));
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_boss_fireball_land"));
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 4*8);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_boss_fireball"));
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX_FRAME, 12);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 10);



set_num_hitboxes(AT_FSPECIAL, 10);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("laser1"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 1.0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 64);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 24);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 55);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING,0.6);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_boss_laser_hit"));
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);



set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 9);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 40);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("laser1"));
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, 1.0);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 64);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 24);
set_hitbox_value(AT_FSPECIAL, 4, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 55);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING,0.6);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_boss_laser_hit"));
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true);


set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 13);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 44);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("laser1"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_HSPEED, 8.6);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 1.0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 64);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 24);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 55);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING,0.6);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_boss_laser_hit"));
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);

set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 9);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 50);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("laser1"));
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_HSPEED, 7);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 1.0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 64);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 24);
set_hitbox_value(AT_FSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 55);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING,0.6);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_boss_laser_hit"));
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);

set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 9);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 14);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, 260);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -44);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, 1.0);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 460);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 35);
set_hitbox_value(AT_FSPECIAL, 5, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 15);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 5, HG_KNOCKBACK_SCALING,0.8);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_boss_laser_hit"));
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT_X_OFFSET, -0.666);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW, 9);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 14);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_X, 260);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_Y, -44);
set_hitbox_value(AT_FSPECIAL, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, 1.0);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, 6, HG_WIDTH, 35);
set_hitbox_value(AT_FSPECIAL, 6, HG_HEIGHT, 460);
set_hitbox_value(AT_FSPECIAL, 6, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 6, HG_DAMAGE, 15);
set_hitbox_value(AT_FSPECIAL, 6, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 6, HG_KNOCKBACK_SCALING,0.8);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_boss_laser_hit"));
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_VISUAL_EFFECT_X_OFFSET, -0.666);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
