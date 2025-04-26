set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

// startup
set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("sfx_plague_spin_2"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 6);

// multihit active
set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, sound_get("sfx_plague_bomb_med_explode"));
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, 11);

// spike active
set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 10);

// endlag
set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_DAIR, 5);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_MUNO_HITBOX_NAME, "Multihit 1");
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 70);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 6)
set_hitbox_value(AT_DAIR, 1, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITSTUN_MULTIPLIER, 0.5);

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 2, HG_MUNO_HITBOX_NAME, "Multihit 2");
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 50);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 70);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 2, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 70);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 6)
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DAIR, 2, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, 0.5);

set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_MUNO_HITBOX_NAME, "Spike Hit");
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -3);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 70);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 300);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DAIR, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DAIR, 3, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, explode_medium_fx);

set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_MUNO_HITBOX_NAME, "Multihit 3");
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 50);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 70);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 70);
set_hitbox_value(AT_DAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 70);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 6)
set_hitbox_value(AT_DAIR, 4, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 4, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DAIR, 4, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 3);

set_hitbox_value(AT_DAIR, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 5, HG_MUNO_HITBOX_NAME, "Multihit 4");
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, 50);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DAIR, 5, HG_WIDTH, 70);
set_hitbox_value(AT_DAIR, 5, HG_HEIGHT, 70);
set_hitbox_value(AT_DAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 5, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_DAIR, 5, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_DAIR, 5, HG_ANGLE, 70);
set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 6)
set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DAIR, 5, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DAIR, 5, HG_HITSTUN_MULTIPLIER, 0.5);