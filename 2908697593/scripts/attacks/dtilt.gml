set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 5)
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 5);
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, sound_get("isaac_stomp_02"));
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT, 2);

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 7);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 42);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 64);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 74);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, -90);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 1.6);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, 3);
set_hitbox_value(AT_DTILT, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, sound_get("isaac_kick_02"));