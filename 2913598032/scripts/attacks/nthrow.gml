set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("jab2"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_NTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_NTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NTHROW, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NTHROW, 1);

set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 32);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NTHROW, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NTHROW, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE_FLIPPER, 6);