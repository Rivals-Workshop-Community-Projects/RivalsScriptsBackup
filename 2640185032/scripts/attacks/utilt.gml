set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, sound_get("swipe_Er02"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.15);
//spin
set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX_FRAME, 2);
//final
set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 7);

//pickup
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 15);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -57);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 47);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 95);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 95);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, sound_get("sfx_knifehit_m"));
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_UTILT, 1, HG_DRIFT_MULTIPLIER, 0.1);

//upper pickup, higher priority
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 7, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_X, 6);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_Y, -91);
set_hitbox_value(AT_UTILT, 7, HG_WIDTH, 48);
set_hitbox_value(AT_UTILT, 7, HG_HEIGHT, 35);
set_hitbox_value(AT_UTILT, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 7, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 7, HG_ANGLE, 230);
set_hitbox_value(AT_UTILT, 7, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_UTILT, 7, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UTILT, 7, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 7, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_UTILT, 7, HG_HIT_SFX, sound_get("sfx_knifehit_m"));
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 7, HG_TECHABLE, 3);

//spins
set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, -6);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -85);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 47);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 58);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, sound_get("sfx_knifehit_s"));
set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTILT, 2, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 2, HG_TECHABLE, 3);

set_hitbox_value(AT_UTILT, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, -6);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -85);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_UTILT, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, -6);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -85);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_UTILT, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, -6);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -85);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_GROUP, -1);

//finisher
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_X, -9);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_Y, -83);
set_hitbox_value(AT_UTILT, 6, HG_WIDTH, 50);
set_hitbox_value(AT_UTILT, 6, HG_HEIGHT, 73);
set_hitbox_value(AT_UTILT, 6, HG_PRIORITY, 4);
set_hitbox_value(AT_UTILT, 6, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 6, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 6, HG_KNOCKBACK_SCALING, 0.70);
set_hitbox_value(AT_UTILT, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 6, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_UTILT, 6, HG_HIT_SFX, sound_get("sfx_knifehit_m"));
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 6, HG_DRIFT_MULTIPLIER, 1);