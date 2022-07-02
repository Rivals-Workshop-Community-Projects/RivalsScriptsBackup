set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("ftiltcrit"));
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_attack_value(AT_FTHROW, AG_CATEGORY, 0);
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 4);

set_window_value(AT_FTHROW, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_WHIFFLAG, 0);
set_window_value(AT_FTHROW, 1, AG_WINDOW_INVINCIBILITY, 0);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HITPAUSE_FRAME, 0);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, 0);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FTHROW, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_SFX, sound_get("shovel_swing_crit"));
set_window_value(AT_FTHROW, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FTHROW, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HITPAUSE_FRAME, 0);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_FTHROW, 3, AG_WINDOW_SFX, 0);
set_window_value(AT_FTHROW, 3, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FTHROW, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTHROW, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTHROW, 4, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_FTHROW, 4, AG_WINDOW_SFX, 0);
set_window_value(AT_FTHROW, 4, AG_WINDOW_SFX_FRAME, 0);



set_num_hitboxes(AT_FTHROW, 1);

set_hitbox_value(AT_FTHROW, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 47);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -70);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 48);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 77);
set_hitbox_value(AT_FTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FTHROW, 1, HG_EFFECT, 0);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, sound_get ("crit_hit"));
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, crit);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_FTHROW, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_THROWS_ROCK, 1);