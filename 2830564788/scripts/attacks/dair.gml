set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

// Window 1
set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 0);

// Window 2
set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

// Window 3
set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_DAIR,1);

// Hitbox 1
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -8);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 30);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 4); // 1
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 80); // 2
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 4); // 3
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .6); // 4
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 4); // 5 (Skip 3)
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 5); // 6
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0); // 7
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 4); // 8
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));