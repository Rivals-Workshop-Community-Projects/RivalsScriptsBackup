atk = AT_FAIR;

set_attack_value(atk, AG_CATEGORY, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("fair"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 8);

window_num = 1; //initial windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 4);

window_num ++;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_spin"));

window_num ++;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8);

window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 30);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -30);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 70);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 60);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 1);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 82);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(atk, hitbox_num, HG_SDI_MULTIPLIER, 0.7);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, HFX_MAY_LEAF_BIG);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 3);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 30);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -30);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 70);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 60);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 5);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 40);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, HFX_MAY_WHIP);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));

set_num_hitboxes(atk, hitbox_num);

hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 30);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -45);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 50);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 80);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 5);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 70);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 304);
// var first_x = 32
// var first_y = -16

// var second_x = 60
// var second_y = -2

// var third_x = 94
// var third_y = 14

// var tip_priority = 3
// var tip_angle = 40
// var tip_damage = 9
// var tip_bkb = 6
// var tip_kbs = 0.6
// var tip_width = 54
// var tip_height = 50
// var tip_bhp = 7
// var tip_hps = 0.4

// var rope_priority = 2
// var rope_angle = 60
// var rope_damage = 7
// var rope_bkb = 6
// var rope_kbs = 0.3
// var rope_width = 40
// var rope_height = 30
// var rope_bhp = 4
// var rope_hps = 0.2

// //first frame
// var frame = 0
// hitbox_num = 1;
// set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
// set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
// set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
// set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, frame);
// set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 1);
// set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, first_x);
// set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, first_y);
// set_hitbox_value(atk, hitbox_num, HG_WIDTH, tip_width);
// set_hitbox_value(atk, hitbox_num, HG_HEIGHT, tip_height);
// set_hitbox_value(atk, hitbox_num, HG_PRIORITY, tip_priority);
// set_hitbox_value(atk, hitbox_num, HG_DAMAGE, tip_damage);
// set_hitbox_value(atk, hitbox_num, HG_ANGLE, tip_angle);
// set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, tip_bkb);
// set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, tip_kbs);
// set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, tip_bhp);
// set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, tip_hps);
// set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
// set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

// //second frame
// hitbox_num ++;
// frame = 1
// set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
// set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
// set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
// set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, frame);
// set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 1);
// set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, first_x);
// set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, first_y);
// set_hitbox_value(atk, hitbox_num, HG_WIDTH, rope_width);
// set_hitbox_value(atk, hitbox_num, HG_HEIGHT, rope_height);
// set_hitbox_value(atk, hitbox_num, HG_PRIORITY, rope_priority);
// set_hitbox_value(atk, hitbox_num, HG_DAMAGE, rope_damage);
// set_hitbox_value(atk, hitbox_num, HG_ANGLE, rope_angle);
// set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, rope_bkb);
// set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, rope_kbs);
// set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, rope_bhp);
// set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, rope_hps);
// set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
// set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

// hitbox_num ++;
// set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
// set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
// set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
// set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, frame);
// set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 1);
// set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, second_x);
// set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, second_y);
// set_hitbox_value(atk, hitbox_num, HG_WIDTH, tip_width);
// set_hitbox_value(atk, hitbox_num, HG_HEIGHT, tip_height);
// set_hitbox_value(atk, hitbox_num, HG_PRIORITY, tip_priority);
// set_hitbox_value(atk, hitbox_num, HG_DAMAGE, tip_damage);
// set_hitbox_value(atk, hitbox_num, HG_ANGLE, tip_angle);
// set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, tip_bkb);
// set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, tip_kbs);
// set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, tip_bhp);
// set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, tip_hps);
// set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
// set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

// //third frame
// hitbox_num ++;
// frame = 2
// set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
// set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
// set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
// set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, frame);
// set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 1);
// set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, first_x);
// set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, first_y);
// set_hitbox_value(atk, hitbox_num, HG_WIDTH, rope_width);
// set_hitbox_value(atk, hitbox_num, HG_HEIGHT, rope_height);
// set_hitbox_value(atk, hitbox_num, HG_PRIORITY, rope_priority);
// set_hitbox_value(atk, hitbox_num, HG_DAMAGE, rope_damage);
// set_hitbox_value(atk, hitbox_num, HG_ANGLE, rope_angle);
// set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, rope_bkb);
// set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, rope_kbs);
// set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, rope_bhp);
// set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, rope_hps);
// set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
// set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

// hitbox_num ++;
// set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
// set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
// set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
// set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, frame);
// set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 1);
// set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, second_x);
// set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, second_y);
// set_hitbox_value(atk, hitbox_num, HG_WIDTH, rope_width);
// set_hitbox_value(atk, hitbox_num, HG_HEIGHT, rope_height);
// set_hitbox_value(atk, hitbox_num, HG_PRIORITY, rope_priority);
// set_hitbox_value(atk, hitbox_num, HG_DAMAGE, rope_damage);
// set_hitbox_value(atk, hitbox_num, HG_ANGLE, rope_angle);
// set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, rope_bkb);
// set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, rope_kbs);
// set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, rope_bhp);
// set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, rope_hps);
// set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
// set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

// hitbox_num ++;
// set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
// set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
// set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
// set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, frame);
// set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 1);
// set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, third_x);
// set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, third_y);
// set_hitbox_value(atk, hitbox_num, HG_WIDTH, tip_width);
// set_hitbox_value(atk, hitbox_num, HG_HEIGHT, tip_height);
// set_hitbox_value(atk, hitbox_num, HG_PRIORITY, tip_priority);
// set_hitbox_value(atk, hitbox_num, HG_DAMAGE, tip_damage);
// set_hitbox_value(atk, hitbox_num, HG_ANGLE, tip_angle);
// set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, tip_bkb);
// set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, tip_kbs);
// set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, tip_bhp);
// set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, tip_hps);
// set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
// set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
