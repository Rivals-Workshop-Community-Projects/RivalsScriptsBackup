set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS,  6);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_UTILT, 4, AG_WINDOW_SFX_FRAME, 1);


set_window_value(AT_UTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 8);


set_window_value(AT_UTILT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 6, AG_WINDOW_LENGTH, 13);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_UTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 5);

//HITBOX 1
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 39);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITSTUN_MULTIPLIER, 1.4);
set_hitbox_value(AT_UTILT, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 70);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

//HITBOX 2
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 27);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -93);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 26);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 31);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, -10);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTILT, 2, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITSTUN_MULTIPLIER, 1.4);
set_hitbox_value(AT_UTILT, 2, HG_EXTRA_HITPAUSE, 3);

//HITBOX 3
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 18);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -88);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 36);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 5);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 75);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

//HITBOX 4
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 4, HG_SHAPE, 2);
//set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 44);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 44);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 76);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 88);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 5);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 75);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 5, HG_SHAPE, 2);
//set_hitbox_value(AT_UTILT5 4, HG_HITBOX_X, 44);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, 80);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -13);
set_hitbox_value(AT_UTILT, 5, HG_WIDTH, 40);
set_hitbox_value(AT_UTILT, 5, HG_HEIGHT, 30);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 5);
set_hitbox_value(AT_UTILT, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 5, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_UTILT, 5, HG_ANGLE, 75);
set_hitbox_value(AT_UTILT, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
