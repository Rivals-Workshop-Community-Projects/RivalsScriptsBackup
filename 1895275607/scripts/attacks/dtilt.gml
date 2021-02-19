set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DTILT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_DTILT, 1);

//set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 3);
//set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 2);
//set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 1);
//set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 33);
//set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -26);
//set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 81);
//set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 32);
//set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 0);
//set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
//set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 2);
//set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 80);
//set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .5);
//set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 5);
//set_hitbox_value(AT_DTILT, 1, HG_EXTRA_HITPAUSE, 5);
//set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .35);
//set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 5);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 36);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 71);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 12); // 10
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 35);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_DTILT, 1, HG_DRIFT_MULTIPLIER, .5);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 1, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_bite"));
