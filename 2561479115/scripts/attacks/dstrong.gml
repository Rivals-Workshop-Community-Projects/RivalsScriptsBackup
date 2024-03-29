set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 7);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_OFF_LEDGE, 0);

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_GOTO, 5);
//set_window_value(AT_DSTRONG, 3, AG_WINDOW_JUMP_TO, 5);
//set_window_value(AT_DSTRONG, 3, AG_WINDOW_BULLET_LENIENCY, 5);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_window_value(AT_DSTRONG, 5, AG_WINDOW_TYPE, 2);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_clairen_tip_strong"));

set_window_value(AT_DSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);

set_window_value(AT_DSTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, 28);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);

set_num_hitboxes(AT_DSTRONG,4);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, -32);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -21);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 44);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 50);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_DSTRONG, 1, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1.0);

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 27);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -21);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 90);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 130);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 5);
//set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_DSTRONG, 2, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, 1.0);

set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 35);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 70);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
//set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DSTRONG, 3, HG_HITSTUN_MULTIPLIER, 1.0);
//set_hitbox_value(AT_DSTRONG, 3, HG_DRIFT_MULTIPLIER, 1.0);


var atk = AT_DSTRONG;
var hboxnum = 4;

set_hitbox_value(atk, hboxnum, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hboxnum, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hboxnum, HG_WINDOW, 6);
set_hitbox_value(atk, hboxnum, HG_LIFETIME, 4);
set_hitbox_value(atk, hboxnum, HG_HITBOX_X, 60);
set_hitbox_value(atk, hboxnum, HG_HITBOX_Y, -30);
set_hitbox_value(atk, hboxnum, HG_WIDTH, 80);
set_hitbox_value(atk, hboxnum, HG_HEIGHT, 70);
set_hitbox_value(atk, hboxnum, HG_PRIORITY, 2);
set_hitbox_value(atk, hboxnum, HG_DAMAGE, 8);
set_hitbox_value(atk, hboxnum, HG_ANGLE, 40);
set_hitbox_value(atk, hboxnum, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hboxnum, HG_KNOCKBACK_SCALING, .95);//1
set_hitbox_value(atk, hboxnum, HG_HIT_LOCKOUT, 6);
set_hitbox_value(atk, hboxnum, HG_BASE_HITPAUSE, 12);
set_hitbox_value(atk, hboxnum, HG_HITPAUSE_SCALING, 1);
//set_hitbox_value(atk, hboxnum, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(atk, hboxnum, HG_VISUAL_EFFECT, hfx_plasma_large);
set_hitbox_value(atk, hboxnum, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(atk, hboxnum, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(atk, hboxnum, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_SPRITE, sprite_get("blindfire_placeholder"));
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_ANIM_SPEED, 5/4);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_HIT_TAG, 2);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, hboxnum, HG_HITBOX_COLOR, hitbox_colors.gunshot)
