set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);

set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 6);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, sound_get("sfx_anthem_swipe1"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_GOTO, 8);

set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_SFX, sound_get("sfx_anthem_hitwall"));
set_window_value(AT_FAIR, 5, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FAIR, 6, AG_WINDOW_TYPE, 9);
set_window_value(AT_FAIR, 6, AG_WINDOW_LENGTH, 45);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAME_START, 11);

set_num_hitboxes(AT_FAIR, 8);

//Body (Clean)
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 54);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//Close (Clean)
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 48);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 48);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, sound_get("sfx_anthem_hit1"));

//Mid (Clean)
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 80);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 48);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_FAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, fx_slashheavy);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, sound_get("sfx_anthem_hit2"));

//Far (Clean)
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 104);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 48);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 32);
set_hitbox_value(AT_FAIR, 4, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 4, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FAIR, 4, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, sound_get("sfx_anthem_hit1"));

//Body (Late)
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_X, 25);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FAIR, 5, HG_WIDTH, 54);
set_hitbox_value(AT_FAIR, 5, HG_HEIGHT, 36);
set_hitbox_value(AT_FAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 5, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 5, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FAIR, 5, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//Close (Late)
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 6, HG_LIFETIME, 5);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_X, 48);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FAIR, 6, HG_WIDTH, 48);
set_hitbox_value(AT_FAIR, 6, HG_HEIGHT, 32);
set_hitbox_value(AT_FAIR, 6, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 6, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 6, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 6, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 6, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FAIR, 6, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 6, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_FAIR, 6, HG_HIT_SFX, sound_get("sfx_anthem_hit1"));

//Mid (Late)
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 7, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 7, HG_LIFETIME, 5);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_X, 80);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FAIR, 7, HG_WIDTH, 48);
set_hitbox_value(AT_FAIR, 7, HG_HEIGHT, 32);
set_hitbox_value(AT_FAIR, 7, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 7, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 7, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 7, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 7, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 7, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FAIR, 7, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 7, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_FAIR, 7, HG_HIT_SFX, sound_get("sfx_anthem_hit2"));

//Far (Late)
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 8, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 8, HG_LIFETIME, 5);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_X, 104);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FAIR, 8, HG_WIDTH, 48);
set_hitbox_value(AT_FAIR, 8, HG_HEIGHT, 32);
set_hitbox_value(AT_FAIR, 8, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 8, HG_DAMAGE, 5);
set_hitbox_value(AT_FAIR, 8, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 8, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 8, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 8, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FAIR, 8, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 8, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_FAIR, 8, HG_HIT_SFX, sound_get("sfx_anthem_hit1"));
