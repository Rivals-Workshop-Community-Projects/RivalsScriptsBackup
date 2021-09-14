set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
//set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 34);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 9); // this window needs to have THESE 9 frames, to make it easier to sync the paper with.
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);





set_num_hitboxes(AT_DSTRONG, 5);

// Front Early

set_hitbox_value(AT_DSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 25);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DSTRONG, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_DESTROY_EFFECT, effect_nothing);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_LOCKOUT, 25);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);


// Front Late

set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 14);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 42);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 70);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DSTRONG, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_DESTROY_EFFECT, effect_nothing);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_LOCKOUT, 25);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 1);

// Back Early

//set_hitbox_value(AT_DSTRONG, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 25);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 80);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DSTRONG, 3, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_DESTROY_EFFECT, effect_nothing);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_LOCKOUT, 25);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, 1);

// Back Late

//set_hitbox_value(AT_DSTRONG, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, -14);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 42);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 80);
set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 110);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DSTRONG, 4, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_DESTROY_EFFECT, effect_nothing);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_LOCKOUT, 25);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, 1);

// Center

set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, -5);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -9);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 50);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 18);
set_hitbox_value(AT_DSTRONG, 5, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_LOCKOUT, 25);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 1);
