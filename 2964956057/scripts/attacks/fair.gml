set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 9);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 3);

// first frame's sweetspot (only hits in the air)
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 53);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, 4);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 45);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 1.4);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, xlarge_wood_hfx);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FAIR, 1, HG_EXTRA_CAMERA_SHAKE, 2);

// first frame's sourspot
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 50);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -37);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 65);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 118);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, has_rune("J")? 270:50);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, has_rune("J")? 4:7);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, large_wood_hfx);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 28);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -100);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 30);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 20);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, has_rune("J")? 270:50);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, has_rune("J")? 4:7);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, large_wood_hfx);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

// // second frame
// set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 3);
// set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 3);
// set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 3);
// set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 30);
// set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, 10);
// set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 55);
// set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 55);
// set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 5);
// set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 4);
// set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 270);
// set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 7);
// set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .7);
// set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 9);
// set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .9);
// set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));