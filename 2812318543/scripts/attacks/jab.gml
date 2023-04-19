set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 10);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

//hit 1
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 6);

//hit 2
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 8);

//hit 3
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 3);
//stab
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_JAB, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_SFX, sound_get("sfx_slash_m"));
set_window_value(AT_JAB, 8, AG_WINDOW_SFX_FRAME, 3);
//swing
set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 14);

set_window_value(AT_JAB, 10, AG_WINDOW_LENGTH, 20);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAME_START, 16);


set_num_hitboxes(AT_JAB, 6);
//1
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 41);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -37);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 92);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 54);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 85);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_JAB, 1, HG_HITSTUN_MULTIPLIER, 1.4);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
//2
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 44);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -37);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 100);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 91);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 80);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 1);
//3 stab
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 62);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -23);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 100);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 35);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 75);
set_hitbox_value(AT_JAB, 3, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 2);
//3 sweet
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 9);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 57);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -43);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 92);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 65);
set_hitbox_value(AT_JAB, 4, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 85);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 4, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 4, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, 3);
//3 sour front
set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 9);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 16);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -85);
set_hitbox_value(AT_JAB, 5, HG_WIDTH, 128);
set_hitbox_value(AT_JAB, 5, HG_HEIGHT, 83);
set_hitbox_value(AT_JAB, 5, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 5, HG_ANGLE, 70);
set_hitbox_value(AT_JAB, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_JAB, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 5, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_JAB, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 5, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_JAB, 5, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_JAB, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB, 5, HG_HITBOX_GROUP, 3);
//3 sour back
set_hitbox_value(AT_JAB, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 6, HG_WINDOW, 9);
set_hitbox_value(AT_JAB, 6, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_JAB, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_X, -47);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_Y, -48);
set_hitbox_value(AT_JAB, 6, HG_WIDTH, 80);
set_hitbox_value(AT_JAB, 6, HG_HEIGHT, 98);
set_hitbox_value(AT_JAB, 6, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_JAB, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 6, HG_ANGLE, 70);
set_hitbox_value(AT_JAB, 6, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_JAB, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 6, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_JAB, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 6, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_JAB, 6, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_JAB, 6, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB, 6, HG_HITBOX_GROUP, 3);