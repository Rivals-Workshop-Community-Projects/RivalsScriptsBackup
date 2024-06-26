set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("sleep"));
set_attack_value(AT_EXTRA_2, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_EXTRA_2, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("sleep_hurtbox"));

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, -6);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 6);

set_num_hitboxes(AT_EXTRA_2, 1);

set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 69);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));