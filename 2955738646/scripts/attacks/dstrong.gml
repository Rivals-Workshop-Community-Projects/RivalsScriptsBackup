set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1); //Readying to grab
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1); //Going for grab/grabing
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_WHIFFLAG, 10);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1); //Holding enemy in place
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1); //Slamming them into the ground
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 10);
/*
set_window_value(AT_DSTRONG, 5, AG_WINDOW_TYPE, 1); //Chucking them away 
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 35);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
*/
set_num_hitboxes(AT_DSTRONG, 3);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1); //Grabbing hitbox
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y,-45);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 19);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 19);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sound_get("Grab"));
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, -1);
/*
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 45);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y,-45);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, 1.0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, -1);


set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1); //Final burn hit back
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 45);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y,-45);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 60);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 90);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 40);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 20);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 0);
//set_hitbox_value(AT_DSTRONG, 3, HG_EFFECT, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 253);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, sound_get("ARC_BTL_CMN_Kdn_Fire_L"));
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, -1);
*/

set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 18);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -31);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 70);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 105);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 280);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, .4);
//set_hitbox_value(AT_DSTRONG, 3, HG_EFFECT, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 192);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, 30);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, sound_get("ARC_BTL_CMN_Crash_Ground"));
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 3, HG_TECHABLE, 1);
