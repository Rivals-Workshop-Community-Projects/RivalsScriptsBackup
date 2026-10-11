set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, sound_get("splatling_start"));
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 28);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, -3);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_FSTRONG, 9);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 55);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 41);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 1); 
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, fx_sweetspot);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSTRONG, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 50);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSTRONG, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 50);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSTRONG, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 50);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_X, 58);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSTRONG, 5, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_WIDTH, 72);
set_hitbox_value(AT_FSTRONG, 5, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_DAMAGE, 6); 
set_hitbox_value(AT_FSTRONG, 5, HG_ANGLE, 50);
set_hitbox_value(AT_FSTRONG, 5, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 5, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_FSTRONG, 5, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSTRONG, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_X, 50);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSTRONG, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 7, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 7, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_X, 50);
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSTRONG, 8, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 8, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 8, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSTRONG, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 8, HG_HITBOX_X, 50);
set_hitbox_value(AT_FSTRONG, 8, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSTRONG, 8, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSTRONG, 9, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 9, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 9, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_FSTRONG, 9, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 9, HG_HITBOX_X, 50);
set_hitbox_value(AT_FSTRONG, 9, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSTRONG, 9, HG_HITBOX_GROUP, -1);