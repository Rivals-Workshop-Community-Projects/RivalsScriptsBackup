curr_attack = AT_USPECIAL;

set_attack_value(curr_attack, AG_CATEGORY, 2);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(curr_attack, AG_NUM_WINDOWS, 10);
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1); //Start up
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 6);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(curr_attack, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1); //Swing
set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 12);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1); //Rise
set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 9);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(curr_attack, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 3, AG_WINDOW_SFX, djump_sound);
set_window_value(curr_attack, 3, AG_WINDOW_SFX_FRAME, 5);

set_window_value(curr_attack, 4, AG_WINDOW_TYPE, 1); //Pre Spin
set_window_value(curr_attack, 4, AG_WINDOW_LENGTH, 5);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(curr_attack, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 4, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(curr_attack, 4, AG_WINDOW_SFX_FRAME, 4);

set_window_value(curr_attack, 5, AG_WINDOW_TYPE, 1); //Spin
set_window_value(curr_attack, 5, AG_WINDOW_LENGTH, 8);
set_window_value(curr_attack, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(curr_attack, 5, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(curr_attack, 6, AG_WINDOW_TYPE, 1); //Pre-Fall
set_window_value(curr_attack, 6, AG_WINDOW_LENGTH, 3);
set_window_value(curr_attack, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 6, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(curr_attack, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(curr_attack, 6, AG_WINDOW_SFX_FRAME, 2);

set_window_value(curr_attack, 7, AG_WINDOW_TYPE, 1); //fall
set_window_value(curr_attack, 7, AG_WINDOW_LENGTH, 6);
set_window_value(curr_attack, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(curr_attack, 7, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(curr_attack, 8, AG_WINDOW_TYPE, 10); //fall
set_window_value(curr_attack, 8, AG_WINDOW_LENGTH, 6);
set_window_value(curr_attack, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(curr_attack, 8, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(curr_attack, 9, AG_WINDOW_TYPE, 1); //Land
set_window_value(curr_attack, 9, AG_WINDOW_LENGTH, 9);
set_window_value(curr_attack, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(curr_attack, 9, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(curr_attack, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 9, AG_WINDOW_SFX, asset_get("sfx_land"));
set_window_value(curr_attack, 9, AG_WINDOW_SFX_FRAME, 0);

set_window_value(curr_attack, 10, AG_WINDOW_TYPE, 1); //End Lag
set_window_value(curr_attack, 10, AG_WINDOW_LENGTH, 28);
set_window_value(curr_attack, 10, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(curr_attack, 10, AG_WINDOW_ANIM_FRAME_START, 18);


set_num_hitboxes(curr_attack, 8);

//Rise Hit
set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 1, HG_WINDOW, 2);
set_hitbox_value(curr_attack, 1, HG_SHAPE, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(curr_attack, 1, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -25);
set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 40);
set_hitbox_value(curr_attack, 1, HG_WIDTH, 50);
set_hitbox_value(curr_attack, 1, HG_HEIGHT, 50);
set_hitbox_value(curr_attack, 1, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 1, HG_DAMAGE, 4);
set_hitbox_value(curr_attack, 1, HG_ANGLE,  80);
set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(curr_attack, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(curr_attack, 1, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, 301);

//Spin
set_hitbox_value(curr_attack, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 2, HG_WINDOW, 5);
set_hitbox_value(curr_attack, 2, HG_SHAPE, 0);
set_hitbox_value(curr_attack, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(curr_attack, 2, HG_LIFETIME, 2);
set_hitbox_value(curr_attack, 2, HG_HITBOX_Y, -20);
set_hitbox_value(curr_attack, 2, HG_HITBOX_X, 20);
set_hitbox_value(curr_attack, 2, HG_WIDTH, 50);
set_hitbox_value(curr_attack, 2, HG_HEIGHT, 50);
set_hitbox_value(curr_attack, 2, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 2, HG_DAMAGE, 1);
set_hitbox_value(curr_attack, 2, HG_ANGLE, 90);
set_hitbox_value(curr_attack, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(curr_attack, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(curr_attack, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(curr_attack, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(curr_attack, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(curr_attack, 2, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(curr_attack, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(curr_attack, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(curr_attack, 2, HG_VISUAL_EFFECT, 301);

set_hitbox_value(curr_attack, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(curr_attack, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 3, HG_WINDOW, 5);
set_hitbox_value(curr_attack, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(curr_attack, 3, HG_LIFETIME, 2);
set_hitbox_value(curr_attack, 3, HG_HITBOX_Y, -10);
set_hitbox_value(curr_attack, 3, HG_HITBOX_X, -10);
set_hitbox_value(curr_attack, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(curr_attack, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(curr_attack, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 4, HG_WINDOW, 5);
set_hitbox_value(curr_attack, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(curr_attack, 4, HG_LIFETIME, 2);
set_hitbox_value(curr_attack, 4, HG_HITBOX_Y, -30);
set_hitbox_value(curr_attack, 4, HG_HITBOX_X, -20);
set_hitbox_value(curr_attack, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(curr_attack, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(curr_attack, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 5, HG_WINDOW, 5);
set_hitbox_value(curr_attack, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(curr_attack, 5, HG_LIFETIME, 2);
set_hitbox_value(curr_attack, 5, HG_HITBOX_Y, -40);
set_hitbox_value(curr_attack, 5, HG_HITBOX_X, 20);
set_hitbox_value(curr_attack, 5, HG_HITBOX_GROUP, -1);

//Early Spike
set_hitbox_value(curr_attack, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 6, HG_WINDOW, 7);
set_hitbox_value(curr_attack, 6, HG_SHAPE, 2);
set_hitbox_value(curr_attack, 6, HG_HITBOX_GROUP, 2);
set_hitbox_value(curr_attack, 6, HG_LIFETIME, 6);
set_hitbox_value(curr_attack, 6, HG_HITBOX_Y, -35);
set_hitbox_value(curr_attack, 6, HG_HITBOX_X, 30);
set_hitbox_value(curr_attack, 6, HG_WIDTH, 40);
set_hitbox_value(curr_attack, 6, HG_HEIGHT, 70);
set_hitbox_value(curr_attack, 6, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 6, HG_DAMAGE, 5);
set_hitbox_value(curr_attack, 6, HG_ANGLE,  270);
set_hitbox_value(curr_attack, 6, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(curr_attack, 6, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(curr_attack, 6, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(curr_attack, 6, HG_BASE_HITPAUSE, 10);
set_hitbox_value(curr_attack, 6, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(curr_attack, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(curr_attack, 6, HG_VISUAL_EFFECT, 301);

//Spike 2
set_hitbox_value(curr_attack, 7, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 7, HG_WINDOW, 8);
set_hitbox_value(curr_attack, 7, HG_SHAPE, 2);
set_hitbox_value(curr_attack, 7, HG_HITBOX_GROUP, 2);
set_hitbox_value(curr_attack, 7, HG_LIFETIME, 6);
set_hitbox_value(curr_attack, 7, HG_HITBOX_Y, -15);
set_hitbox_value(curr_attack, 7, HG_HITBOX_X, 30);
set_hitbox_value(curr_attack, 7, HG_WIDTH, 40);
set_hitbox_value(curr_attack, 7, HG_HEIGHT, 30);
set_hitbox_value(curr_attack, 7, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 7, HG_DAMAGE, 4);
set_hitbox_value(curr_attack, 7, HG_ANGLE,  270);
set_hitbox_value(curr_attack, 7, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(curr_attack, 7, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(curr_attack, 7, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(curr_attack, 7, HG_BASE_HITPAUSE, 7);
set_hitbox_value(curr_attack, 7, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(curr_attack, 7, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(curr_attack, 7, HG_VISUAL_EFFECT, 301);

//Land Box
set_hitbox_value(curr_attack, 8, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 8, HG_WINDOW, 9);
set_hitbox_value(curr_attack, 8, HG_SHAPE, 2);
set_hitbox_value(curr_attack, 8, HG_HITBOX_GROUP, 3);
set_hitbox_value(curr_attack, 8, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, 8, HG_HITBOX_Y, -30);
set_hitbox_value(curr_attack, 8, HG_HITBOX_X, 45);
set_hitbox_value(curr_attack, 8, HG_WIDTH, 60);
set_hitbox_value(curr_attack, 8, HG_HEIGHT, 60);
set_hitbox_value(curr_attack, 8, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 8, HG_DAMAGE, 4);
set_hitbox_value(curr_attack, 8, HG_ANGLE,  90);
set_hitbox_value(curr_attack, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(curr_attack, 8, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(curr_attack, 8, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(curr_attack, 8, HG_BASE_HITPAUSE, 10);
set_hitbox_value(curr_attack, 8, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(curr_attack, 8, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(curr_attack, 8, HG_VISUAL_EFFECT, 301);