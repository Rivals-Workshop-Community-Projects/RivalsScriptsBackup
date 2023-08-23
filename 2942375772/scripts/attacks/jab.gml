set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 3);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_JAB, AG_NO_PARRY_STUN, 1);

set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_bite"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

// set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 1);
// set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 4);
// set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
// set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 7);
// set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
// set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 2);

// set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 1);
// set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 2);
// set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
// set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 8);

// set_window_value(AT_JAB, 6, AG_WINDOW_TYPE, 1);
// set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 12);
// set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 3);
// set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 9);

set_num_hitboxes(AT_JAB, 2);


set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 64);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 60); // 50 -> 60
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_crunch"));