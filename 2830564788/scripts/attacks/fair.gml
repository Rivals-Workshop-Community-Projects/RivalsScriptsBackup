set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

//Window 1
set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 0);

//Window 2
set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

//Window 3
set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_FAIR,1);

// Hitbox 1
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 36);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 29);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 7); // 1
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 40); // 2
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 5); // 3
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 1); // 4
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 1); // 5
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 9); // 6
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .8); // 7
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 0); // 8
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));