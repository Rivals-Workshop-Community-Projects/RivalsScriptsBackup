set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DTILT, 3);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 44);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 86);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 10);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DTILT, 1, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_weak"));
set_hitbox_value(AT_DTILT, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 44);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 90);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 38);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 87);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DTILT, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_weak"));
set_hitbox_value(AT_DTILT, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 64);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 52);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 38);
set_hitbox_value(AT_DTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 87);
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DTILT, 3, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DTILT, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, asset_get("sfx_poison_hit_weak"));
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DTILT, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTILT, 4, HG_WINDOW, 99);
set_hitbox_value(AT_DTILT, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DTILT, 4, HG_LIFETIME, 120);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_X, 40);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DTILT, 4, HG_PRIORITY, 0);
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DTILT, 4, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_SPRITE, sprite_get("bruh"));
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_VSPEED, 1);
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_DTILT, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DTILT, 4, HG_WIDTH, 20);
set_hitbox_value(AT_DTILT, 4, HG_HEIGHT, 20);
set_hitbox_value(AT_DTILT, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 4, HG_DAMAGE, 0.1);
set_hitbox_value(AT_DTILT, 4, HG_ANGLE, 90);
set_hitbox_value(AT_DTILT, 4, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DTILT, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_DTILT, 4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DTILT, 4, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_DTILT, 4, HG_HITSTUN_MULTIPLIER, -1);
