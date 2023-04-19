set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 10);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);

//startup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_bird_nspecial"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 11);

//active/rising
set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_bird_nspecial"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 23);

//inbetween normal and finishing
set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 11);

//final hit
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 12);

//endlag
set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_GOTO, 11);

//Enhanced Transition
set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 15);

//active/rising (ENHANCED)
set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_SFX, asset_get("sfx_bird_nspecial"));
set_window_value(AT_USPECIAL, 7, AG_WINDOW_SFX_FRAME, 23);

//inbetween normal and finishing (ENHANCED)
set_window_value(AT_USPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 25);

//final hit (ENHANCED)
set_window_value(AT_USPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 26);

//endlag (ENHANCED)
set_window_value(AT_USPECIAL, 10, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 28);

set_num_hitboxes(AT_USPECIAL, 14);

// ==========

//Window 2 Multihit Hitboxes
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 95);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, hfx_wind_small);

set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -15);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -15);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, -1);

//finisher
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, 3);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, -21);
set_hitbox_value(AT_USPECIAL, 7, HG_WIDTH, 120);
set_hitbox_value(AT_USPECIAL, 7, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL, 7, HG_PRIORITY, 8);
set_hitbox_value(AT_USPECIAL, 7, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 7, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USPECIAL, 7, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USPECIAL, 7, HG_VISUAL_EFFECT, hfx_wind_large);
set_hitbox_value(AT_USPECIAL, 7, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_GROUP, -1);

//Window 2 Multihit Hitboxes (ENHANCED)
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 8, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_Y, -21);
set_hitbox_value(AT_USPECIAL, 8, HG_WIDTH, 110);
set_hitbox_value(AT_USPECIAL, 8, HG_HEIGHT, 95);
set_hitbox_value(AT_USPECIAL, 8, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 8, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 8, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 8, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 8, HG_VISUAL_EFFECT, hfx_wind_large);

set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 9, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL, 9, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL, 9, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_Y, -21);
set_hitbox_value(AT_USPECIAL, 9, HG_WIDTH, 110);
set_hitbox_value(AT_USPECIAL, 9, HG_HEIGHT, 95);
set_hitbox_value(AT_USPECIAL, 9, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 9, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 9, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 9, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_USPECIAL, 9, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 9, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 9, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 9, HG_VISUAL_EFFECT, hfx_wind_large);

set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 10, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL, 10, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USPECIAL, 10, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_Y, -21);
set_hitbox_value(AT_USPECIAL, 10, HG_WIDTH, 110);
set_hitbox_value(AT_USPECIAL, 10, HG_HEIGHT, 95);
set_hitbox_value(AT_USPECIAL, 10, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 10, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 10, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 10, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_USPECIAL, 10, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 10, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 10, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 10, HG_VISUAL_EFFECT, hfx_wind_large);

set_hitbox_value(AT_USPECIAL, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 11, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL, 11, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_USPECIAL, 11, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 11, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL, 11, HG_HITBOX_Y, -21);
set_hitbox_value(AT_USPECIAL, 11, HG_WIDTH, 110);
set_hitbox_value(AT_USPECIAL, 11, HG_HEIGHT, 95);
set_hitbox_value(AT_USPECIAL, 11, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 11, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 11, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 11, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_USPECIAL, 11, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 11, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 11, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USPECIAL, 11, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 11, HG_VISUAL_EFFECT, hfx_wind_large);

//finisher
set_hitbox_value(AT_USPECIAL, 14, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 14, HG_WINDOW, 9);
set_hitbox_value(AT_USPECIAL, 14, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL, 14, HG_HITBOX_X, 2);
set_hitbox_value(AT_USPECIAL, 14, HG_HITBOX_Y, -19);
set_hitbox_value(AT_USPECIAL, 14, HG_WIDTH, 135);
set_hitbox_value(AT_USPECIAL, 14, HG_HEIGHT, 100);
set_hitbox_value(AT_USPECIAL, 14, HG_PRIORITY, 8);
set_hitbox_value(AT_USPECIAL, 14, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 14, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 14, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 14, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 14, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USPECIAL, 14, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_USPECIAL, 14, HG_VISUAL_EFFECT, hfx_wind_huge);
set_hitbox_value(AT_USPECIAL, 14, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL, 14, HG_HITBOX_GROUP, -1);