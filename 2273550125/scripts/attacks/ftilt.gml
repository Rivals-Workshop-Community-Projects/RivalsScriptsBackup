set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FTILT, AG_CATEGORY, 0);

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT, 4);

set_hitbox_value(AT_FTILT, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW, 1);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FTILT, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_X, 24);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FTILT, 4, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 4, HG_WIDTH, 48);
set_hitbox_value(AT_FTILT, 4, HG_HEIGHT, 32);
set_hitbox_value(AT_FTILT, 4, HG_PRIORITY, 10);
set_hitbox_value(AT_FTILT, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_FTILT, 4, HG_ANGLE, 70);
set_hitbox_value(AT_FTILT, 4, HG_BASE_KNOCKBACK, 4.0);
set_hitbox_value(AT_FTILT, 4, HG_KNOCKBACK_SCALING, 0.375);
set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FTILT, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FTILT, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FTILT, 4, HG_HITPAUSE_SCALING, 1.0);

set_hitbox_value(AT_FTILT, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 48);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 75);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 4.0);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0.375);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FTILT, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 1.0);


set_hitbox_value(AT_FTILT, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 38);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 48);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 80);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 4.0);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 0.375);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FTILT, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 1.0);


set_hitbox_value(AT_FTILT, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 4);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 42);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FTILT, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 48);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 85);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 4.0);
set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, 0.375);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FTILT, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FTILT, 3, HG_HITPAUSE_SCALING, 1.0);