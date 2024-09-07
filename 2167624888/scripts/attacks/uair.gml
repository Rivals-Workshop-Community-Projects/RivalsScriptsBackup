set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

//length 7->8
set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -1.5);

//length 4->6
set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_UAIR,3);

//EARLY
set_hitbox_value(AT_UAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 65);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UAIR, 1, HG_HITSTUN_MULTIPLIER, 0.85);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//PEAK
set_hitbox_value(AT_UAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 12);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 74);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//SOURSPOT LATE
set_hitbox_value(AT_UAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, -18);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -74);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 46);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UAIR, 3, HG_HITSTUN_MULTIPLIER, 0.85);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

// //SWEETSPOT LATE
// set_hitbox_value(AT_UAIR, 4, HG_PARENT_HITBOX, 4);
// set_hitbox_value(AT_UAIR, 4, HG_SHAPE, 0);
// set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 4);
// set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, -33);
// set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -47);
// set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 34);
// set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 67);
// set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 3);
// set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 4);
// set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 1);
// set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 4);
// set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 120);
// set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 8);
// set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, .5);
// set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 5);
// set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, .2);
// set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
// set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
// set_hitbox_value(AT_UAIR, 4, HG_ANGLE_FLIPPER, 6);

