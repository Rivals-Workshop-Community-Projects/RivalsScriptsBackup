set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 9);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

//Jab 1
set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("sfx_fj_sword_swipe_weak1"));

set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 4)
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1)

//Jab 2
set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 4, AG_WINDOW_HSPEED, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_JAB, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 3);

//Jab 2
set_window_value(AT_JAB, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 15);

set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med1"));
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_JAB, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED, 7);
set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_JAB, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 27);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 18);

set_num_hitboxes(AT_JAB, 5);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 34);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 75);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 60);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1)
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 70);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 40);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 2, HG_FORCE_FLINCH, 1)
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, vfx_hand_spin_small)

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 32);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 70);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 40);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 3, HG_FORCE_FLINCH, 1)
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, vfx_hand_spin_small)

set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 32);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 70);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 50);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT, vfx_hand_spin)

set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 62);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -43);
set_hitbox_value(AT_JAB, 5, HG_WIDTH, 100);
set_hitbox_value(AT_JAB, 5, HG_HEIGHT, 45);
set_hitbox_value(AT_JAB, 5, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_JAB, 5, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 5, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_JAB, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 5, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_JAB, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_JAB, 5, HG_VISUAL_EFFECT, HFX_GEN_BIG)
set_hitbox_value(AT_JAB, 5, HG_HITBOX_GROUP, 3);
