set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 10);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_boss_vortex_end"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 23)
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);


set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 10)
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FAIR,0);

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 99);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME,99);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 45);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 36);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 25);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 25);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("danmaku1"));
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FAIR, 1, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true); 
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FAIR, 1, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 99);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME,99);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 45);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 36);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 25);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 25);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_leafy_hit2"));
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_SPRITE, sprite_get("danmaku2"));
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FAIR, 2, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true); 
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FAIR, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FAIR, 2, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, -6);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 40);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 140);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FAIR, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FAIR, 3, HG_HIT_LOCKOUT, 10);