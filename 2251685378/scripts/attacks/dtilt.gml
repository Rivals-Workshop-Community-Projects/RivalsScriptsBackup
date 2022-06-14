//Down tilt
set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);

set_num_hitboxes(AT_DTILT, 1);

//Startup
set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);

//Attack
set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

//Follow through
set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


//Hitbox 1
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 130);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 75);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 1.5);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
