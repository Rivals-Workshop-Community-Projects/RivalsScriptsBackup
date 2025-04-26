set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

var dairActiveTimePerHB = 3;

// startup
set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -1.5);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 6);

// active 1 and 2, incl inbetween 2 and 3
set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, dairActiveTimePerHB * 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

// active 3, incl inbetween 3 and 4
set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, dairActiveTimePerHB * 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);

// active 4
set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, dairActiveTimePerHB);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);

// endlag
set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 4);

var dairMultihitBKB = 5;
var dairMultihitDMG = 2;
var dairMultihitHBWDTH = 44
var dairMultihitHBHIG = 50;
var dairMultihitShape = 2;
var dairMultihitHitstunMult = 0.85;
var dairMultihitBHP = 3;
var dairMultihitSDIMult = 1;

// 1st Hit
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_MUNO_HITBOX_NAME, "Multihit 1");
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, dairActiveTimePerHB);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 4);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, dairMultihitHBWDTH);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, dairMultihitHBHIG);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, dairMultihitShape);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, dairMultihitDMG);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, dairMultihitBKB);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, dairMultihitBHP);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITSTUN_MULTIPLIER, dairMultihitHitstunMult);
set_hitbox_value(AT_DAIR, 1, HG_SDI_MULTIPLIER, dairMultihitSDIMult);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 301);
// set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);

// 2nd Hit
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_MUNO_HITBOX_NAME, "Multihit 2");
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, dairActiveTimePerHB * 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, dairActiveTimePerHB);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 4);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, dairMultihitHBWDTH);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, dairMultihitHBHIG);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, dairMultihitShape);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, dairMultihitDMG);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 70);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, dairMultihitBKB);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, dairMultihitBHP);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, dairMultihitHitstunMult);
set_hitbox_value(AT_DAIR, 2, HG_SDI_MULTIPLIER, dairMultihitSDIMult);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 301);
// set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 2);

// 3rd Hit
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_MUNO_HITBOX_NAME, "Multihit 3");
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, dairActiveTimePerHB);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, 4);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, dairMultihitHBWDTH);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, dairMultihitHBHIG);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, dairMultihitShape);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, dairMultihitDMG);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 70);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, dairMultihitBKB);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, dairMultihitBHP);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 3, HG_HITSTUN_MULTIPLIER, dairMultihitHitstunMult);
set_hitbox_value(AT_DAIR, 3, HG_SDI_MULTIPLIER, dairMultihitSDIMult);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 301);
// set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DAIR, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 3);

// Finishing Hitbox
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_MUNO_HITBOX_NAME, "Finishing Hitbox");
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, dairActiveTimePerHB);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, 4);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, dairMultihitHBWDTH);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, dairMultihitHBHIG);
set_hitbox_value(AT_DAIR, 4, HG_SHAPE, dairMultihitShape);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, dairMultihitDMG + 3);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 50);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 4, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT, 304);
// set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DAIR, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 4);