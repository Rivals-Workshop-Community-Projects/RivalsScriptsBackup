set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 22);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 7);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(AT_FSTRONG, 12);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);//hilter
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 35);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_tow_anchor_land"));

set_hitbox_value(AT_FSTRONG, 10, HG_HITBOX_TYPE, 1);//startup
set_hitbox_value(AT_FSTRONG, 10, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 10, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 10, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSTRONG, 10, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSTRONG, 10, HG_WIDTH, 50);
set_hitbox_value(AT_FSTRONG, 10, HG_HEIGHT, 45);
set_hitbox_value(AT_FSTRONG, 10, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 10, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 10, HG_DAMAGE, 1);
set_hitbox_value(AT_FSTRONG, 10, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 10, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 10, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 10, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 10, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 10, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 10, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_FSTRONG, 10, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_FSTRONG, 11, HG_HITBOX_TYPE, 1);//sourspot
set_hitbox_value(AT_FSTRONG, 11, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 11, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 11, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 11, HG_HITBOX_X, 66);
set_hitbox_value(AT_FSTRONG, 11, HG_HITBOX_Y, -54);
set_hitbox_value(AT_FSTRONG, 11, HG_WIDTH, 70);
set_hitbox_value(AT_FSTRONG, 11, HG_HEIGHT, 65);
set_hitbox_value(AT_FSTRONG, 11, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 11, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 11, HG_DAMAGE, 6);
set_hitbox_value(AT_FSTRONG, 11, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG, 11, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 11, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FSTRONG, 11, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_FSTRONG, 11, HG_HITPAUSE_SCALING, 2);
set_hitbox_value(AT_FSTRONG, 11, HG_VISUAL_EFFECT, 196);
set_hitbox_value(AT_FSTRONG, 11, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 11, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 11, HG_HIT_SFX, asset_get("sfx_ice_on_player"));

set_hitbox_value(AT_FSTRONG, 12, HG_HITBOX_TYPE, 1);//sourspot
set_hitbox_value(AT_FSTRONG, 12, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 12, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 12, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 12, HG_HITBOX_X, 50);
set_hitbox_value(AT_FSTRONG, 12, HG_HITBOX_Y, -15);
set_hitbox_value(AT_FSTRONG, 12, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG, 12, HG_HEIGHT, 35);
set_hitbox_value(AT_FSTRONG, 12, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 12, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 12, HG_DAMAGE, 7);
set_hitbox_value(AT_FSTRONG, 12, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG, 12, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 12, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FSTRONG, 12, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_FSTRONG, 12, HG_HITPAUSE_SCALING, 2);
set_hitbox_value(AT_FSTRONG, 12, HG_VISUAL_EFFECT, 196);
set_hitbox_value(AT_FSTRONG, 12, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 12, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 12, HG_HIT_SFX, asset_get("sfx_ice_on_player"))

set_hitbox_value(AT_FSTRONG, 13, HG_PARENT_HITBOX, 0); // literally stolen from wrastor
set_hitbox_value(AT_FSTRONG, 13, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 13, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 13, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 13, HG_LIFETIME, 200);
set_hitbox_value(AT_FSTRONG, 13, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_FSTRONG, 13, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 13, HG_ANGLE, 100);
set_hitbox_value(AT_FSTRONG, 13, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 13, HG_DAMAGE, 5);
set_hitbox_value(AT_FSTRONG, 13, HG_WIDTH, 90);
set_hitbox_value(AT_FSTRONG, 13, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 13, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSTRONG, 13, HG_HITBOX_Y, -1);
set_hitbox_value(AT_FSTRONG, 13, HG_EFFECT, 12);
set_hitbox_value(AT_FSTRONG, 13, HG_SDI_MULTIPLIER, 1);
//set_hitbox_value(AT_FSTRONG, 5, HG_HITSTUN_MULTIPLIER, 0.10);
set_hitbox_value(AT_FSTRONG, 13, HG_TECHABLE, 0);
set_hitbox_value(AT_FSTRONG, 13, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 13, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSTRONG, 13, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 13, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_FSTRONG, 13, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_FSTRONG, 13, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSTRONG, 13, HG_VISUAL_EFFECT_Y_OFFSET, 16);
set_hitbox_value(AT_FSTRONG, 13, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FSTRONG, 13, HG_EXTRA_CAMERA_SHAKE, 0);
set_hitbox_value(AT_FSTRONG, 13, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSTRONG, 13, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_FSTRONG, 13, HG_EXTENDED_PARRY_STUN, 0);
set_hitbox_value(AT_FSTRONG, 13, HG_HITBOX_GROUP, 0);
//set_hitbox_value(AT_FSTRONG, 5, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_FSTRONG, 13, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 13, HG_PROJECTILE_SPRITE, sprite_get("fstrongtornado"));
set_hitbox_value(AT_FSTRONG, 13, HG_PROJECTILE_MASK, sprite_get("fstrongtornado"));
set_hitbox_value(AT_FSTRONG, 13, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FSTRONG, 13, HG_PROJECTILE_AIR_FRICTION, 0.3);
set_hitbox_value(AT_FSTRONG, 13, HG_PROJECTILE_HSPEED, 15);
set_hitbox_value(AT_FSTRONG, 13, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSTRONG, 13, HG_PROJECTILE_GRAVITY, 0);