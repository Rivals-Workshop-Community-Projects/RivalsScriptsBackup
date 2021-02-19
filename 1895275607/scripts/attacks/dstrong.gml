set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 8);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
//set_attack_value(AT_DSTRONG, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, 26);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 9);

set_hitbox_value(AT_DSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, -5);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 78);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 1);
//set_hitbox_value(AT_DSTRONG, 1, HG_EXTRA_HITPAUSE, 999);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -5);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSTRONG, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, -5);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSTRONG, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, -5);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_DSTRONG, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, -5);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_DSTRONG, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, -5);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_DSTRONG, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_WINDOW, 6);
set_hitbox_value(AT_DSTRONG, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_X, -5);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_GROUP, 6);

set_hitbox_value(AT_DSTRONG, 8, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 8, HG_WINDOW, 6);
set_hitbox_value(AT_DSTRONG, 8, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSTRONG, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_X, -5);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_GROUP, 7);

//set_hitbox_value(AT_DSTRONG, 9, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 9, HG_WINDOW, 7);
set_hitbox_value(AT_DSTRONG, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 9, HG_HITBOX_X, -5);
set_hitbox_value(AT_DSTRONG, 9, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DSTRONG, 9, HG_WIDTH, 78);
set_hitbox_value(AT_DSTRONG, 9, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 9, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 9, HG_PRIORITY, 10);
set_hitbox_value(AT_DSTRONG, 9, HG_DAMAGE, 6);
set_hitbox_value(AT_DSTRONG, 9, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 9, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 9, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSTRONG, 9, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 9, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSTRONG, 9, HG_HITBOX_GROUP, 8);
