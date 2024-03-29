set_attack_value(AT_EXTRA_3, AG_CATEGORY, 1);
set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("fair_hilt"));
set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_3, AG_LANDING_LAG, 6);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_light1"));
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_EXTRA_3, 1);

set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 65);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 60);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, vfx_medium_sword);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, 1);