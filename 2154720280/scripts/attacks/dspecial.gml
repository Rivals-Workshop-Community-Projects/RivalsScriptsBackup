set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 2);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 0);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));


set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 20);

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);



set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_jumpground"));

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_jumpground"));

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 35);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_jumpground"));


set_num_hitboxes(AT_DSPECIAL, 9);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 300);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, sound_get("projectilehit"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("shake"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 0.3);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GRAVITY, .25);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 14);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 140);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 140);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_HITPAUSE, 45);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1.3);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, sound_get("projectilehit"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 180);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, sound_get("projectilehit"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("pizza"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 98);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 46);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, sound_get("stinghit"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 150);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 6, HG_WIDTH, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_HEIGHT, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSPECIAL, 6, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, tauntpar2 );
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_SFX, sound_get("projectilehit"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("coin"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_VSPEED, -4);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_GRAVITY, .2);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL, 6, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 120);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 20);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 20);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 0.1);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("projectilehit"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("coin"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, 0.15);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_GRAVITY, .2);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL, 5, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL, 7, HG_LIFETIME, 20);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 7, HG_WIDTH, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_HEIGHT, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 7, HG_DAMAGE, 0.1);
set_hitbox_value(AT_DSPECIAL, 7, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSPECIAL, 7, HG_HIT_SFX, asset_get("projectilehit"));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("ronald"));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_ANIM_SPEED, 0.15);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_HSPEED, 60);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 8, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL, 8, HG_LIFETIME, 20);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 8, HG_WIDTH, 0);
set_hitbox_value(AT_DSPECIAL, 8, HG_HEIGHT, 0);
set_hitbox_value(AT_DSPECIAL, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 8, HG_DAMAGE, 0.1);
set_hitbox_value(AT_DSPECIAL, 8, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 8, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL, 8, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 8, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSPECIAL, 8, HG_HIT_SFX, asset_get("projectilehit"));
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_SPRITE, sprite_get("ronald2"));
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_ANIM_SPEED, 0.15);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_HSPEED, -60);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_EXTENDED_PARRY_STUN, 1);


set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 9, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_X, 28);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_Y, -44);
set_hitbox_value(AT_DSPECIAL, 9, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL, 9, HG_HEIGHT, 70);
set_hitbox_value(AT_DSPECIAL, 9, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 9, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 9, HG_DAMAGE, 9);
set_hitbox_value(AT_DSPECIAL, 9, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 9, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 9, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DSPECIAL, 9, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DSPECIAL, 9, HG_VISUAL_EFFECT_X_OFFSET, 19);
set_hitbox_value(AT_DSPECIAL, 9, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSPECIAL, 9, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_VISUAL_EFFECT, 304);
