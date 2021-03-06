set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sound_get("servo_quick"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

// set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 4);
// set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
// set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 4);
// set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 2);

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, -9);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 106);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 57);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 7);

set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 3);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -51);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 44);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 72);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 0);


// set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
// set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
// set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 0);
// set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -44);
// set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 46);
// set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 68);
// set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
// set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 0);
// set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 3);
// set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 70);
// set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 5);
// set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .2);
// set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 5);
// set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .2);
// set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 0);
// set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
// //set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 9);

// set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
// set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 2);
// set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, -23);
// set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -22);
// set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 50);
// set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 40);
// set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
// set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 0);
// set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 5);
// set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 60);
// set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 5);
// set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .3);
// set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 5);
// set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, .3);
// set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 0);
// set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
// set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 0);

// set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 4);
// set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 2);
// set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, -21);
// set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -16);
// set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 55);
// set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 36);
// set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1);
// set_hitbox_value(AT_NAIR, 3, HG_SHAPE, 0);
// set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 5);
// set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 60);
// set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 5);
// set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, .3);
// set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 5);
// set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, .3);
// set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, 0);
// set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
// set_hitbox_value(AT_NAIR, 3, HG_ANGLE_FLIPPER, 0);
