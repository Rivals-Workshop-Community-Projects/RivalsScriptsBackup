set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_CATEGORY, 0);
set_attack_value(AT_DSTRONG, AG_OFF_LEDGE, 0);

set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 7);

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
//set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 12);

//pre-slam
set_window_value(AT_DSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_shatter"));
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_SFX_FRAME, 5);

//gound slam
set_window_value(AT_DSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 17);

//End
set_window_value(AT_DSTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 13);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 36);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 70);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 140);
// set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_GROUNDEDNESS, 1);

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 36);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 70);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 180);
// set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSTRONG, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_GROUNDEDNESS, 2);

set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 21);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 100);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 140);
// set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSTRONG, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_GROUNDEDNESS, 1);

set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 21);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 100);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 180);
// set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSTRONG, 4, HG_TECHABLE, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_GROUNDEDNESS, 2);

set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, -54);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 70);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 55);
set_hitbox_value(AT_DSTRONG, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 40);
// set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSTRONG, 5, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSTRONG, 5, HG_TECHABLE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_GROUNDEDNESS, 1);

set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, -54);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 6, HG_WIDTH, 70);
set_hitbox_value(AT_DSTRONG, 6, HG_HEIGHT, 55);
set_hitbox_value(AT_DSTRONG, 6, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE, 0);
// set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSTRONG, 6, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSTRONG, 6, HG_TECHABLE, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_GROUNDEDNESS, 2);

set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 7, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 7, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DSTRONG, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_X, -39);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 7, HG_WIDTH, 100);
set_hitbox_value(AT_DSTRONG, 7, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 7, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_ANGLE, 40);
// set_hitbox_value(AT_DSTRONG, 7, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DSTRONG, 7, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 7, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSTRONG, 7, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSTRONG, 7, HG_TECHABLE, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_GROUNDEDNESS, 1);

set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 8, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 8, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DSTRONG, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_X, -39);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 8, HG_WIDTH, 100);
set_hitbox_value(AT_DSTRONG, 8, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 8, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 8, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG, 8, HG_ANGLE, 0);
// set_hitbox_value(AT_DSTRONG, 8, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DSTRONG, 8, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 8, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSTRONG, 8, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 8, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSTRONG, 8, HG_TECHABLE, 1);
set_hitbox_value(AT_DSTRONG, 8, HG_GROUNDEDNESS, 2);

set_hitbox_value(AT_DSTRONG, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 9, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DSTRONG, 9, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 9, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 9, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 9, HG_HITBOX_X, 36);
set_hitbox_value(AT_DSTRONG, 9, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 9, HG_WIDTH, 70);
set_hitbox_value(AT_DSTRONG, 9, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 9, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 9, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 9, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG, 9, HG_ANGLE, 110);
set_hitbox_value(AT_DSTRONG, 9, HG_DRIFT_MULTIPLIER, .1);
set_hitbox_value(AT_DSTRONG, 9, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSTRONG, 9, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 9, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSTRONG, 9, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_DSTRONG, 9, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSTRONG, 9, HG_TECHABLE, 1);

set_hitbox_value(AT_DSTRONG, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 10, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DSTRONG, 10, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 10, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSTRONG, 10, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 10, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 10, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 10, HG_WIDTH, 130);
set_hitbox_value(AT_DSTRONG, 10, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 10, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 10, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 10, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG, 10, HG_ANGLE, 105);
set_hitbox_value(AT_DSTRONG, 10, HG_DRIFT_MULTIPLIER, .1);
set_hitbox_value(AT_DSTRONG, 10, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSTRONG, 10, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG, 10, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSTRONG, 10, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_DSTRONG, 10, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSTRONG, 10, HG_TECHABLE, 1);

set_hitbox_value(AT_DSTRONG, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 11, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_DSTRONG, 11, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 11, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSTRONG, 11, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 11, HG_HITBOX_X, -49);
set_hitbox_value(AT_DSTRONG, 11, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG, 11, HG_WIDTH, 60);
set_hitbox_value(AT_DSTRONG, 11, HG_HEIGHT, 55);
set_hitbox_value(AT_DSTRONG, 11, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 11, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 11, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG, 11, HG_ANGLE, 40);
set_hitbox_value(AT_DSTRONG, 11, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DSTRONG, 11, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 11, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSTRONG, 11, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 11, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSTRONG, 11, HG_TECHABLE, 1);

for(var i = 1; i <= 11; i++){
    set_hitbox_value(AT_DSTRONG, i, HG_DRIFT_MULTIPLIER, .01);
}

set_hitbox_value(AT_DSTRONG, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 12, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_DSTRONG, 12, HG_WINDOW, 6);
set_hitbox_value(AT_DSTRONG, 12, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 12, HG_HITBOX_X, -5);
set_hitbox_value(AT_DSTRONG, 12, HG_HITBOX_Y, -23);
set_hitbox_value(AT_DSTRONG, 12, HG_WIDTH, 160);
set_hitbox_value(AT_DSTRONG, 12, HG_HEIGHT, 52);
set_hitbox_value(AT_DSTRONG, 12, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 12, HG_PRIORITY, 4);
set_hitbox_value(AT_DSTRONG, 12, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 12, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 12, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 12, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 12, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 12, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 12, HG_VISUAL_EFFECT, HFX_KRA_ROCK_HUGE);
set_hitbox_value(AT_DSTRONG, 12, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_DSTRONG, 13, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 13, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_DSTRONG, 13, HG_WINDOW, 6);
set_hitbox_value(AT_DSTRONG, 13, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 13, HG_HITBOX_X, -5);
set_hitbox_value(AT_DSTRONG, 13, HG_HITBOX_Y, -60);
set_hitbox_value(AT_DSTRONG, 13, HG_WIDTH, 100);
set_hitbox_value(AT_DSTRONG, 13, HG_HEIGHT, 55);
set_hitbox_value(AT_DSTRONG, 13, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 13, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 13, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 13, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 13, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 13, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 13, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 13, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 13, HG_VISUAL_EFFECT, HFX_KRA_ROCK_HUGE);
set_hitbox_value(AT_DSTRONG, 13, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));


