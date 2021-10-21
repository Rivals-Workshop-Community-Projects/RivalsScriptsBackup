set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 0);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 5);

//startup
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 22);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 4);

//startup2
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);

//active
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 10);

//recovery
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_HAS_WHIFFLAG, 0);

set_num_hitboxes(AT_DSPECIAL_2, 1);

//throw hitbox
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, get_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_LENGTH));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, -30);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.05);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DRIFT_MULTIPLIER, 0.7);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_SDI_MULTIPLIER, 0.7);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_obstacle_hit"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, bouncefx);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, -10);