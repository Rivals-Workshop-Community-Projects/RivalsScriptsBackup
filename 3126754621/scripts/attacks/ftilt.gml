set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 6);

//grab
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 10000);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_GOTO, 9);

//shield bash
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FTILT, 4, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_FTILT, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT, 5);

//melee grab
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 1000);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 50);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FTILT, 1, HG_EXTRA_HITPAUSE, 20);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 1, HG_HIT_LOCKOUT, 8);

//shield bash default
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 55);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 50);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 2);

//shield bash wing
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 0);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 75);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 70);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 100);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 8);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, 2);

//shield bash ruby
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW, 0);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTILT, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_X, 65);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FTILT, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 4, HG_WIDTH, 70);
set_hitbox_value(AT_FTILT, 4, HG_HEIGHT, 80);
set_hitbox_value(AT_FTILT, 4, HG_PRIORITY, 8);
set_hitbox_value(AT_FTILT, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_FTILT, 4, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FTILT, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTILT, 4, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FTILT, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT, HFX_MOL_BOOM_FLARE);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FTILT, 4, HG_EFFECT, 1);

//shield bash bomb
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 5, HG_WINDOW, 0);
set_hitbox_value(AT_FTILT, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTILT, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_X, 65);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FTILT, 5, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 5, HG_WIDTH, 70);
set_hitbox_value(AT_FTILT, 5, HG_HEIGHT, 80);
set_hitbox_value(AT_FTILT, 5, HG_PRIORITY, 8);
set_hitbox_value(AT_FTILT, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_FTILT, 5, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FTILT, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FTILT, 5, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FTILT, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 5, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FTILT, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FTILT, 5, HG_VISUAL_EFFECT, HFX_ELL_BOOM_BIG);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_GROUP, 2);