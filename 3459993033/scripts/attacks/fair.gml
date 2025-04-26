set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

//startup
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, sound_get("sfx_delta_swipe4"));
//release
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX_FRAME, 1);

//set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_heavy1"));

//active
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);

//endlag
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 6);

set_num_hitboxes(AT_FAIR, 3);

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 12);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 41);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 43);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 45);
//set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FAIR, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, hfx_small);

set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, -5);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -80);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 18);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 70);
//set_hitbox_value(AT_FAIR2 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FAIR, 2, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, hfx_small);

set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 34);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 64);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 93);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 11);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 40);
//set_hitbox_value(AT_FAIR3 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, hfx_big);
set_hitbox_value(AT_FAIR, 3, HG_HIT_PARTICLE_NUM, 1);

