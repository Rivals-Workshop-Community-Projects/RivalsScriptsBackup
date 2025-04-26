set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 7);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_MUNO_ATTACK_NAME, "FStrong: Big Boom");

// startup + charge window
set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_syl_ustrong_part1"));

// release
set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 5);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 1);

// active 1
set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);

// inbetween actives 1 and 2
set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_SFX, sound_get("sfx_plague_bomb_explode"));
set_window_value(AT_FSTRONG, 4, AG_WINDOW_SFX_FRAME, 6);

// active 2
set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HSPEED, -12);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1.7);

// actual endlag
set_window_value(AT_FSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 10);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.6);

// actual endlag
set_window_value(AT_FSTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 10);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.6);

set_num_hitboxes(AT_FSTRONG, 3);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_MUNO_HITBOX_NAME, "First Hit");
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 34);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 110);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_MUNO_HITBOX_NAME, "First Hit");
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 50);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 64);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 56);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 120);
set_hitbox_value(AT_FSTRONG, 2, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_MUNO_HITBOX_NAME, "Explosion, Second Hit");
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 5);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 42);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 94);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, explode_large_fx);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_PARTICLE_NUM, 1);