set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

//Startup
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);

//Release
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("ustrong_sfx"));

//Active (Multihits)
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, sound_get("ustrong_hit"));
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 12);

//Finisher
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 9);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -94);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 96);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 104);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .0);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, hfx_dark);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 1, HG_TECHABLE, 1);

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -106);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 86);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 86);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .0);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, hfx_dark);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 2, HG_TECHABLE, 1);

set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -106);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 8);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .0);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, hfx_dark);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 3, HG_TECHABLE, 3);

set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -106);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_USTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 8);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, .0);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, hfx_dark);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 4, HG_TECHABLE, 3);

set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -106);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 40);
set_hitbox_value(AT_USTRONG, 5, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 8);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, .0);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, hfx_dark);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 5, HG_TECHABLE, 3);

set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_Y, -116);
set_hitbox_value(AT_USTRONG, 6, HG_WIDTH, 90);
set_hitbox_value(AT_USTRONG, 6, HG_HEIGHT, 90);
set_hitbox_value(AT_USTRONG, 6, HG_PRIORITY, 8);
set_hitbox_value(AT_USTRONG, 6, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 6, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 6, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_USTRONG, 6, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT, hfx_dark);
set_hitbox_value(AT_USTRONG, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
