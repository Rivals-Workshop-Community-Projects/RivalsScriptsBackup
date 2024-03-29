//god have mercy

set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 9);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DSPECIAL, AG_LANDING_LAG, 12);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1); //begin smoking
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 7);//8
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1); //smoking loop
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_zetter_upb_hit"));

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1); //weak weed attack
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX_FRAME, 10);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_ell_steam_release"));

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1); //big weed attack start up
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_ell_strong_attack_explosion"));
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_GOTO, 8);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1); //weed explosion
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED, -2);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1); //put da weed away
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

set_window_value(AT_DSPECIAL, 7, AG_WINDOW_TYPE, 1); //big weed attack windup?
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 15);
// set_window_value(AT_DSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 1);
// set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_GOTO, 4);

set_window_value(AT_DSPECIAL, 8, AG_WINDOW_TYPE, 1); //big weed attack active frames
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 18);

set_window_value(AT_DSPECIAL, 9, AG_WINDOW_TYPE, 1); //big weed attack end lag
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH, 32);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 19);

set_num_hitboxes(AT_DSPECIAL, 7);

//weak hit

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 51);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 70);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, HFX_ELL_STEAM_HIT);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_CAMERA_SHAKE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_SDI_MULTIPLIER, .1);

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 51);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 70);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, HFX_ELL_STEAM_HIT);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));
set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_CAMERA_SHAKE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_SDI_MULTIPLIER, .1);

set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 99);//20
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 51);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 70);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 48);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, HFX_ELL_STEAM_HIT);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));
set_hitbox_value(AT_DSPECIAL, 3, HG_EXTRA_CAMERA_SHAKE, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_TECHABLE, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_SDI_MULTIPLIER, .1);

set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 20);//25
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 51);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 70);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 48);
set_hitbox_value(AT_DSPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, HFX_ELL_STEAM_HIT);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));
set_hitbox_value(AT_DSPECIAL, 4, HG_EXTRA_CAMERA_SHAKE, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_SDI_MULTIPLIER, .1);

//reg hit

set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 8);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -9);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, 54);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 12);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 361);//45
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITPAUSE_SCALING, 1);
// set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, sound_get("orchhit"));
set_hitbox_value(AT_DSPECIAL, 5, HG_EXTRA_CAMERA_SHAKE, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, HFX_ELL_FSPEC_HIT);

//explosion

set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 90);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL, 6, HG_WIDTH, 135);
set_hitbox_value(AT_DSPECIAL, 6, HG_HEIGHT, 135);
set_hitbox_value(AT_DSPECIAL, 6, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE, 16);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL, 6, HG_KNOCKBACK_SCALING, 1.4);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 6, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 6, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_LOCKOUT, 20);

set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW, 90);
set_hitbox_value(AT_DSPECIAL, 7, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL, 7, HG_WIDTH, 135);
set_hitbox_value(AT_DSPECIAL, 7, HG_HEIGHT, 135);
set_hitbox_value(AT_DSPECIAL, 7, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL, 7, HG_DAMAGE, 20);
set_hitbox_value(AT_DSPECIAL, 7, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 7, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 7, HG_KNOCKBACK_SCALING, 1.15);//1.3
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 7, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 7, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 7, HG_HIT_LOCKOUT, 20);
set_hitbox_value(AT_DSPECIAL, 7, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_TECHABLE, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITSTUN_MULTIPLIER, 1.5);

//explosion self damage
//does not work ignore this shit

set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 8, HG_WINDOW, 90);
set_hitbox_value(AT_DSPECIAL, 8, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 8, HG_WIDTH, 300);
set_hitbox_value(AT_DSPECIAL, 8, HG_HEIGHT, 100);
set_hitbox_value(AT_DSPECIAL, 8, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL, 8, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 8, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 8, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_DSPECIAL, 8, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_VISUAL_EFFECT, 1);
//set_hitbox_value(AT_DSPECIAL 7, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 8, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 8, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 8, HG_DRIFT_MULTIPLIER, 1);