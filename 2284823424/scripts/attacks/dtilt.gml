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
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT, 1);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 48);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 40); // 75
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 4); // 6
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .3); // .3
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 5); // 6
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .3); // .5
set_hitbox_value(AT_DTILT, 1, HG_TECHABLE, 3); // 0
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));