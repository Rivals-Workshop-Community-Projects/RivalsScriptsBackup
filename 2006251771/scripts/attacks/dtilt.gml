set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_DTILT, 2);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 39);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -4);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 62);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 18);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 75);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 29);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -4);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 42);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 18);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 75);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
