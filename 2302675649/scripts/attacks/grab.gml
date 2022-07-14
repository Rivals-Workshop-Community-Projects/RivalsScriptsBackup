set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("grab"));
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 5);
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("grab_hurt"));

set_window_value(AT_UTHROW, 1, AG_WINDOW_TYPE, 1); // grab
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);

set_window_value(AT_UTHROW, 2, AG_WINDOW_TYPE, 1); // grabbed?
set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTHROW, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);

set_window_value(AT_UTHROW, 3, AG_WINDOW_TYPE, 1); // swing windup
set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_UTHROW, 4, AG_WINDOW_TYPE, 1); // swing
set_window_value(AT_UTHROW, 4, AG_WINDOW_LENGTH, 1);
set_window_value(AT_UTHROW, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_UTHROW, 5, AG_WINDOW_TYPE, 1); // end swing
set_window_value(AT_UTHROW, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTHROW, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_UTHROW, 6, AG_WINDOW_TYPE, 1); // whiff grab
set_window_value(AT_UTHROW, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UTHROW, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTHROW, 6, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_UTHROW, 2);

set_hitbox_value(AT_UTHROW, 1, HG_PARENT_HITBOX, 0); // grab
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_X, 38);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 64);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_UTHROW, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 0);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_UTHROW, 1, HG_EXTRA_HITPAUSE, 25);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_UTHROW, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 2, HG_WINDOW, 4);
set_hitbox_value(AT_UTHROW, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_Y, -70);
set_hitbox_value(AT_UTHROW, 2, HG_WIDTH, 50);
set_hitbox_value(AT_UTHROW, 2, HG_HEIGHT, 140);
set_hitbox_value(AT_UTHROW, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UTHROW, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_UTHROW, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTHROW, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_UTHROW, 2, HG_KNOCKBACK_SCALING, 0.15);
set_hitbox_value(AT_UTHROW, 2, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_UTHROW, 2, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(AT_UTHROW, 2, HG_HITPAUSE_SCALING, 0.15);
set_hitbox_value(AT_UTHROW, 2, HG_DRIFT_MULTIPLIER, 0.8);
set_hitbox_value(AT_UTHROW, 2, HG_EXTRA_CAMERA_SHAKE, 0);
set_hitbox_value(AT_UTHROW, 2, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_UTHROW, 2, HG_HITSTUN_MULTIPLIER, .8);