set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

//startup
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 0);

//release
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX, sound_get("sfx_delta_explosion"));
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX_FRAME, 1);
//active
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);

//endlag
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 6);

//hit 1
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -56);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -4);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 46);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 46);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 75);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 1, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));
set_hitbox_value(AT_BAIR, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, hfx_tiny)
set_hitbox_value(AT_BAIR, 1, HG_MUNO_HITBOX_MISC_ADD, "Polymorphs Toady");

set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -32);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 65);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 75);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 2, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, hfx_tiny)
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));
set_hitbox_value(AT_BAIR, 2, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_BAIR, 2, HG_MUNO_HITBOX_MISC_ADD, "Polymorphs Toady");

//hit 2
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -72);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -48);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 44);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 44);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 75);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 3, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, hfx_tiny)
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));
set_hitbox_value(AT_BAIR, 3, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_BAIR, 3, HG_MUNO_HITBOX_MISC_ADD, "Polymorphs Toady");

set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, -40);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -48);
set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 46);
set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 58);
set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 75);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 4, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, hfx_tiny)
set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));
set_hitbox_value(AT_BAIR, 4, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_BAIR, 4, HG_MUNO_HITBOX_MISC_ADD, "Polymorphs Toady");

//launcher
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_BAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_X, -38);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_Y, -80);
set_hitbox_value(AT_BAIR, 5, HG_WIDTH, 46);
set_hitbox_value(AT_BAIR, 5, HG_HEIGHT, 46);
set_hitbox_value(AT_BAIR, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_BAIR, 5, HG_ANGLE, 120);
set_hitbox_value(AT_BAIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 5, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_BAIR, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 5, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_BAIR, 5, HG_VISUAL_EFFECT, hfx_small)
set_hitbox_value(AT_BAIR, 5, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_1"));
set_hitbox_value(AT_BAIR, 5, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_BAIR, 5, HG_MUNO_HITBOX_MISC_ADD, "Polymorphs Toady");

set_hitbox_value(AT_BAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 6, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 6, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_BAIR, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_X, -30);
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_Y, -60);
set_hitbox_value(AT_BAIR, 6, HG_WIDTH, 52);
set_hitbox_value(AT_BAIR, 6, HG_HEIGHT, 38);
set_hitbox_value(AT_BAIR, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_BAIR, 6, HG_ANGLE, 120);
set_hitbox_value(AT_BAIR, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 6, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_BAIR, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 6, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_BAIR, 6, HG_VISUAL_EFFECT, hfx_small)
set_hitbox_value(AT_BAIR, 6, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_1"));
set_hitbox_value(AT_BAIR, 6, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_BAIR, 6, HG_MUNO_HITBOX_MISC_ADD, "Polymorphs Toady");