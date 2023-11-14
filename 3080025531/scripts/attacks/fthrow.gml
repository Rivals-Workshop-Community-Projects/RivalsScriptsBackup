set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 2);
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

// Grab Transition
set_window_value(AT_FTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 12);

// Falling
set_window_value(AT_FTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 180);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 14);

// Bing bang boom
set_window_value(AT_FTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 15);

// Recoiling
set_window_value(AT_FTHROW, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 16);

set_num_hitboxes(AT_FTHROW, 3);

set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 9);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 55);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 75);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));