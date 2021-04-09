set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 7);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

// Hit One
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HSPEED, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_bird_nspecial"));

// Hit Two
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);

// Multihits
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);

// Almost There...
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 8);

// Final Hits
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 9);

// Endlag
set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 8);

// Hit One
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 29);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -17);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 55);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 58);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 115);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING,  .05);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_ori_seinhit_weak"));
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 2);
set_hitbox_value(AT_USTRONG, 1, HG_TECHABLE, 1);

// Hit Two
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, -14);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -51);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 55);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 58);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_ori_seinhit_weak"));
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 2);
set_hitbox_value(AT_USTRONG, 2, HG_TECHABLE, 1);

// Mutlihits
// Climbing up to big hit
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 11);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -59 );
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 61);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 62);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 110);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .15);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_ori_seinhit_medium"));
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 3, HG_TECHABLE, 1);

set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 11);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -59);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 61);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 62);
set_hitbox_value(AT_USTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 110);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, .15);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_ori_seinhit_weak"));
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 4, HG_TECHABLE, 1);

// Bigger Hit
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 3);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -76);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 85);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 61);
set_hitbox_value(AT_USTRONG, 5, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 110);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, asset_get("sfx_ori_seinhit_medium"));
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 5, HG_TECHABLE, 1);

set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_X, 3);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_Y, -76);
set_hitbox_value(AT_USTRONG, 6, HG_WIDTH, 85);
set_hitbox_value(AT_USTRONG, 6, HG_HEIGHT, 61);
set_hitbox_value(AT_USTRONG, 6, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 6, HG_ANGLE, 110);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 6, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_USTRONG, 6, HG_HIT_SFX, asset_get("sfx_ori_seinhit_weak"));
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_USTRONG, 6, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 6, HG_TECHABLE, 1);

// Final Hits
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 7, HG_WINDOW, 6);
set_hitbox_value(AT_USTRONG, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_Y, -84);
set_hitbox_value(AT_USTRONG, 7, HG_WIDTH, 126);
set_hitbox_value(AT_USTRONG, 7, HG_HEIGHT, 51);
set_hitbox_value(AT_USTRONG, 7, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 7, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 7, HG_ANGLE, 110);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USTRONG, 7, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USTRONG, 7, HG_HIT_SFX, asset_get("sfx_ori_seinhit_medium"));
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_GROUP, 6);
set_hitbox_value(AT_USTRONG, 7, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 7, HG_TECHABLE, 1);

// In The Finale
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 8, HG_WINDOW, 6);
set_hitbox_value(AT_USTRONG, 8, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG, 8, HG_LIFETIME, 8);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_X, 3);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_Y, -87);
set_hitbox_value(AT_USTRONG, 8, HG_WIDTH, 101);
set_hitbox_value(AT_USTRONG, 8, HG_HEIGHT, 50);
set_hitbox_value(AT_USTRONG, 8, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 8, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 8, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 8, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 8, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 8, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 8, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_USTRONG, 8, HG_HIT_SFX, asset_get("sfx_ori_seinhit_heavy"));
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_GROUP, 7);
set_hitbox_value(AT_USTRONG, 8, HG_ANGLE_FLIPPER, 0);
