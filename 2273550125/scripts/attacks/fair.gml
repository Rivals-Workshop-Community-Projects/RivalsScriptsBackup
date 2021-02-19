set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 9);

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med1"));
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 0);

set_window_value(AT_FAIR, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med1"));
set_window_value(AT_FAIR, 4, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FAIR, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 0);

set_window_value(AT_FAIR, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_FAIR, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med2"));
set_window_value(AT_FAIR, 6, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FAIR, 7, AG_WINDOW_TYPE, 0);
set_window_value(AT_FAIR, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAMES, 0);

set_num_hitboxes(AT_FAIR, 3);

set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 5);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.01);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 0);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 70);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 5);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.01);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_FAIR, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FAIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 0);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 6);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 70);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 90);
set_hitbox_value(AT_FAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 35);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_light2"));
set_hitbox_value(AT_FAIR, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, -1);