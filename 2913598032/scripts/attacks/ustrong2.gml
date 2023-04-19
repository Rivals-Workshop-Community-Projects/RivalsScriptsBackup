set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get("ustrong2"));
set_attack_value(AT_USTRONG_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG_2, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

// Starting
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 2);

// Pre-Swipe
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX_FRAME, 2);

// Swipe/Ready
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);

// BANG
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 4);

// Ending w/ Gun
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_HAS_WHIFFLAG, 6);



set_num_hitboxes(AT_USTRONG_2, 2);

set_hitbox_value(AT_USTRONG_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_X, 22);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_Y, -49);
set_hitbox_value(AT_USTRONG_2, 1, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE, 75);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USTRONG_2, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USTRONG_2, 1, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_GROUP, 1);