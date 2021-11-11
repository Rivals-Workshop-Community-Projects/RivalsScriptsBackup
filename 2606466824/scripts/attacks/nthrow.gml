set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("bthrow"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("bthrow_hurt"));
set_attack_value(AT_NTHROW, AG_MUNO_ATTACK_NAME, "FSpec | BThrow");

set_window_value(AT_NTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_NTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_NTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(AT_NTHROW, 2);

set_hitbox_value(AT_NTHROW, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 1);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 20);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NTHROW, 1, HG_HITSTUN_MULTIPLIER, 2.5);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NTHROW, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NTHROW, 1, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_EXTRA_CAMERA_SHAKE, -1);

set_hitbox_value(AT_NTHROW, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NTHROW, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_X, -50);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NTHROW, 2, HG_WIDTH, 60);
set_hitbox_value(AT_NTHROW, 2, HG_HEIGHT, 55);
set_hitbox_value(AT_NTHROW, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NTHROW, 2, HG_DAMAGE, 15);
set_hitbox_value(AT_NTHROW, 2, HG_ANGLE, 140);
set_hitbox_value(AT_NTHROW, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NTHROW, 2, HG_KNOCKBACK_SCALING, .95);
set_hitbox_value(AT_NTHROW, 2, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_NTHROW, 2, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_NTHROW, 2, HG_HIT_SFX, sound_get("punch_heavy"));
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NTHROW, 2, HG_REVENGE_KB_MULTIPLIER, 1.2);
set_hitbox_value(AT_NTHROW, 2, HG_MUNO_HITBOX_MISC_ADD, "Against airborne foes: KB 8+.8");
set_hitbox_value(AT_NTHROW, 2, HG_EXTRA_CAMERA_SHAKE, 1);