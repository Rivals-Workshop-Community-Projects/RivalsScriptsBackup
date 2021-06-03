set_attack_value(AT_EXTRA_2, AG_CATEGORY, 1);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("nodispenser_dair"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_2, AG_LANDING_LAG, 8);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("nodispenser_dair_hurt"));

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_EXTRA_2,2);

set_hitbox_value(AT_EXTRA_2, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, -4);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, 22);
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 60);
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 42);
set_hitbox_value(AT_EXTRA_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, -90);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITPAUSE_SCALING, .55);
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_LOCKOUT, 6);

set_hitbox_value(AT_EXTRA_2, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_X, 24);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_Y, 2);
set_hitbox_value(AT_EXTRA_2, 2, HG_WIDTH, 30);
set_hitbox_value(AT_EXTRA_2, 2, HG_HEIGHT, 46);
set_hitbox_value(AT_EXTRA_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_2, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_2, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_EXTRA_2, 2, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_2, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_2, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_EXTRA_2, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITPAUSE_SCALING, .55);
set_hitbox_value(AT_EXTRA_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_EXTRA_2, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));