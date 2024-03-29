set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("suck"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("suck"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("idle_hurt"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("idle_air_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, sound_get("wind"));

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);

set_num_hitboxes(AT_NSPECIAL, 14);

set_hitbox_value(AT_NSPECIAL, 14, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 14, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 14, HG_LIFETIME, 20);
set_hitbox_value(AT_NSPECIAL, 14, HG_HITBOX_X, 60);
set_hitbox_value(AT_NSPECIAL, 14, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 14, HG_WIDTH, 70);
set_hitbox_value(AT_NSPECIAL, 14, HG_HEIGHT, 67);
set_hitbox_value(AT_NSPECIAL, 14, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL, 14, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 14, HG_ANGLE, 180);
set_hitbox_value(AT_NSPECIAL, 14, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 14, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 14, HG_HIT_LOCKOUT, 30);
set_hitbox_value(AT_NSPECIAL, 14, HG_HITSTUN_MULTIPLIER, 99999);
set_hitbox_value(AT_NSPECIAL, 14, HG_VISUAL_EFFECT, 11);
set_hitbox_value(AT_NSPECIAL, 14, HG_TECHABLE, 2);
set_hitbox_value(AT_NSPECIAL, 14, HG_PROJECTILE_SPRITE, sprite_get("krispy"));
set_hitbox_value(AT_NSPECIAL, 14, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 14, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 14, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 14, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NSPECIAL, 14, HG_PROJECTILE_HSPEED, 0);

set_hitbox_value(AT_NSPECIAL, 12, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 12, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 12, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 12, HG_HITBOX_X, 790);
set_hitbox_value(AT_NSPECIAL, 12, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 12, HG_WIDTH, 1400);
set_hitbox_value(AT_NSPECIAL, 12, HG_HEIGHT, 67);
set_hitbox_value(AT_NSPECIAL, 12, HG_PRIORITY, 8);
set_hitbox_value(AT_NSPECIAL, 12, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 12, HG_ANGLE, 180);
set_hitbox_value(AT_NSPECIAL, 12, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 12, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_NSPECIAL, 12, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_NSPECIAL, 12, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_NSPECIAL, 12, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_NSPECIAL, 12, HG_TECHABLE, 2);
set_hitbox_value(AT_NSPECIAL, 12, HG_PROJECTILE_SPRITE, sprite_get("vacuum"));
set_hitbox_value(AT_NSPECIAL, 12, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 12, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 12, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 12, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NSPECIAL, 12, HG_PROJECTILE_HSPEED, 0);

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 790);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 1400);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 67);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 180);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_NSPECIAL, 2, HG_TECHABLE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("vacuum"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 0);

set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 790);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 1400);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 67);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 180);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_NSPECIAL, 3, HG_TECHABLE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("vacuum"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 0);

set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 790);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 1400);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 67);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 8);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 180);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_NSPECIAL, 4, HG_TECHABLE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("vacuum"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_HSPEED, 0);

set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 14);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 790);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 1400);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 67);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 8);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 180);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_NSPECIAL, 5, HG_TECHABLE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("vacuum"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_HSPEED, 0);

set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 14);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X, 790);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 6, HG_WIDTH, 1400);
set_hitbox_value(AT_NSPECIAL, 6, HG_HEIGHT, 67);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 8);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 180);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_NSPECIAL, 6, HG_TECHABLE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("vacuum"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_HSPEED, 0);

set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_LIFETIME, 14);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_X, 790);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 7, HG_WIDTH, 1400);
set_hitbox_value(AT_NSPECIAL, 7, HG_HEIGHT, 67);
set_hitbox_value(AT_NSPECIAL, 7, HG_PRIORITY, 8);
set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE, 180);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 7, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 7, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_NSPECIAL, 7, HG_TECHABLE, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("vacuum"));
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_HSPEED, 0);

set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_WINDOW, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_LIFETIME, 14);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_X, 790);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 8, HG_WIDTH, 1400);
set_hitbox_value(AT_NSPECIAL, 8, HG_HEIGHT, 67);
set_hitbox_value(AT_NSPECIAL, 8, HG_PRIORITY, 8);
set_hitbox_value(AT_NSPECIAL, 8, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_ANGLE, 180);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 8, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 8, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_NSPECIAL, 8, HG_TECHABLE, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_SPRITE, sprite_get("vacuum"));
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_HSPEED, 0);

set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 9, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 9, HG_LIFETIME, 14);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_X, 790);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 9, HG_WIDTH, 1400);
set_hitbox_value(AT_NSPECIAL, 9, HG_HEIGHT, 67);
set_hitbox_value(AT_NSPECIAL, 9, HG_PRIORITY, 8);
set_hitbox_value(AT_NSPECIAL, 9, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_ANGLE, 180);
set_hitbox_value(AT_NSPECIAL, 9, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 9, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 9, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_NSPECIAL, 9, HG_TECHABLE, 2);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_SPRITE, sprite_get("vacuum"));
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_HSPEED, 0);

set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 10, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 10, HG_LIFETIME, 14);
set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_X, 790);
set_hitbox_value(AT_NSPECIAL, 10, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 10, HG_WIDTH, 1400);
set_hitbox_value(AT_NSPECIAL, 10, HG_HEIGHT, 67);
set_hitbox_value(AT_NSPECIAL, 10, HG_PRIORITY, 8);
set_hitbox_value(AT_NSPECIAL, 10, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 10, HG_ANGLE, 180);
set_hitbox_value(AT_NSPECIAL, 10, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 10, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 10, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_NSPECIAL, 10, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_NSPECIAL, 10, HG_TECHABLE, 2);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_SPRITE, sprite_get("vacuum"));
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NSPECIAL, 10, HG_PROJECTILE_HSPEED, 0);

set_hitbox_value(AT_NSPECIAL, 11, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 11, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 11, HG_LIFETIME, 14);
set_hitbox_value(AT_NSPECIAL, 11, HG_HITBOX_X, 790);
set_hitbox_value(AT_NSPECIAL, 11, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 11, HG_WIDTH, 1400);
set_hitbox_value(AT_NSPECIAL, 11, HG_HEIGHT, 67);
set_hitbox_value(AT_NSPECIAL, 11, HG_PRIORITY, 8);
set_hitbox_value(AT_NSPECIAL, 11, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 11, HG_ANGLE, 180);
set_hitbox_value(AT_NSPECIAL, 11, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 11, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 11, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_NSPECIAL, 11, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 11, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_NSPECIAL, 11, HG_TECHABLE, 2);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_SPRITE, sprite_get("vacuum"));
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NSPECIAL, 11, HG_PROJECTILE_HSPEED, 0);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 50);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 36);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -64);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fx"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, -1);

set_hitbox_value(AT_NSPECIAL, 13, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 13, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 13, HG_LIFETIME, 30);
set_hitbox_value(AT_NSPECIAL, 13, HG_HITBOX_X, 70);
set_hitbox_value(AT_NSPECIAL, 13, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 13, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL, 13, HG_HEIGHT, 67);
set_hitbox_value(AT_NSPECIAL, 13, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL, 13, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 13, HG_ANGLE, 180);
set_hitbox_value(AT_NSPECIAL, 13, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 13, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 13, HG_HIT_LOCKOUT, 30);
set_hitbox_value(AT_NSPECIAL, 13, HG_HITSTUN_MULTIPLIER, 99999);
set_hitbox_value(AT_NSPECIAL, 13, HG_VISUAL_EFFECT, 11);
set_hitbox_value(AT_NSPECIAL, 13, HG_TECHABLE, 2);
set_hitbox_value(AT_NSPECIAL, 13, HG_PROJECTILE_SPRITE, sprite_get("krispy"));
set_hitbox_value(AT_NSPECIAL, 13, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 13, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 13, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 13, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NSPECIAL, 13, HG_PROJECTILE_HSPEED, 0);

