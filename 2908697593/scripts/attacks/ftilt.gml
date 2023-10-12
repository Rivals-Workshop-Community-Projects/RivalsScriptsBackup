set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 5);

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 7);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, sound_get("isaac_swing_02"));
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT,2);

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 35);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 70);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, sound_get("isaac_kick_03"));
set_hitbox_value(AT_FTILT, 2, HG_EXTRA_CAMERA_SHAKE, 2);