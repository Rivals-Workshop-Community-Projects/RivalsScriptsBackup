set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 9);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, -10);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED, -5);
set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_DAIR, 4, AG_WINDOW_VSPEED, -11);
set_window_value(AT_DAIR, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 4, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DAIR, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 12);


set_window_value(AT_DAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DAIR, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_strong"));
set_window_value(AT_DAIR, 6, AG_WINDOW_SFX_FRAME, 6);


set_window_value(AT_DAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 7, AG_WINDOW_LENGTH, 1)
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAME_START, 17);

set_window_value(AT_DAIR, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 8, AG_WINDOW_LENGTH, 6)
set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAME_START, 18);


set_window_value(AT_DAIR, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 9, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_DAIR, 9, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 7);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 90);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 310);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, -22);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 1, HG_HITSTUN_MULTIPLIER, 0.3);

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, -6);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 100);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 100);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 310);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, -22);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, 0.6);

set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 120);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, 20);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_SPRITE, sprite_get("dairs1"));
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_VSPEED, 8);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_ANIM_SPEED, 0.65);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_DESTROY_EFFECT, 305);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 361);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, sound_get("exp2"));
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, exp1);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);

set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 120);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, -6);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, 20);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_SPRITE, sprite_get("dairs2"));
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_VSPEED, 9);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_ANIM_SPEED, 0.65);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_DESTROY_EFFECT, 305);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_DAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 361);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, sound_get("exp2"));
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT, exp1);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true);


set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 8);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, 8);
set_hitbox_value(AT_DAIR, 5, HG_WIDTH, 90);
set_hitbox_value(AT_DAIR, 5, HG_HEIGHT, 100);
set_hitbox_value(AT_DAIR, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_DAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 5, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 5, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DAIR, 5, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DAIR, 5, HG_VISUAL_EFFECT, 302);



set_hitbox_value(AT_DAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 8);
set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_X, -38);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_Y, -46);
set_hitbox_value(AT_DAIR, 6, HG_WIDTH, 35);
set_hitbox_value(AT_DAIR, 6, HG_HEIGHT, 55);
set_hitbox_value(AT_DAIR, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 6, HG_DAMAGE, 5);
set_hitbox_value(AT_DAIR, 6, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 6, HG_ANGLE, 130);
set_hitbox_value(AT_DAIR, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 6, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DAIR, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 6, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DAIR, 6, HG_VISUAL_EFFECT, 302);




set_hitbox_value(AT_DAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW, 8);
set_hitbox_value(AT_DAIR, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_X, 30);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_Y, -8);
set_hitbox_value(AT_DAIR, 7, HG_WIDTH, 25);
set_hitbox_value(AT_DAIR, 7, HG_HEIGHT, 45);
set_hitbox_value(AT_DAIR, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 7, HG_DAMAGE, 5);
set_hitbox_value(AT_DAIR, 7, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 7, HG_ANGLE, 40);
set_hitbox_value(AT_DAIR, 7, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 7, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DAIR, 7, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 7, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DAIR, 7, HG_VISUAL_EFFECT, 302);



