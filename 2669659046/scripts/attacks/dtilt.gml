set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 12); // 10
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT, 5);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 61);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 17);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 7); // 7
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DTILT, 1, HG_ANGLE_FLIPPER, 3);

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, -43);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -6);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 29);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 27);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 4); // 7
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DTILT, 2, HG_ANGLE_FLIPPER, 3);

set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 46);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 29);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 27);
set_hitbox_value(AT_DTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 4); // 7
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 45);
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 3, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DTILT, 3, HG_ANGLE_FLIPPER, 3);

set_hitbox_value(AT_DTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_X, -40);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_Y, -11);
set_hitbox_value(AT_DTILT, 4, HG_WIDTH, 29);
set_hitbox_value(AT_DTILT, 4, HG_HEIGHT, 36);
set_hitbox_value(AT_DTILT, 4, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_DTILT, 4, HG_DAMAGE, 7); // 7
set_hitbox_value(AT_DTILT, 4, HG_ANGLE, 45);
set_hitbox_value(AT_DTILT, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 4, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DTILT, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 4, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DTILT, 4, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DTILT, 4, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DTILT, 4, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DTILT, 4, HG_WINDOW_CREATION_FRAME, 4);

set_hitbox_value(AT_DTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_X, 40);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_Y, -11);
set_hitbox_value(AT_DTILT, 5, HG_WIDTH, 29);
set_hitbox_value(AT_DTILT, 5, HG_HEIGHT, 36);
set_hitbox_value(AT_DTILT, 5, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_DTILT, 5, HG_DAMAGE, 7); // 7
set_hitbox_value(AT_DTILT, 5, HG_ANGLE, 45);
set_hitbox_value(AT_DTILT, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 5, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DTILT, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 5, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DTILT, 5, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DTILT, 5, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DTILT, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DTILT, 5, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DTILT, 5, HG_WINDOW_CREATION_FRAME, 4);