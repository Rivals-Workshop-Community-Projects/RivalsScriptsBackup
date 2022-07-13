set_attack_value(AT_DTHROW, AG_CATEGORY, 1);
set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("dair_hilt"));
set_attack_value(AT_DTHROW, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DTHROW, AG_LANDING_LAG, 8);
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("dair_hilt_hurt"));

set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 3);

set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DTHROW, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DTHROW, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTHROW, 1);

//launcher
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_Y, 5);
set_hitbox_value(AT_DTHROW, 1, HG_WIDTH, 30);
set_hitbox_value(AT_DTHROW, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DTHROW, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE, -90);
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DTHROW, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTHROW, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DTHROW, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DTHROW, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_GROUP, 3);