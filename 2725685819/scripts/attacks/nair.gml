set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 9);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

//NAIR 1

set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 9);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

//active 1
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//recovery 1
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
//set_window_value(AT_NAIR, 3, AG_WINDOW_CANCEL_TYPE, 1);

//NAIR 2

set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 4); // 6
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_NAIR, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

//active 2
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);

//recovery 2
set_window_value(AT_NAIR, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAMES, 2);
//set_window_value(AT_NAIR, 6, AG_WINDOW_CANCEL_TYPE, 1);

//NAIR 3

set_window_value(AT_NAIR, 7, AG_WINDOW_LENGTH, 4); // 6
set_window_value(AT_NAIR, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NAIR, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 7, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_NAIR, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

//active 3
set_window_value(AT_NAIR, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 8, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_NAIR, 8, AG_WINDOW_ANIM_FRAMES, 1);

//recovery 3
set_window_value(AT_NAIR, 9, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NAIR, 9, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_NAIR, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 9, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_NAIR, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 9, AG_WINDOW_SFX, sound_get("saya"));
set_window_value(AT_NAIR, 9, AG_WINDOW_SFX_FRAME, 0);

set_num_hitboxes(AT_NAIR, 3);

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 90);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 3); // 8
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 75);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_NAIR, 1, HG_HITSTUN_MULTIPLIER, 0.65);
set_hitbox_value(AT_NAIR, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_NAIR, 1, HG_CHAOS_LEVEL, -1);
// set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 5);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 90);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 65);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 3); // 8
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 75);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_NAIR, 2, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_NAIR, 2, HG_CHAOS_LEVEL, -1);
//set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 8);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 50);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 100);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 4); // 8
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_NAIR, 3, HG_ANGLE_FLIPPER, 0);