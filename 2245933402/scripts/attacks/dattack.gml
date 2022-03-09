set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_kragg_roll_start"));

set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);


set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 0);

set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED, 6);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .04);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_shatter"));

set_window_value(AT_DATTACK, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DATTACK, 3);

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 12);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -37);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 40);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 72);
set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 61);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DATTACK, 2, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_DATTACK, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 70);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 42);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 20);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 36);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_SPRITE, sprite_get("door"));
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_AIR_FRICTION, 0.00);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_VSPEED, -3);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_GRAVITY, 0.2);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_ANIM_SPEED, 0.6);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_DESTROY_EFFECT, 13);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 70);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_DATTACK, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DATTACK, 3, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, asset_get("sfx_kragg_spike"));
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 3, HG_HITSTUN_MULTIPLIER, 1);