set_attack_value(AT_DSTRONG_2, AG_SPRITE, sprite_get("dstrong2"));
set_attack_value(AT_DSTRONG_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

//Windup
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 2);

//Pre-Slam
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

//Slam
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);

//End
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 12);

set_num_hitboxes(AT_DSTRONG_2, 1);

// Splash Hitbox
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG_2, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_X, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HEIGHT, 26);
set_hitbox_value(AT_DSTRONG_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG_2, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE, 75);
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG_2, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITSTUN_MULTIPLIER, 1.0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_GROUP, 1);