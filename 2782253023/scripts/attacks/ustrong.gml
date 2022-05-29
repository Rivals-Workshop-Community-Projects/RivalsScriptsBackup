set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG, AG_OFF_LEDGE, 0);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_VSPEED, -2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HSPEED, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED, -12);
set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HSPEED, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG, 4, AG_WINDOW_VSPEED, -3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HSPEED, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 12);

set_num_hitboxes(AT_USTRONG,1);

set_hitbox_value(AT_USTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -55);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 110);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 85);
set_hitbox_value(AT_USTRONG, 1, HG_DRIFT_MULTIPLIER, -0.9);
set_hitbox_value(AT_USTRONG, 1, HG_SDI_MULTIPLIER, -0.9);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));