set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 0);
set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("stand_box"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_frog_fspecial_charge_gained_1"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);


set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 9*4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX, sound_get("mhit1"));
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX_FRAME, 0);


set_num_hitboxes(AT_DSPECIAL, 0);



set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1)
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 120);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 120);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 15);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 10 );
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_HITPAUSE, 60);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSPECIAL, 2, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 1);


set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 32);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1)
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("powerfx"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_VSPEED, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 14);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, .1);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_EXTRA_HITPAUSE, 1 );
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSPECIAL, 3, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 1);


set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 99);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW_CREATION_FRAME,99);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 32);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 36);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 30);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, sprite_get("danmaku1"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_HSPEED, 7);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true); 
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, 99);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW_CREATION_FRAME,99);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 32);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, 36);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 30);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_SPRITE, sprite_get("danmaku1"));
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_HSPEED, -7);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true); 
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_WINDOW, 99);
set_hitbox_value(AT_EXTRA_1, 3, HG_WINDOW_CREATION_FRAME,99);
set_hitbox_value(AT_EXTRA_1, 3, HG_LIFETIME, 32);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_X, 36);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_EXTRA_1, 3, HG_WIDTH, 30);
set_hitbox_value(AT_EXTRA_1, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_EXTRA_1, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_EXTRA_1, 3, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_SPRITE, sprite_get("danmaku1"));
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_VSPEED, 7);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true); 
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_EXTRA_1, 3, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 4, HG_WINDOW, 99);
set_hitbox_value(AT_EXTRA_1, 4, HG_WINDOW_CREATION_FRAME,99);
set_hitbox_value(AT_EXTRA_1, 4, HG_LIFETIME, 32);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_X, 36);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_Y, -32);
set_hitbox_value(AT_EXTRA_1, 4, HG_WIDTH, 30);
set_hitbox_value(AT_EXTRA_1, 4, HG_HEIGHT, 30);
set_hitbox_value(AT_EXTRA_1, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 4, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_EXTRA_1, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 4, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_EXTRA_1, 4, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_SPRITE, sprite_get("danmaku1"));
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_VSPEED, -7);
set_hitbox_value(AT_EXTRA_1, 4, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true); 
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_EXTRA_1, 4, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_EXTRA_1, 4, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_EXTRA_1, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 5, HG_WINDOW, 99);
set_hitbox_value(AT_EXTRA_1, 5, HG_WINDOW_CREATION_FRAME,99);
set_hitbox_value(AT_EXTRA_1, 5, HG_LIFETIME, 32);
set_hitbox_value(AT_EXTRA_1, 5, HG_HITBOX_X, 36);
set_hitbox_value(AT_EXTRA_1, 5, HG_HITBOX_Y, -32);
set_hitbox_value(AT_EXTRA_1, 5, HG_WIDTH, 30);
set_hitbox_value(AT_EXTRA_1, 5, HG_HEIGHT, 30);
set_hitbox_value(AT_EXTRA_1, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 5, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 5, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_EXTRA_1, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_1, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 5, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_EXTRA_1, 5, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_SPRITE, sprite_get("danmaku1"));
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_VSPEED, 5);
set_hitbox_value(AT_EXTRA_1, 5, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_DOES_NOT_REFLECT, true); 
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_EXTRA_1, 5, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_EXTRA_1, 5, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_EXTRA_1, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 6, HG_WINDOW, 99);
set_hitbox_value(AT_EXTRA_1, 6, HG_WINDOW_CREATION_FRAME,99);
set_hitbox_value(AT_EXTRA_1, 6, HG_LIFETIME, 32);
set_hitbox_value(AT_EXTRA_1, 6, HG_HITBOX_X, 36);
set_hitbox_value(AT_EXTRA_1, 6, HG_HITBOX_Y, -32);
set_hitbox_value(AT_EXTRA_1, 6, HG_WIDTH, 30);
set_hitbox_value(AT_EXTRA_1, 6, HG_HEIGHT, 30);
set_hitbox_value(AT_EXTRA_1, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 6, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 6, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_EXTRA_1, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 6, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_1, 6, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 6, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_EXTRA_1, 6, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_SPRITE, sprite_get("danmaku1"));
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_HSPEED, -5);
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_VSPEED, 5);
set_hitbox_value(AT_EXTRA_1, 6, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_DOES_NOT_REFLECT, true); 
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_EXTRA_1, 6, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_EXTRA_1, 6, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_EXTRA_1, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 7, HG_WINDOW, 99);
set_hitbox_value(AT_EXTRA_1, 7, HG_WINDOW_CREATION_FRAME,99);
set_hitbox_value(AT_EXTRA_1, 7, HG_LIFETIME, 32);
set_hitbox_value(AT_EXTRA_1, 7, HG_HITBOX_X, 36);
set_hitbox_value(AT_EXTRA_1, 7, HG_HITBOX_Y, -32);
set_hitbox_value(AT_EXTRA_1, 7, HG_WIDTH, 30);
set_hitbox_value(AT_EXTRA_1, 7, HG_HEIGHT, 30);
set_hitbox_value(AT_EXTRA_1, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 7, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 7, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_EXTRA_1, 7, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 7, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_1, 7, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 7, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_EXTRA_1, 7, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_SPRITE, sprite_get("danmaku1"));
set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_EXTRA_1, 7, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_DOES_NOT_REFLECT, true); 
set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_EXTRA_1, 7, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_EXTRA_1, 7, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_EXTRA_1, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 8, HG_WINDOW, 99);
set_hitbox_value(AT_EXTRA_1, 8, HG_WINDOW_CREATION_FRAME,99);
set_hitbox_value(AT_EXTRA_1, 8, HG_LIFETIME, 32);
set_hitbox_value(AT_EXTRA_1, 8, HG_HITBOX_X, 36);
set_hitbox_value(AT_EXTRA_1, 8, HG_HITBOX_Y, -32);
set_hitbox_value(AT_EXTRA_1, 8, HG_WIDTH, 30);
set_hitbox_value(AT_EXTRA_1, 8, HG_HEIGHT, 30);
set_hitbox_value(AT_EXTRA_1, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 8, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 8, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 8, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_EXTRA_1, 8, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 8, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_1, 8, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 8, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_EXTRA_1, 8, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_SPRITE, sprite_get("danmaku1"));
set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_HSPEED, -5);
set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_EXTRA_1, 8, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_DOES_NOT_REFLECT, true); 
set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_EXTRA_1, 8, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_EXTRA_1, 8, HG_EXTENDED_PARRY_STUN, 1);


set_hitbox_value(AT_EXTRA_1, 11, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 11, HG_WINDOW, 99);
set_hitbox_value(AT_EXTRA_1, 11, HG_WINDOW_CREATION_FRAME,99);
set_hitbox_value(AT_EXTRA_1, 11, HG_LIFETIME, 32);
set_hitbox_value(AT_EXTRA_1, 11, HG_HITBOX_X, 36);
set_hitbox_value(AT_EXTRA_1, 11, HG_HITBOX_Y, -32);
set_hitbox_value(AT_EXTRA_1, 11, HG_WIDTH, 60);
set_hitbox_value(AT_EXTRA_1, 11, HG_HEIGHT, 60);
set_hitbox_value(AT_EXTRA_1, 11, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 11, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 11, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 11, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_EXTRA_1, 11, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 11, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_1, 11, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 11, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_EXTRA_1, 11, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_EXTRA_1, 11, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_EXTRA_1, 11, HG_PROJECTILE_SPRITE, sprite_get("danmaku1"));
set_hitbox_value(AT_EXTRA_1, 11, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_EXTRA_1, 11, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 11, HG_PROJECTILE_HSPEED, 7);
set_hitbox_value(AT_EXTRA_1, 11, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_EXTRA_1, 11, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_EXTRA_1, 11, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 11, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 11, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_EXTRA_1, 11, HG_PROJECTILE_DOES_NOT_REFLECT, true); 
set_hitbox_value(AT_EXTRA_1, 11, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_EXTRA_1, 11, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_EXTRA_1, 11, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_EXTRA_1, 12, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 12, HG_WINDOW, 99);
set_hitbox_value(AT_EXTRA_1, 12, HG_WINDOW_CREATION_FRAME,99);
set_hitbox_value(AT_EXTRA_1, 12, HG_LIFETIME, 32);
set_hitbox_value(AT_EXTRA_1, 12, HG_HITBOX_X, 36);
set_hitbox_value(AT_EXTRA_1, 12, HG_HITBOX_Y, -32);
set_hitbox_value(AT_EXTRA_1, 12, HG_WIDTH, 60);
set_hitbox_value(AT_EXTRA_1, 12, HG_HEIGHT, 60);
set_hitbox_value(AT_EXTRA_1, 12, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 12, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 12, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 12, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_EXTRA_1, 12, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 12, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_1, 12, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 12, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_EXTRA_1, 12, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_EXTRA_1, 12, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_EXTRA_1, 12, HG_PROJECTILE_SPRITE, sprite_get("danmaku1"));
set_hitbox_value(AT_EXTRA_1, 12, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_EXTRA_1, 12, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 12, HG_PROJECTILE_HSPEED, -7);
set_hitbox_value(AT_EXTRA_1, 12, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_EXTRA_1, 12, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_EXTRA_1, 12, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 12, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 12, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_EXTRA_1, 12, HG_PROJECTILE_DOES_NOT_REFLECT, true); 
set_hitbox_value(AT_EXTRA_1, 12, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_EXTRA_1, 12, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_EXTRA_1, 12, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_EXTRA_1, 13, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 13, HG_WINDOW, 99);
set_hitbox_value(AT_EXTRA_1, 13, HG_WINDOW_CREATION_FRAME,99);
set_hitbox_value(AT_EXTRA_1, 13, HG_LIFETIME, 32);
set_hitbox_value(AT_EXTRA_1, 13, HG_HITBOX_X, 36);
set_hitbox_value(AT_EXTRA_1, 13, HG_HITBOX_Y, -32);
set_hitbox_value(AT_EXTRA_1, 13, HG_WIDTH, 60);
set_hitbox_value(AT_EXTRA_1, 13, HG_HEIGHT, 60);
set_hitbox_value(AT_EXTRA_1, 13, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 13, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 13, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 13, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_EXTRA_1, 13, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 13, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_1, 13, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 13, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_EXTRA_1, 13, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_EXTRA_1, 13, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_EXTRA_1, 13, HG_PROJECTILE_SPRITE, sprite_get("danmaku1"));
set_hitbox_value(AT_EXTRA_1, 13, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_EXTRA_1, 13, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 13, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_EXTRA_1, 13, HG_PROJECTILE_VSPEED, 7);
set_hitbox_value(AT_EXTRA_1, 13, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_EXTRA_1, 13, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 13, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 13, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_EXTRA_1, 13, HG_PROJECTILE_DOES_NOT_REFLECT, true); 
set_hitbox_value(AT_EXTRA_1, 13, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_EXTRA_1, 13, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_EXTRA_1, 13, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_EXTRA_1, 14, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 14, HG_WINDOW, 99);
set_hitbox_value(AT_EXTRA_1, 14, HG_WINDOW_CREATION_FRAME,99);
set_hitbox_value(AT_EXTRA_1, 14, HG_LIFETIME, 32);
set_hitbox_value(AT_EXTRA_1, 14, HG_HITBOX_X, 36);
set_hitbox_value(AT_EXTRA_1, 14, HG_HITBOX_Y, -32);
set_hitbox_value(AT_EXTRA_1, 14, HG_WIDTH, 60);
set_hitbox_value(AT_EXTRA_1, 14, HG_HEIGHT, 60);
set_hitbox_value(AT_EXTRA_1, 14, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 14, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 14, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 14, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_EXTRA_1, 14, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 14, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_1, 14, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 14, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_EXTRA_1, 14, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_EXTRA_1, 14, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_EXTRA_1, 14, HG_PROJECTILE_SPRITE, sprite_get("danmaku1"));
set_hitbox_value(AT_EXTRA_1, 14, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_EXTRA_1, 14, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 14, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_EXTRA_1, 14, HG_PROJECTILE_VSPEED, -7);
set_hitbox_value(AT_EXTRA_1, 14, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_EXTRA_1, 14, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 14, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 14, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_EXTRA_1, 14, HG_PROJECTILE_DOES_NOT_REFLECT, true); 
set_hitbox_value(AT_EXTRA_1, 14, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_EXTRA_1, 14, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_EXTRA_1, 14, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_EXTRA_1, 15, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 15, HG_WINDOW, 99);
set_hitbox_value(AT_EXTRA_1, 15, HG_WINDOW_CREATION_FRAME,99);
set_hitbox_value(AT_EXTRA_1, 15, HG_LIFETIME, 32);
set_hitbox_value(AT_EXTRA_1, 15, HG_HITBOX_X, 36);
set_hitbox_value(AT_EXTRA_1, 15, HG_HITBOX_Y, -32);
set_hitbox_value(AT_EXTRA_1, 15, HG_WIDTH, 30);
set_hitbox_value(AT_EXTRA_1, 15, HG_HEIGHT, 30);
set_hitbox_value(AT_EXTRA_1, 15, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 15, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 15, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 15, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_EXTRA_1, 15, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 15, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_1, 15, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 15, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_EXTRA_1, 15, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_EXTRA_1, 15, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_EXTRA_1, 15, HG_PROJECTILE_SPRITE, sprite_get("danmaku1"));
set_hitbox_value(AT_EXTRA_1, 15, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_EXTRA_1, 15, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 15, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_EXTRA_1, 15, HG_PROJECTILE_VSPEED, 5);
set_hitbox_value(AT_EXTRA_1, 15, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_EXTRA_1, 15, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 15, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 15, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_EXTRA_1, 15, HG_PROJECTILE_DOES_NOT_REFLECT, true); 
set_hitbox_value(AT_EXTRA_1, 15, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_EXTRA_1, 15, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_EXTRA_1, 15, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_EXTRA_1, 16, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 16, HG_WINDOW, 99);
set_hitbox_value(AT_EXTRA_1, 16, HG_WINDOW_CREATION_FRAME,99);
set_hitbox_value(AT_EXTRA_1, 16, HG_LIFETIME, 32);
set_hitbox_value(AT_EXTRA_1, 16, HG_HITBOX_X, 36);
set_hitbox_value(AT_EXTRA_1, 16, HG_HITBOX_Y, -32);
set_hitbox_value(AT_EXTRA_1, 16, HG_WIDTH, 60);
set_hitbox_value(AT_EXTRA_1, 16, HG_HEIGHT, 60);
set_hitbox_value(AT_EXTRA_1, 16, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 16, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 16, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 16, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_EXTRA_1, 16, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 16, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_1, 16, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 16, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_EXTRA_1, 16, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_EXTRA_1, 16, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_EXTRA_1, 16, HG_PROJECTILE_SPRITE, sprite_get("danmaku1"));
set_hitbox_value(AT_EXTRA_1, 16, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_EXTRA_1, 16, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 16, HG_PROJECTILE_HSPEED, -5);
set_hitbox_value(AT_EXTRA_1, 16, HG_PROJECTILE_VSPEED, 5);
set_hitbox_value(AT_EXTRA_1, 16, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_EXTRA_1, 16, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 16, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 16, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_EXTRA_1, 16, HG_PROJECTILE_DOES_NOT_REFLECT, true); 
set_hitbox_value(AT_EXTRA_1, 16, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_EXTRA_1, 16, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_EXTRA_1, 16, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_EXTRA_1, 17, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 17, HG_WINDOW, 99);
set_hitbox_value(AT_EXTRA_1, 17, HG_WINDOW_CREATION_FRAME,99);
set_hitbox_value(AT_EXTRA_1, 17, HG_LIFETIME, 32);
set_hitbox_value(AT_EXTRA_1, 17, HG_HITBOX_X, 36);
set_hitbox_value(AT_EXTRA_1, 17, HG_HITBOX_Y, -32);
set_hitbox_value(AT_EXTRA_1, 17, HG_WIDTH, 60);
set_hitbox_value(AT_EXTRA_1, 17, HG_HEIGHT, 60);
set_hitbox_value(AT_EXTRA_1, 17, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 17, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 17, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 17, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_EXTRA_1, 17, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 17, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_1, 17, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 17, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_EXTRA_1, 17, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_EXTRA_1, 17, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_EXTRA_1, 17, HG_PROJECTILE_SPRITE, sprite_get("danmaku1"));
set_hitbox_value(AT_EXTRA_1, 17, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_EXTRA_1, 17, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 17, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_EXTRA_1, 17, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_EXTRA_1, 17, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_EXTRA_1, 17, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 17, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 17, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_EXTRA_1, 17, HG_PROJECTILE_DOES_NOT_REFLECT, true); 
set_hitbox_value(AT_EXTRA_1, 17, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_EXTRA_1, 17, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_EXTRA_1, 17, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_EXTRA_1, 18, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 18, HG_WINDOW, 99);
set_hitbox_value(AT_EXTRA_1, 18, HG_WINDOW_CREATION_FRAME,99);
set_hitbox_value(AT_EXTRA_1, 18, HG_LIFETIME, 32);
set_hitbox_value(AT_EXTRA_1, 18, HG_HITBOX_X, 36);
set_hitbox_value(AT_EXTRA_1, 18, HG_HITBOX_Y, -32);
set_hitbox_value(AT_EXTRA_1, 18, HG_WIDTH, 60);
set_hitbox_value(AT_EXTRA_1, 18, HG_HEIGHT, 60);
set_hitbox_value(AT_EXTRA_1, 18, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 18, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_1, 18, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 18, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_EXTRA_1, 18, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 18, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_1, 18, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 18, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_EXTRA_1, 18, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_EXTRA_1, 18, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_EXTRA_1, 18, HG_PROJECTILE_SPRITE, sprite_get("danmaku1"));
set_hitbox_value(AT_EXTRA_1, 18, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_EXTRA_1, 18, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 18, HG_PROJECTILE_HSPEED, -5);
set_hitbox_value(AT_EXTRA_1, 18, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_EXTRA_1, 18, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_EXTRA_1, 18, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 18, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 18, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_EXTRA_1, 18, HG_PROJECTILE_DOES_NOT_REFLECT, true); 
set_hitbox_value(AT_EXTRA_1, 18, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_EXTRA_1, 18, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_EXTRA_1, 18, HG_EXTENDED_PARRY_STUN, 1);