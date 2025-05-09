set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_light2"));

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 7);

//HITBOXES
set_num_hitboxes(AT_DSTRONG, 4);

set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 12);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, 0.9);

set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 135);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 270);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 102);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, -60);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 90);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 20);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 121);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -17);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 14);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 35);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, -121);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -17);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 14);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 35);

set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 0);

set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 3);

set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, 1);

set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 8);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 4);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 2);

set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSTRONG, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSTRONG, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSTRONG, 3, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSTRONG, 4, HG_EXTRA_CAMERA_SHAKE, 1);

set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, 1.0);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);

//MunoPhone Touch
set_hitbox_value(AT_DSTRONG, 1, HG_MUNO_HITBOX_NAME, "Right");
set_hitbox_value(AT_DSTRONG, 2, HG_MUNO_HITBOX_NAME, "Right Tip");
set_hitbox_value(AT_DSTRONG, 3, HG_MUNO_HITBOX_NAME, "Left");
set_hitbox_value(AT_DSTRONG, 4, HG_MUNO_HITBOX_NAME, "Left Tip");
