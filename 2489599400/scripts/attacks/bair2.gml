set_attack_value(AT_UTHROW, AG_CATEGORY, 1);
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("nodispenser_bair"));
set_attack_value(AT_UTHROW, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("nodispenser_bair_hurt"));
set_attack_value(AT_UTHROW, AG_LANDING_LAG, 7);
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 3);

set_window_value(AT_UTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_UTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 17);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTHROW, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTHROW,1);

set_hitbox_value(AT_UTHROW, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_X, -50);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 68);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 38);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 45);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_UTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTHROW, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));