set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("ftilt_down"));
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("ftilt_down_hurt"));

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_EXTRA_3, 2);

set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -13);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 57);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 361);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 4.5);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 50);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -11);
set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 46);
set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 24);
set_hitbox_value(AT_EXTRA_3, 2, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 361);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 4.5);
set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));