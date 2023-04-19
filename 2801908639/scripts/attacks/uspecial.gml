set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial_air"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 7);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL, AG_LANDING_LAG, 6);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 12);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -9);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX_FRAME, 11);


set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED, 8);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, 8);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 10);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED, 8);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, 8);

set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED, 8);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX, sound_get("explode"));
set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 25);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 17);

set_num_hitboxes(AT_USPECIAL,5);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_DRIFT_MULTIPLIER, .001)
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP,-1);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_DRIFT_MULTIPLIER, .001)
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP,-1);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_DRIFT_MULTIPLIER, .001)
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP,-1);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 9999);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -25);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 15);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 315);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USPECIAL, 4, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL, 4, HG_DRIFT_MULTIPLIER, .2)
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP,-1);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 141);
set_hitbox_value(AT_DSPECIAL, 4, HG_TECHABLE, 3 );
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 10);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH,  80);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 361);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USPECIAL, 5, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP,-1);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, large_plasma_hfx);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("spr_nothing"));


set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 9);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 99999999);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 32);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, 32);
set_hitbox_value(AT_USPECIAL, 6, HG_WIDTH, 42);
set_hitbox_value(AT_USPECIAL, 6, HG_HEIGHT, 42);
set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL, 6, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 6, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL, 6, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_USPECIAL, 6, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE_FLIPPER, 7);

set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("spritehit"));
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);

// set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 256);