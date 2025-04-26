set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_NAIR,AG_MUNO_ATTACK_NAME, "NAir: Spinning Shell Slide");
set_attack_value(AT_NAIR, AG_MUNO_ATTACK_MISC, "Landing during this move's active frames will continue the attack.
After the final hitbox of this move while you're grounded, you'll pop up with a weak jump. Goes slightly higher if you hit with the finisher.
If you landed the finisher, you can also cancel the endlag of this move with any other aerial that isn't Neutral Air.");


// startup
set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 4);

var nairActiveHBFrames = 3;

// active spin air 1
set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, nairActiveHBFrames * 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

// active spin air 2
set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, nairActiveHBFrames * 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

// active spin air 3 (finisher)
set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, nairActiveHBFrames * 2);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);

// endlag
set_window_value(AT_NAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

// active spin ground 1
set_window_value(AT_NAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 6, AG_WINDOW_LENGTH, nairActiveHBFrames * 2);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAME_START, 7);

// active spin ground 2
set_window_value(AT_NAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 7, AG_WINDOW_LENGTH, nairActiveHBFrames * 2);
set_window_value(AT_NAIR, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 7, AG_WINDOW_ANIM_FRAME_START, 7);

// active spin ground 3 (finisher)
set_window_value(AT_NAIR, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 8, AG_WINDOW_LENGTH, nairActiveHBFrames * 2);
set_window_value(AT_NAIR, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 8, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(AT_NAIR, 6);


// There is a method to my madness.
// I am sorry if you are looking at the code for this character LOL

var nairMultihitBKB = 5;
var nairMultihitKBS = 0;
var nairMultihitDMG = 2;
var nairMultihitAngle = 40;
var nairMultihitAngleFlip = 9;
var nairMultihitBHP = 3;
var nairMultihitHPS = 0.2;
var nairMultihitHitVFX = 302;
var nairMultihitHitSFX = asset_get("sfx_blow_weak1");

var nairFinisherBKB = 8;
var nairFinisherKBS = 0.55;
var nairFinisherDMG = 6;
var nairFinisherAngle = 55;
var nairFinisherAngleFlip = 0;
var nairFinisherBHP = 7;
var nairFinisherHPS = 0.5;


// Air Multihit 1
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_MUNO_HITBOX_NAME, "Air Multihit 1");
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, nairActiveHBFrames);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, nairMultihitDMG);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, nairMultihitAngle);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, nairMultihitBKB);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, nairMultihitKBS);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, nairMultihitBHP);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, nairMultihitHPS);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, nairMultihitHitVFX);
//set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
//set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, nairMultihitHitSFX);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, nairMultihitAngleFlip);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);

// Air Multihit 2
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_MUNO_HITBOX_NAME, "Air Multihit 2");
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, nairActiveHBFrames);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, nairMultihitDMG);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, nairMultihitAngle);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, nairMultihitBKB);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, nairMultihitKBS);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, nairMultihitBHP);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, nairMultihitHPS);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, nairMultihitHitVFX);
//set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
//set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, nairMultihitHitSFX);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, nairMultihitAngleFlip);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 2);

// Air Finisher
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_MUNO_HITBOX_NAME, "Air Finisher");
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, nairActiveHBFrames * 2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 56);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 56);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, nairFinisherDMG);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, nairFinisherAngle);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, nairMultihitBKB);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, nairFinisherKBS);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, nairFinisherBHP);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, nairFinisherHPS);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, vfx_shell_hit_med);
//set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
//set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NAIR, 3, HG_ANGLE_FLIPPER, nairFinisherAngleFlip);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 3);


// Ground Multihit 1
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_MUNO_HITBOX_NAME, "Air Multihit 1");
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 6);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, nairActiveHBFrames);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 66);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, nairMultihitDMG);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, nairMultihitAngle);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, nairMultihitBKB);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, nairMultihitKBS);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, nairMultihitBHP);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, nairMultihitHPS);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, nairMultihitHitVFX);
set_hitbox_value(AT_NAIR, 4, HG_TECHABLE, 3); // trolled!
//set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
//set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, nairMultihitHitSFX);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE_FLIPPER, nairMultihitAngleFlip);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 1);

// Ground Multihit 2
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_MUNO_HITBOX_NAME, "Ground Multihit 2");
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 7);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, nairActiveHBFrames);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 66);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 40);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, nairMultihitDMG);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, nairMultihitAngle);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, nairMultihitBKB);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, nairMultihitKBS);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, nairMultihitBHP);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, nairMultihitHPS);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT, nairMultihitHitVFX);
set_hitbox_value(AT_NAIR, 5, HG_TECHABLE, 3); // trolled!
//set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
//set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, nairMultihitHitSFX);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE_FLIPPER, nairMultihitAngleFlip);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, 2);

// Ground Finisher
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 6, HG_MUNO_HITBOX_NAME, "Ground Finisher");
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 8);
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, nairActiveHBFrames * 2);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, 2);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 6, HG_WIDTH, 72);
set_hitbox_value(AT_NAIR, 6, HG_HEIGHT, 46);
set_hitbox_value(AT_NAIR, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 6, HG_DAMAGE, nairFinisherDMG);
set_hitbox_value(AT_NAIR, 6, HG_ANGLE, nairFinisherAngle);
set_hitbox_value(AT_NAIR, 6, HG_BASE_KNOCKBACK, nairMultihitBKB);
set_hitbox_value(AT_NAIR, 6, HG_KNOCKBACK_SCALING, nairFinisherKBS);
set_hitbox_value(AT_NAIR, 6, HG_BASE_HITPAUSE, nairFinisherBHP);
set_hitbox_value(AT_NAIR, 6, HG_HITPAUSE_SCALING, nairFinisherHPS);
set_hitbox_value(AT_NAIR, 6, HG_VISUAL_EFFECT, vfx_shell_hit_med);
//set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
//set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NAIR, 6, HG_ANGLE_FLIPPER, nairFinisherAngleFlip);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_GROUP, 3);