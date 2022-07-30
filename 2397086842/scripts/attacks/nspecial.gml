set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 2);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 0);
set_attack_value(AT_NSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_zetter_shine"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);


set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 0);

set_num_hitboxes(AT_NSPECIAL, 7);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 260);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("ball1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -4);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, 1);


set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 260);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("ball2"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, -4);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 42);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 42);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, 1);


set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 260);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("ball3"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, -4);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 46);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 46);
set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 12);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, 1);


set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 180);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("ball1"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_HSPEED, -2);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_VSPEED, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 180);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("ball2"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_HSPEED, -2);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_VSPEED, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 42);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 42);
set_hitbox_value(AT_NSPECIAL, 5, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 180);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("ball3"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_HSPEED, -2);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_VSPEED, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 6, HG_WIDTH, 46);
set_hitbox_value(AT_NSPECIAL, 6, HG_HEIGHT, 46);
set_hitbox_value(AT_NSPECIAL, 6, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 13);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 6, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_EXTENDED_PARRY_STUN, 1);;
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_LIFETIME, 30);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NSPECIAL, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("ball4"));
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_AIR_FRICTION, 0.2);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_HSPEED, 15);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_ANIM_SPEED, 0.6);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 7, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL, 7, HG_HEIGHT, 80);
set_hitbox_value(AT_NSPECIAL, 7, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_NSPECIAL, 7, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 7, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_EXTENDED_PARRY_STUN, 1);;
set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT_X_OFFSET, -0.69);

set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 8, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_LIFETIME, 30);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NSPECIAL, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_SPRITE, sprite_get("ball4"));
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_AIR_FRICTION, 0.3);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_HSPEED, 15);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_VSPEED, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_ANIM_SPEED, 0.6);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 8, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL, 8, HG_HEIGHT, 80);
set_hitbox_value(AT_NSPECIAL, 8, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 8, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 8, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_NSPECIAL, 8, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 8, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 8, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_EXTENDED_PARRY_STUN, 1);;
set_hitbox_value(AT_NSPECIAL, 8, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_VISUAL_EFFECT_X_OFFSET, -0.69);

set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 9, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 9, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_LIFETIME, 30);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NSPECIAL, 9, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_SPRITE, sprite_get("ball4"));
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_AIR_FRICTION, 0.3);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_HSPEED, 15);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_VSPEED, -2);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_ANIM_SPEED, 0.6);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 9, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL, 9, HG_HEIGHT, 80);
set_hitbox_value(AT_NSPECIAL, 9, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 9, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 9, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 9, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_NSPECIAL, 9, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_NSPECIAL, 9, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 9, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 9, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_EXTENDED_PARRY_STUN, 1);;
set_hitbox_value(AT_NSPECIAL, 9, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_VISUAL_EFFECT_X_OFFSET, -0.69);

set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 10, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 10, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_LIFETIME, 5);
set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NSPECIAL, 10, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_SPRITE, sprite_get("ball4"));
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_AIR_FRICTION, 0.2);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_ANIM_SPEED, 0.6);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 10, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL, 10, HG_HEIGHT, 80);
set_hitbox_value(AT_NSPECIAL, 10, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 10, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 10, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 10, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_NSPECIAL, 10, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_NSPECIAL, 10, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 10, HG_EXTRA_HITPAUSE, 30);
set_hitbox_value(AT_NSPECIAL, 10, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_EXTENDED_PARRY_STUN, 1);;
set_hitbox_value(AT_NSPECIAL, 10, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 10, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_VISUAL_EFFECT_X_OFFSET, -0.69);

set_hitbox_value(AT_NSPECIAL, 11, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 11, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 11, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 11, HG_LIFETIME, 60);
set_hitbox_value(AT_NSPECIAL, 11, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL, 11, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NSPECIAL, 11, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_SPRITE, sprite_get("ball4"));
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_VSPEED, 14);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_ANIM_SPEED, 0.6);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 11, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL, 11, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 11, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 11, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 11, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 11, HG_ANGLE, 270);
set_hitbox_value(AT_NSPECIAL, 11, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL, 11, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NSPECIAL, 11, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 11, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NSPECIAL, 11, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 11, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(AT_NSPECIAL, 11, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 11, HG_EXTENDED_PARRY_STUN, 1);;
set_hitbox_value(AT_NSPECIAL, 11, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_NSPECIAL, 11, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 11, HG_VISUAL_EFFECT_X_OFFSET, -0.69);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_NSPECIAL, 12, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 12, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 12, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 12, HG_LIFETIME, 260);
set_hitbox_value(AT_NSPECIAL, 12, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL, 12, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NSPECIAL, 12, HG_PRIORITY, 0);
set_hitbox_value(AT_NSPECIAL, 12, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 12, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 12, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 12, HG_PROJECTILE_SPRITE, sprite_get("ball1"));
set_hitbox_value(AT_NSPECIAL, 12, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 12, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(AT_NSPECIAL, 12, HG_PROJECTILE_VSPEED, -7);
set_hitbox_value(AT_NSPECIAL, 12, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 12, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_NSPECIAL, 12, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 12, HG_WIDTH, 0);
set_hitbox_value(AT_NSPECIAL, 12, HG_HEIGHT, 0);
set_hitbox_value(AT_NSPECIAL, 12, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 12, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 12, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 12, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 12, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_NSPECIAL, 12, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 12, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 12, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(AT_NSPECIAL, 12, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 12, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_NSPECIAL, 12, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 12, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_NSPECIAL, 12, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 12, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NSPECIAL, 12, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 12, HG_HIT_LOCKOUT, 1);

set_hitbox_value(AT_NSPECIAL, 13, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 13, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 13, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 13, HG_LIFETIME, 260);
set_hitbox_value(AT_NSPECIAL, 13, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL, 13, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NSPECIAL, 13, HG_PRIORITY, 0);
set_hitbox_value(AT_NSPECIAL, 13, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 13, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 13, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 13, HG_PROJECTILE_SPRITE, sprite_get("ball2"));
set_hitbox_value(AT_NSPECIAL, 13, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 13, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(AT_NSPECIAL, 13, HG_PROJECTILE_VSPEED, -7);
set_hitbox_value(AT_NSPECIAL, 13, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 13, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_NSPECIAL, 13, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 13, HG_WIDTH, 0);
set_hitbox_value(AT_NSPECIAL, 13, HG_HEIGHT, 0);
set_hitbox_value(AT_NSPECIAL, 13, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 13, HG_DAMAGE, 9);
set_hitbox_value(AT_NSPECIAL, 13, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 13, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 13, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_NSPECIAL, 13, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_NSPECIAL, 13, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 13, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_NSPECIAL, 13, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 13, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_NSPECIAL, 13, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 13, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_NSPECIAL, 13, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 13, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NSPECIAL, 13, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 13, HG_HIT_LOCKOUT, 1);

set_hitbox_value(AT_NSPECIAL, 14, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 14, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 14, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 14, HG_LIFETIME, 260);
set_hitbox_value(AT_NSPECIAL, 14, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL, 14, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NSPECIAL, 14, HG_PRIORITY, 0);
set_hitbox_value(AT_NSPECIAL, 14, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 14, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 14, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 14, HG_PROJECTILE_SPRITE, sprite_get("ball3"));
set_hitbox_value(AT_NSPECIAL, 14, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 14, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(AT_NSPECIAL, 14, HG_PROJECTILE_VSPEED, -7);
set_hitbox_value(AT_NSPECIAL, 14, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 14, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_NSPECIAL, 14, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 14, HG_WIDTH, 0);
set_hitbox_value(AT_NSPECIAL, 14, HG_HEIGHT, 0);
set_hitbox_value(AT_NSPECIAL, 14, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 14, HG_DAMAGE, 12);
set_hitbox_value(AT_NSPECIAL, 14, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 14, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 14, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_NSPECIAL, 14, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_NSPECIAL, 14, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 14, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_NSPECIAL, 14, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 14, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_NSPECIAL, 14, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 14, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_NSPECIAL, 14, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 14, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_NSPECIAL, 14, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 14, HG_HIT_LOCKOUT, 1);

