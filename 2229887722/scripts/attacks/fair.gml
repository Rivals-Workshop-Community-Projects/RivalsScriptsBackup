/*
set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_FAIR,1);

set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 37);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 55);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 85);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 30);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 6);

*/

set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 15);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 6); //modified in attack_update
set_attack_value(AT_FAIR, AG_USES_CUSTOM_GRAVITY, 0); //Used to be 1


//First Jab
set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 5);//4
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FAIR, 1, AG_WINDOW_HSPEED_TYPE, 0);
//set_window_value(AT_FAIR, 1, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);


//set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2+7);
set_window_value(AT_FAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4+7);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_CANCEL_FRAME, 6);
set_window_value(AT_FAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

//2nd Jab
set_window_value(AT_FAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 4, AG_WINDOW_HSPEED_TYPE, 0);
//set_window_value(AT_FAIR, 4, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6+7);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_FAIR, 4, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

set_window_value(AT_FAIR, 5, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FAIR, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_FAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 8+7);
set_window_value(AT_FAIR, 5, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

set_window_value(AT_FAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAME_START, 11+7);
set_window_value(AT_FAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_CANCEL_FRAME, 6);
set_window_value(AT_FAIR, 6, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

//3rd Jab
set_window_value(AT_FAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 7, AG_WINDOW_HSPEED_TYPE, 0);
//set_window_value(AT_FAIR, 7, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAME_START, 12+7);
set_window_value(AT_FAIR, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 7, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FAIR, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FAIR, 7, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

set_window_value(AT_FAIR, 8, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FAIR, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FAIR, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 8, AG_WINDOW_ANIM_FRAME_START, 14+7);
set_window_value(AT_FAIR, 8, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

set_window_value(AT_FAIR, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 9, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 9, AG_WINDOW_ANIM_FRAME_START, 17+7);
set_window_value(AT_FAIR, 9, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FAIR, 9, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_FAIR, 9, AG_WINDOW_CANCEL_FRAME, 6);
set_window_value(AT_FAIR, 9, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

//4th Jab
set_window_value(AT_FAIR, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 10, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 10, AG_WINDOW_HSPEED_TYPE, 0);
//set_window_value(AT_FAIR, 10, AG_WINDOW_HSPEED, 4);
set_window_value(AT_FAIR, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 10, AG_WINDOW_ANIM_FRAME_START, 18+7);
set_window_value(AT_FAIR, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 10, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FAIR, 10, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FAIR, 10, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

set_window_value(AT_FAIR, 11, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FAIR, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FAIR, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 11, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FAIR, 11, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FAIR, 11, AG_WINDOW_ANIM_FRAME_START, 20+7);
//set_window_value(AT_FAIR, 11, AG_WINDOW_VSPEED_TYPE, 2);
//set_window_value(AT_FAIR, 11, AG_WINDOW_VSPEED, -10);
set_window_value(AT_FAIR, 11, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FAIR, 11, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.25);
set_window_value(AT_FAIR, 11, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

set_window_value(AT_FAIR, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 12, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 12, AG_WINDOW_ANIM_FRAME_START, 27+7);
set_window_value(AT_FAIR, 12, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FAIR, 12, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_FAIR, 12, AG_WINDOW_CANCEL_FRAME, 1);
set_window_value(AT_FAIR, 12, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

//5th Jab
set_window_value(AT_FAIR, 13, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 13, AG_WINDOW_LENGTH, 5);
//set_window_value(AT_FAIR, 13, AG_WINDOW_HSPEED_TYPE, 2);
//set_window_value(AT_FAIR, 13, AG_WINDOW_HSPEED, 6);
set_window_value(AT_FAIR, 13, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_FAIR, 13, AG_WINDOW_VSPEED, -4);
set_window_value(AT_FAIR, 13, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 13, AG_WINDOW_ANIM_FRAME_START, 28+7);
set_window_value(AT_FAIR, 13, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 13, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_FAIR, 13, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FAIR, 13, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

set_window_value(AT_FAIR, 14, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FTILT, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FAIR, 14, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 14, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 14, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 14, AG_WINDOW_ANIM_FRAME_START, 33+7);
//set_window_value(AT_FAIR, 14, AG_WINDOW_VSPEED_TYPE, 2);
//set_window_value(AT_FAIR, 14, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FAIR, 14, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FAIR, 14, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.25);
set_window_value(AT_FAIR, 14, AG_WINDOW_CUSTOM_GRAVITY, 0.1);

set_window_value(AT_FAIR, 15, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 15, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FAIR, 15, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 15, AG_WINDOW_ANIM_FRAME_START, 34+7);
set_window_value(AT_FAIR, 15, AG_WINDOW_HAS_WHIFFLAG, 1);
//set_window_value(AT_FAIR, 15, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_FAIR, 15, AG_WINDOW_HSPEED, 0);
//set_window_value(AT_FAIR, 15, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_FAIR, 15, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FAIR, 15, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FAIR, 15, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_FAIR, 15, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(AT_FAIR, 15, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_FAIR, 15, AG_WINDOW_CANCEL_FRAME, 1);
//set_window_value(AT_FAIR, 15, AG_WINDOW_CUSTOM_GRAVITY, 0.1);


//Hitboxes
set_num_hitboxes(AT_FAIR, 5);

set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 14);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 1.5);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_FAIR, 1, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITSTUN_MULTIPLIER, 1);
//set_hitbox_value(AT_FAIR, 1, HG_DRIFT_MULTIPLIER, 0);
//set_hitbox_value(AT_FAIR, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 111 );
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("amber_magic_hit_medium1"));

set_hitbox_value(AT_FAIR, 1, HG_EXTRA_CAMERA_SHAKE, -1 );

set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 12);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 58);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 1.5);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 7);
//set_hitbox_value(AT_FAIR, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITSTUN_MULTIPLIER, 0.9);
//set_hitbox_value(AT_FAIR, 2, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 111 );
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, sound_get("amber_magic_hit_medium1"));
set_hitbox_value(AT_FAIR, 2, HG_EXTRA_CAMERA_SHAKE, -1 );

set_hitbox_value(AT_FAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 8);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 14);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 1.5);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 7);
//set_hitbox_value(AT_FAIR, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_FAIR, 3, HG_HITSTUN_MULTIPLIER, 0.8);
//set_hitbox_value(AT_FAIR, 3, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 111 );
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, sound_get("amber_magic_hit_medium1"));
set_hitbox_value(AT_FAIR, 3, HG_EXTRA_CAMERA_SHAKE, -1 );

set_hitbox_value(AT_FAIR, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 11);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 16);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 62);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 2.5);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FAIR, 4, HG_HITSTUN_MULTIPLIER, 1);
//set_hitbox_value(AT_FAIR, 4, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 7);
//set_hitbox_value(AT_FAIR, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT, 111 );
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, sound_get("amber_magic_hit_medium1"));
set_hitbox_value(AT_FAIR, 4, HG_EXTRA_CAMERA_SHAKE, -1 );

set_hitbox_value(AT_FAIR, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW, 14);
set_hitbox_value(AT_FAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_X, 14);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FAIR, 5, HG_WIDTH, 72);
set_hitbox_value(AT_FAIR, 5, HG_HEIGHT, 70);
set_hitbox_value(AT_FAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_FAIR, 5, HG_ANGLE, 45);
//set_hitbox_value(AT_FAIR, 5, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_FAIR, 5, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 5, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FAIR, 5, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_FAIR, 5, HG_HITPAUSE_SCALING, 1);
//set_hitbox_value(AT_FAIR, 5, HG_EXTRA_HITPAUSE, 4);
//set_hitbox_value(AT_FAIR, 5, HG_HIT_LOCKOUT, 6);
//set_hitbox_value(AT_FAIR, 5, HG_TECHABLE, 1);
set_hitbox_value(AT_FAIR, 5, HG_VISUAL_EFFECT, 112 );
set_hitbox_value(AT_FAIR, 5, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 5, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_FAIR, 5, HG_GROUNDEDNESS, 0 );
//set_hitbox_value(AT_FAIR, 5, HG_EXTRA_CAMERA_SHAKE, -1 );

//ABYSS PROJECTILE

set_hitbox_value(AT_FAIR, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_TYPE, 2 );
set_hitbox_value(AT_FAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FAIR, 6, HG_LIFETIME, 22);
set_hitbox_value(AT_FAIR, 6, HG_WIDTH, 70);
set_hitbox_value(AT_FAIR, 6, HG_HEIGHT, 35);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FAIR, 6, HG_SHAPE, 0 );
set_hitbox_value(AT_FAIR, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 6, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 6, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 6, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_FAIR, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 6, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FAIR, 6, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 6, HG_SDI_MULTIPLIER, .1);
set_hitbox_value(AT_FAIR, 6, HG_ANGLE_FLIPPER, 0 );
set_hitbox_value(AT_FAIR, 6, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_FAIR, 6, HG_IGNORES_PROJECTILES, 0 );
set_hitbox_value(AT_FAIR, 6, HG_TECHABLE, 0 );
set_hitbox_value(AT_FAIR, 6, HG_FORCE_FLINCH, 0 );
set_hitbox_value(AT_FAIR, 6, HG_THROWS_ROCK, 0 );
set_hitbox_value(AT_FAIR, 6, HG_EXTRA_CAMERA_SHAKE, 0 );
set_hitbox_value(AT_FAIR, 6, HG_VISUAL_EFFECT, 112 ); //111
set_hitbox_value(AT_FAIR, 6, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_SPRITE, sprite_get("abyss_projectile"));
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_MASK, -1); // was yarnball_cmask
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_HSPEED, 13);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1 );
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1 );
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 0 );
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_UNBASHABLE, 0 );
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_PARRY_STUN, 1 );
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_IS_TRANSCENDENT, 1 );
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_PLASMA_SAFE, 1 );
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_DESTROY_EFFECT, 112); // was 109
set_hitbox_value(AT_FAIR, 6, HG_EFFECT, 99); //this effect is used for knowing if it's a rune projectile


set_hitbox_value(AT_FAIR, 7, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_TYPE, 2 );
set_hitbox_value(AT_FAIR, 7, HG_WINDOW, 5);
set_hitbox_value(AT_FAIR, 7, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FAIR, 7, HG_LIFETIME, 22);
set_hitbox_value(AT_FAIR, 7, HG_WIDTH, 70);
set_hitbox_value(AT_FAIR, 7, HG_HEIGHT, 35);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FAIR, 7, HG_SHAPE, 0 );
set_hitbox_value(AT_FAIR, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 7, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 7, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 7, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 7, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_FAIR, 7, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 7, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FAIR, 7, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 7, HG_SDI_MULTIPLIER, .1);
set_hitbox_value(AT_FAIR, 7, HG_ANGLE_FLIPPER, 0 );
set_hitbox_value(AT_FAIR, 7, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_FAIR, 7, HG_IGNORES_PROJECTILES, 0 );
set_hitbox_value(AT_FAIR, 7, HG_TECHABLE, 0 );
set_hitbox_value(AT_FAIR, 7, HG_FORCE_FLINCH, 0 );
set_hitbox_value(AT_FAIR, 7, HG_THROWS_ROCK, 0 );
set_hitbox_value(AT_FAIR, 7, HG_EXTRA_CAMERA_SHAKE, 0 );
set_hitbox_value(AT_FAIR, 7, HG_VISUAL_EFFECT, 112 ); //111
set_hitbox_value(AT_FAIR, 7, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_SPRITE, sprite_get("abyss_projectile"));
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_MASK, -1); // was yarnball_cmask
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_HSPEED, 13);
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1 );
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1 );
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 0 );
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_UNBASHABLE, 0 );
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_PARRY_STUN, 1 );
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_IS_TRANSCENDENT, 1 );
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_PLASMA_SAFE, 1 );
set_hitbox_value(AT_FAIR, 7, HG_PROJECTILE_DESTROY_EFFECT, 112); // was 109
set_hitbox_value(AT_FAIR, 7, HG_EFFECT, 99); //this effect is used for knowing if it's a rune projectile


set_hitbox_value(AT_FAIR, 8, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_TYPE, 2 );
set_hitbox_value(AT_FAIR, 8, HG_WINDOW, 8);
set_hitbox_value(AT_FAIR, 8, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FAIR, 8, HG_LIFETIME, 22);
set_hitbox_value(AT_FAIR, 8, HG_WIDTH, 70);
set_hitbox_value(AT_FAIR, 8, HG_HEIGHT, 35);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_X, 0);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FAIR, 8, HG_SHAPE, 0 );
set_hitbox_value(AT_FAIR, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 8, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 8, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 8, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 8, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_FAIR, 8, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 8, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FAIR, 8, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 8, HG_SDI_MULTIPLIER, .1);
set_hitbox_value(AT_FAIR, 8, HG_ANGLE_FLIPPER, 0 );
set_hitbox_value(AT_FAIR, 8, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_FAIR, 8, HG_IGNORES_PROJECTILES, 0 );
set_hitbox_value(AT_FAIR, 8, HG_TECHABLE, 0 );
set_hitbox_value(AT_FAIR, 8, HG_FORCE_FLINCH, 0 );
set_hitbox_value(AT_FAIR, 8, HG_THROWS_ROCK, 0 );
set_hitbox_value(AT_FAIR, 8, HG_EXTRA_CAMERA_SHAKE, 0 );
set_hitbox_value(AT_FAIR, 8, HG_VISUAL_EFFECT, 112 ); //111
set_hitbox_value(AT_FAIR, 8, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_FAIR, 8, HG_PROJECTILE_SPRITE, sprite_get("abyss_projectile"));
set_hitbox_value(AT_FAIR, 8, HG_PROJECTILE_MASK, -1); // was yarnball_cmask
set_hitbox_value(AT_FAIR, 8, HG_PROJECTILE_HSPEED, 13);
set_hitbox_value(AT_FAIR, 8, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FAIR, 8, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_FAIR, 8, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_FAIR, 8, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FAIR, 8, HG_PROJECTILE_WALL_BEHAVIOR, 1 );
set_hitbox_value(AT_FAIR, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 1 );
set_hitbox_value(AT_FAIR, 8, HG_PROJECTILE_ENEMY_BEHAVIOR, 0 );
set_hitbox_value(AT_FAIR, 8, HG_PROJECTILE_UNBASHABLE, 0 );
set_hitbox_value(AT_FAIR, 8, HG_PROJECTILE_PARRY_STUN, 1 );
set_hitbox_value(AT_FAIR, 8, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );
set_hitbox_value(AT_FAIR, 8, HG_PROJECTILE_IS_TRANSCENDENT, 1 );
set_hitbox_value(AT_FAIR, 8, HG_PROJECTILE_PLASMA_SAFE, 1 );
set_hitbox_value(AT_FAIR, 8, HG_PROJECTILE_DESTROY_EFFECT, 112); // was 109
set_hitbox_value(AT_FAIR, 8, HG_EFFECT, 99); //this effect is used for knowing if it's a rune projectile



set_hitbox_value(AT_FAIR, 9, HG_PARENT_HITBOX, 9);
set_hitbox_value(AT_FAIR, 9, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 9, HG_HITBOX_TYPE, 2 );
set_hitbox_value(AT_FAIR, 9, HG_WINDOW, 11);
set_hitbox_value(AT_FAIR, 9, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FAIR, 9, HG_LIFETIME, 22);
set_hitbox_value(AT_FAIR, 9, HG_WIDTH, 70);
set_hitbox_value(AT_FAIR, 9, HG_HEIGHT, 35);
set_hitbox_value(AT_FAIR, 9, HG_HITBOX_X, 0);
set_hitbox_value(AT_FAIR, 9, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FAIR, 9, HG_SHAPE, 0 );
set_hitbox_value(AT_FAIR, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 9, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 9, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 9, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 9, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_FAIR, 9, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 9, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FAIR, 9, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 9, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 9, HG_SDI_MULTIPLIER, .1);
set_hitbox_value(AT_FAIR, 9, HG_ANGLE_FLIPPER, 0 );
set_hitbox_value(AT_FAIR, 9, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_FAIR, 9, HG_IGNORES_PROJECTILES, 0 );
set_hitbox_value(AT_FAIR, 9, HG_TECHABLE, 0 );
set_hitbox_value(AT_FAIR, 9, HG_FORCE_FLINCH, 0 );
set_hitbox_value(AT_FAIR, 9, HG_THROWS_ROCK, 0 );
set_hitbox_value(AT_FAIR, 9, HG_EXTRA_CAMERA_SHAKE, 0 );
set_hitbox_value(AT_FAIR, 9, HG_VISUAL_EFFECT, 112 ); //111
set_hitbox_value(AT_FAIR, 9, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_FAIR, 9, HG_PROJECTILE_SPRITE, sprite_get("abyss_projectile"));
set_hitbox_value(AT_FAIR, 9, HG_PROJECTILE_MASK, -1); // was yarnball_cmask
set_hitbox_value(AT_FAIR, 9, HG_PROJECTILE_HSPEED, 13);
set_hitbox_value(AT_FAIR, 9, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FAIR, 9, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_FAIR, 9, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_FAIR, 9, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FAIR, 9, HG_PROJECTILE_WALL_BEHAVIOR, 1 );
set_hitbox_value(AT_FAIR, 9, HG_PROJECTILE_GROUND_BEHAVIOR, 1 );
set_hitbox_value(AT_FAIR, 9, HG_PROJECTILE_ENEMY_BEHAVIOR, 0 );
set_hitbox_value(AT_FAIR, 9, HG_PROJECTILE_UNBASHABLE, 0 );
set_hitbox_value(AT_FAIR, 9, HG_PROJECTILE_PARRY_STUN, 1 );
set_hitbox_value(AT_FAIR, 9, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );
set_hitbox_value(AT_FAIR, 9, HG_PROJECTILE_IS_TRANSCENDENT, 1 );
set_hitbox_value(AT_FAIR, 9, HG_PROJECTILE_PLASMA_SAFE, 1 );
set_hitbox_value(AT_FAIR, 9, HG_PROJECTILE_DESTROY_EFFECT, 112); // was 109
set_hitbox_value(AT_FAIR, 9, HG_EFFECT, 99); //this effect is used for knowing if it's a rune projectile



set_hitbox_value(AT_FAIR, 10, HG_PARENT_HITBOX, 10);
set_hitbox_value(AT_FAIR, 10, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 10, HG_HITBOX_TYPE, 2 );
set_hitbox_value(AT_FAIR, 10, HG_WINDOW, 14);
set_hitbox_value(AT_FAIR, 10, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FAIR, 10, HG_LIFETIME, 22);
set_hitbox_value(AT_FAIR, 10, HG_WIDTH, 70);
set_hitbox_value(AT_FAIR, 10, HG_HEIGHT, 35);
set_hitbox_value(AT_FAIR, 10, HG_HITBOX_X, 0);
set_hitbox_value(AT_FAIR, 10, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FAIR, 10, HG_SHAPE, 0 );
set_hitbox_value(AT_FAIR, 10, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 10, HG_DAMAGE, 5);
set_hitbox_value(AT_FAIR, 10, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 10, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 10, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_FAIR, 10, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_FAIR, 10, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FAIR, 10, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 10, HG_SDI_MULTIPLIER, .1);
set_hitbox_value(AT_FAIR, 10, HG_ANGLE_FLIPPER, 0 );
set_hitbox_value(AT_FAIR, 10, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_FAIR, 10, HG_IGNORES_PROJECTILES, 0 );
set_hitbox_value(AT_FAIR, 10, HG_TECHABLE, 0 );
set_hitbox_value(AT_FAIR, 10, HG_FORCE_FLINCH, 0 );
set_hitbox_value(AT_FAIR, 10, HG_THROWS_ROCK, 0 );
set_hitbox_value(AT_FAIR, 10, HG_EXTRA_CAMERA_SHAKE, 0 );
set_hitbox_value(AT_FAIR, 10, HG_VISUAL_EFFECT, 112 ); //111
set_hitbox_value(AT_FAIR, 10, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_FAIR, 10, HG_PROJECTILE_SPRITE, sprite_get("abyss_projectile"));
set_hitbox_value(AT_FAIR, 10, HG_PROJECTILE_MASK, -1); // was yarnball_cmask
set_hitbox_value(AT_FAIR, 10, HG_PROJECTILE_HSPEED, 13);
set_hitbox_value(AT_FAIR, 10, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FAIR, 10, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_FAIR, 10, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_FAIR, 10, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FAIR, 10, HG_PROJECTILE_WALL_BEHAVIOR, 1 );
set_hitbox_value(AT_FAIR, 10, HG_PROJECTILE_GROUND_BEHAVIOR, 1 );
set_hitbox_value(AT_FAIR, 10, HG_PROJECTILE_ENEMY_BEHAVIOR, 0 );
set_hitbox_value(AT_FAIR, 10, HG_PROJECTILE_UNBASHABLE, 0 );
set_hitbox_value(AT_FAIR, 10, HG_PROJECTILE_PARRY_STUN, 1 );
set_hitbox_value(AT_FAIR, 10, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );
set_hitbox_value(AT_FAIR, 10, HG_PROJECTILE_IS_TRANSCENDENT, 1 );
set_hitbox_value(AT_FAIR, 10, HG_PROJECTILE_PLASMA_SAFE, 1 );
set_hitbox_value(AT_FAIR, 10, HG_PROJECTILE_DESTROY_EFFECT, 112); // was 109
set_hitbox_value(AT_FAIR, 10, HG_EFFECT, 99); //this effect is used for knowing if it's a rune projectile

//A stronger finisher hitbox that only hits grounded enemies
/*
set_hitbox_value(AT_FAIR, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW, 14);
set_hitbox_value(AT_FAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_X, 6);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FAIR, 6, HG_WIDTH, 48);
set_hitbox_value(AT_FAIR, 6, HG_HEIGHT, 40);
set_hitbox_value(AT_FAIR, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 6, HG_DAMAGE, 5);
set_hitbox_value(AT_FAIR, 6, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 6, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 6, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FAIR, 6, HG_BASE_HITPAUSE, 22);
set_hitbox_value(AT_FAIR, 6, HG_TECHABLE, 1);
set_hitbox_value(AT_FAIR, 6, HG_VISUAL_EFFECT, 304 );
set_hitbox_value(AT_FAIR, 6, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 6, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FAIR, 6, HG_GROUNDEDNESS, 1 );
*/

#region //Experimental fair rework
/*
set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 6); //modified in attack_update
set_attack_value(AT_FAIR, AG_USES_CUSTOM_GRAVITY, 0); //Used to be 1


//First Jab
set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FAIR, 1, AG_WINDOW_HSPEED_TYPE, 0);
//set_window_value(AT_FAIR, 1, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);


//set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2+7);
set_window_value(AT_FAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4+7);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_CANCEL_FRAME, 6);
set_window_value(AT_FAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

//2nd Jab
set_window_value(AT_FAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 4, AG_WINDOW_HSPEED_TYPE, 0);
//set_window_value(AT_FAIR, 4, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6+7);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_FAIR, 4, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

set_window_value(AT_FAIR, 5, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FAIR, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_FAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 8+7);
set_window_value(AT_FAIR, 5, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

set_window_value(AT_FAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAME_START, 11+7);
set_window_value(AT_FAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
//set_window_value(AT_FAIR, 6, AG_WINDOW_CANCEL_TYPE, 1);
//set_window_value(AT_FAIR, 6, AG_WINDOW_CANCEL_FRAME, 6);
set_window_value(AT_FAIR, 6, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
//Hitboxes
set_num_hitboxes(AT_FAIR, 6);

set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 14);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 8);
//set_hitbox_value(AT_FAIR, 1, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITSTUN_MULTIPLIER, 1);
//set_hitbox_value(AT_FAIR, 1, HG_DRIFT_MULTIPLIER, 0);
//set_hitbox_value(AT_FAIR, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 111 );
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
//set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_FAIR, 1, HG_EXTRA_CAMERA_SHAKE, -1 );

set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 12);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 58);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 8);
//set_hitbox_value(AT_FAIR, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITSTUN_MULTIPLIER, 0.9);
//set_hitbox_value(AT_FAIR, 2, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 111 );
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
//set_hitbox_value(AT_FAIR, 2, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_FAIR, 2, HG_EXTRA_CAMERA_SHAKE, -1 );

set_hitbox_value(AT_FAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 8);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 14);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 40);
//set_hitbox_value(AT_FAIR, 3, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_FAIR, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_FAIR, 3, HG_HITSTUN_MULTIPLIER, 0.8);
//set_hitbox_value(AT_FAIR, 3, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 111 );
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_FAIR, 3, HG_EXTRA_CAMERA_SHAKE, -1 );

set_hitbox_value(AT_FAIR, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 11);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 16);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 62);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 40);
//set_hitbox_value(AT_FAIR, 4, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_FAIR, 4, HG_HITSTUN_MULTIPLIER, 1);
//set_hitbox_value(AT_FAIR, 4, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 7);
//set_hitbox_value(AT_FAIR, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT, 111 );
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_FAIR, 4, HG_EXTRA_CAMERA_SHAKE, -1 );

set_hitbox_value(AT_FAIR, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW, 14);
set_hitbox_value(AT_FAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_X, 14);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FAIR, 5, HG_WIDTH, 72);
set_hitbox_value(AT_FAIR, 5, HG_HEIGHT, 70);
set_hitbox_value(AT_FAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 5, HG_DAMAGE, 10);
set_hitbox_value(AT_FAIR, 5, HG_ANGLE, 45);
//set_hitbox_value(AT_FAIR, 5, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_FAIR, 5, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 5, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FAIR, 5, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_FAIR, 5, HG_HITPAUSE_SCALING, 1);
//set_hitbox_value(AT_FAIR, 5, HG_EXTRA_HITPAUSE, 4);
//set_hitbox_value(AT_FAIR, 5, HG_HIT_LOCKOUT, 6);
//set_hitbox_value(AT_FAIR, 5, HG_TECHABLE, 1);
set_hitbox_value(AT_FAIR, 5, HG_VISUAL_EFFECT, 112 );
set_hitbox_value(AT_FAIR, 5, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 5, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_FAIR, 5, HG_GROUNDEDNESS, 0 );
*/
#endregion

