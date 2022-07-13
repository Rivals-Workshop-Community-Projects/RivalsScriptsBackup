set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("dtilt_hilt"));
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 3);

set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTHROW, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTHROW, 1);

set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_UTHROW, 1, HG_SHAPE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 50);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTHROW, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_GROUP, 1);