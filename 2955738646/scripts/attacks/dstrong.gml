set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1); //Readying to grab
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 5);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1); //Going for grab and missing
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("dstrong_swosh"));

set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1); //Holding enemy in place
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1); //Slamming them into the ground
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_DSTRONG, 5, AG_WINDOW_TYPE, 1); //Blasting them forward
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 26);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_DSTRONG, 6, AG_WINDOW_TYPE, 1); //Throwing them backwards and away
set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 31);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DSTRONG, 6, AG_WINDOW_SFX_FRAME, 9);

set_num_hitboxes(AT_DSTRONG, 6);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1); //Grabbing hitbox
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y,-45);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 3);
//set_hitbox_value(AT_DSTRONG, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 19);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 19);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sound_get("dstrong_grab"));
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 0.1);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1); //Slam down
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 18);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -31);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 70);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 105);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 280);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 192);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, 40);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, sound_get("dstrong_crash"));
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 2, HG_TECHABLE, 1);

set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1); //Blast in place
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 38);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 50);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1); //Blast forward away
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 38);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 64);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 64);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 30);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 4, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT_X_OFFSET, 12);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT_Y_OFFSET, 16);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, sound_get("dstrong_blastaway"));
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, -1);
//set_hitbox_value(AT_DSTRONG, 4, HG_TECHABLE, 1);

set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1); //Throw backwards hold in place
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 6);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, 38);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 50);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 30);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_TYPE, 1); //Throw away
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW, 6);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, -48);
set_hitbox_value(AT_DSTRONG, 6, HG_WIDTH, 130);
set_hitbox_value(AT_DSTRONG, 6, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 6, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG, 6, HG_DAMAGE, 6);
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE, 30);
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 6, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 6, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSTRONG, 6, HG_VISUAL_EFFECT_Y_OFFSET, 40);
set_hitbox_value(AT_DSTRONG, 6, HG_HIT_SFX, sound_get("dstrong_throwaway"));
set_hitbox_value(AT_DSTRONG, 6, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_GROUP, -1);
//set_hitbox_value(AT_DSTRONG, 6, HG_TECHABLE, 1);