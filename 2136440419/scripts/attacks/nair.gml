set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 5);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

// Startup
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 6);

// Attack
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 40);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

// Endlag
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 16);

set_num_hitboxes(AT_NAIR, 2);

// Aerial Hit (Early)
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 11);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 66);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 66);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 1, HG_HIT_PARTICLE_NUM, 1);

// Aerial Hit (Sour)
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 66);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 66);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NAIR, 2, HG_HIT_PARTICLE_NUM, 1);

// Landing Hitbox
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 120);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 361);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 3, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, 6);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, sound_get("sfx_stinky_steam1"));
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 1);