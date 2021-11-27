set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 2);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 0);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("stand_box"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 40);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, asset_get("sfx_clairen_spin"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 8*4);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, asset_get("sfx_clairen_spin"));
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 14);

set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 31);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 17);

set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 23);

set_window_value(AT_TAUNT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 28);

set_window_value(AT_TAUNT, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 7, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAME_START, 33);

set_window_value(AT_TAUNT, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 8, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 8, AG_WINDOW_ANIM_FRAME_START, 38);

set_window_value(AT_TAUNT, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 9, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, 9, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT, 9, AG_WINDOW_ANIM_FRAME_START, 43);

set_window_value(AT_TAUNT, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 10, AG_WINDOW_LENGTH, 4*15);
set_window_value(AT_TAUNT, 10, AG_WINDOW_ANIM_FRAMES, 15);
set_window_value(AT_TAUNT, 10, AG_WINDOW_ANIM_FRAME_START, 50);
set_window_value(AT_TAUNT, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 10, AG_WINDOW_SFX, asset_get("sfx_clairen_spin"));
set_window_value(AT_TAUNT, 10, AG_WINDOW_SFX_FRAME, 47);


set_num_hitboxes(AT_TAUNT, 4);


set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 5);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 90);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, -6);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -100);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_SPRITE, sprite_get("tauntfunk"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ANIM_SPEED, 1.0);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 0);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_TAUNT, 1, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 6);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 90);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_X, -6);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_Y, -100);
set_hitbox_value(AT_TAUNT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_SPRITE, sprite_get("tauntfunk"));
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_ANIM_SPEED, 1.0);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, 0);
set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 0);
set_hitbox_value(AT_TAUNT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_TAUNT, 2, HG_PRIORITY, 0);
set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_TAUNT, 2, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_TAUNT, 2, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_TAUNT, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_TAUNT, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_TAUNT, 2, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 3, HG_WINDOW, 7);
set_hitbox_value(AT_TAUNT, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_TAUNT, 3, HG_LIFETIME, 90);
set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_X, -6);
set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_Y, -100);
set_hitbox_value(AT_TAUNT, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_SPRITE, sprite_get("tauntfunk"));
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_ANIM_SPEED, 1.0);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_TAUNT, 3, HG_WIDTH, 0);
set_hitbox_value(AT_TAUNT, 3, HG_HEIGHT, 0);
set_hitbox_value(AT_TAUNT, 3, HG_SHAPE, 2);
set_hitbox_value(AT_TAUNT, 3, HG_PRIORITY, 0);
set_hitbox_value(AT_TAUNT, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 3, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_TAUNT, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_TAUNT, 3, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_TAUNT, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_TAUNT, 3, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_TAUNT, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_TAUNT, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_TAUNT, 3, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_TAUNT, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 4, HG_WINDOW, 8);
set_hitbox_value(AT_TAUNT, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_TAUNT, 4, HG_LIFETIME, 90);
set_hitbox_value(AT_TAUNT, 4, HG_HITBOX_X, -6);
set_hitbox_value(AT_TAUNT, 4, HG_HITBOX_Y, -100);
set_hitbox_value(AT_TAUNT, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_SPRITE, sprite_get("tauntfunk"));
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_ANIM_SPEED, 1.0);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_TAUNT, 4, HG_WIDTH, 0);
set_hitbox_value(AT_TAUNT, 4, HG_HEIGHT, 0);
set_hitbox_value(AT_TAUNT, 4, HG_SHAPE, 2);
set_hitbox_value(AT_TAUNT, 4, HG_PRIORITY, 0);
set_hitbox_value(AT_TAUNT, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 4, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT, 4, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_TAUNT, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_TAUNT, 4, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_TAUNT, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_TAUNT, 4, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_TAUNT, 4, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_TAUNT, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_TAUNT, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_TAUNT, 4, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_TAUNT, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 5, HG_WINDOW, 8);
set_hitbox_value(AT_TAUNT, 5, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_TAUNT, 5, HG_LIFETIME, 240);
set_hitbox_value(AT_TAUNT, 5, HG_HITBOX_X, -6);
set_hitbox_value(AT_TAUNT, 5, HG_HITBOX_Y, -100);
set_hitbox_value(AT_TAUNT, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_TAUNT, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 5, HG_PROJECTILE_SPRITE, sprite_get("introship"));
set_hitbox_value(AT_TAUNT, 5, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_TAUNT, 5, HG_PROJECTILE_HSPEED, -5);
set_hitbox_value(AT_TAUNT, 5, HG_PROJECTILE_VSPEED, -3);
set_hitbox_value(AT_TAUNT, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 5, HG_PROJECTILE_ANIM_SPEED, 1.0);
set_hitbox_value(AT_TAUNT, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_TAUNT, 5, HG_WIDTH, 0);
set_hitbox_value(AT_TAUNT, 5, HG_HEIGHT, 0);
set_hitbox_value(AT_TAUNT, 5, HG_SHAPE, 2);
set_hitbox_value(AT_TAUNT, 5, HG_PRIORITY, 0);
set_hitbox_value(AT_TAUNT, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 5, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT, 5, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_TAUNT, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_TAUNT, 5, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_TAUNT, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_TAUNT, 5, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_TAUNT, 5, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_TAUNT, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_TAUNT, 5, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_TAUNT, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_TAUNT, 5, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_TAUNT, 5, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_TAUNT, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_TAUNT, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 5, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_TAUNT, 5, HG_EXTENDED_PARRY_STUN, 1);
