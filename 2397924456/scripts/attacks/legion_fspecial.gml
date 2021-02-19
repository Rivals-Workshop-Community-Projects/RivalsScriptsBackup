set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("legion_fspecial"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 8);
set_attack_value(AT_FSPECIAL_AIR, AG_MUNO_ATTACK_NAME, "FSpecial (Desynced) (Legion)");

// startup
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_may_arc_cointoss"));

// active
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

// endlag
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);

// spin 1
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);

// spin 2
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 9);

// spin 3
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAME_START, 10);

// finisher
set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_ANIM_FRAME_START, 11);

// endlag
set_window_value(AT_FSPECIAL_AIR, 8, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL_AIR, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_AIR, 8, AG_WINDOW_ANIM_FRAME_START, 12);



set_num_hitboxes(AT_FSPECIAL_AIR, 5);

// detect
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 96);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_MUNO_HITBOX_NAME, "Knee");

// spin 1
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_X, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WIDTH, 128);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HEIGHT, 96);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_VISUAL_EFFECT, vfx_hit_small);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_MUNO_HITBOX_NAME, "Spin 1");

// spin 2
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_X, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_MUNO_HITBOX_NAME, "Spin 2");

// spin 3
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_X, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_MUNO_HITBOX_NAME, "Spin 3");

// finisher
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_WINDOW, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_X, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_WIDTH, 136);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HEIGHT, 112);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_ANGLE, 55);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_VISUAL_EFFECT, vfx_hit_big);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_MUNO_HITBOX_NAME, "Spin Final");