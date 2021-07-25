set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 5);

set_window_value(AT_FAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 5);

set_window_value(AT_FAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_FAIR,4);

set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 45);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 39);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 24);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, -80);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("airRally"));

set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 27);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -55);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 44);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 55);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, sound_get("airRallyWeak"));

set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 4);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -80);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 52);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 25);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, sound_get("airRallyWeak"));

set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 13);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 49);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 54);
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 4, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 4, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, sound_get("airRallyWeak"));