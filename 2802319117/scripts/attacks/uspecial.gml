set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.8);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_ell_dspecial_explosion_3"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 19);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 1.2);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 1.2);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -5);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 1.2);

set_num_hitboxes(AT_USPECIAL, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);//early hit uspecial
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 3);
//set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 4);//19
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -34);//65
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 108);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 95);
set_hitbox_value(AT_USPECIAL, 5, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 90);//80
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_USPECIAL, 5, HG_EXTRA_HITPAUSE, 5);	
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_USPECIAL, 5, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_SDI_MULTIPLIER, 1);
//set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, 145  );//161
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_ell_fist_explode"));

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 76);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 71);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 5);
//set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 8);
//set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -22);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 76);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 71);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 5);
//set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 5);
//set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 8);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -22);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 76);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 71);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 40);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 5);
//set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 5);
//set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//set_hitbox_value(AT_USPECIAL, 1, HG_HIT_LOCKOUT, 10);
/*
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);//late hit uspecial
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 17);//19
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -51);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 44);//50
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 59);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);//80
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 150);
//set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, lanternfx);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
//set_hitbox_value(AT_USPECIAL, 2, HG_HIT_LOCKOUT, 10);
