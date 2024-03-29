set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 42);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 42);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 42);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_DSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 11);

set_num_hitboxes(AT_DSPECIAL, 0);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 23);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -52);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 68);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 62);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 75);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -1000);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("blank"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);

set_hitbox_value(AT_DSPECIAL, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 7);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 25);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -55);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -1000);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, sound_get("bowhit1"));
set_hitbox_value(AT_DSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("enderparticles"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, sprite_get("enderparticles"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1);

set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 23);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -52);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 68);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 62);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -1000);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("blank"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 3, HG_EFFECT, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 1);

set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 23);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -52);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 68);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 62);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 4, HG_EFFECT, 9);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 0.4);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, 10);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, -1000);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("blank"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, 1);

set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, 23);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -52);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 68);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 62);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT_Y_OFFSET, -1000);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("blank"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, 1);

set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 12);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_Y, -13);
set_hitbox_value(AT_DSPECIAL, 6, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL, 6, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 6, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE, 14);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE, 65);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_DSPECIAL, 6, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("blank"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_UNBASHABLE, 1);

set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_X, 23);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_Y, -52);
set_hitbox_value(AT_DSPECIAL, 7, HG_WIDTH, 68);
set_hitbox_value(AT_DSPECIAL, 7, HG_HEIGHT, 62);
set_hitbox_value(AT_DSPECIAL, 7, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 7, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 7, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DSPECIAL, 7, HG_VISUAL_EFFECT_Y_OFFSET, -1000);
set_hitbox_value(AT_DSPECIAL, 7, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("blank"));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 7, HG_EFFECT, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_PARRY_STUN, 1);