set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 2);
set_attack_value(AT_JAB, AG_CATEGORY, 2);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

// Startup

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

// Hit & Lag

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 3);

// Hitboxes

set_num_hitboxes(AT_JAB, 10);

// Swing

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 70);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4.5);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
