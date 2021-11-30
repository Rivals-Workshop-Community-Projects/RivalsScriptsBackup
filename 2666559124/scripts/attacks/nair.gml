set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);

set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_NAIR, 1);

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 64);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 42);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 38);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
