set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 5);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 19);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, has_rune("A"));
set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.02);

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("sfx_anthem_swipe2"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 32);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_USTRONG, 9);

//Clean (Animation Frame 1)

//Close
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 58);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 34);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 95);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("sfx_anthem_hit1"));

//Mid
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 91);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -29);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 62);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 54);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 95);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, fx_slashheavy);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, sound_get("sfx_anthem_hit2"));

//Far
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 109);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -72);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 76);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 95);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, sound_get("sfx_anthem_hit1"));

//Clean (Animation Frame 2)

//Close
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -87);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 232);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 85);
set_hitbox_value(AT_USTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 95);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, sound_get("sfx_anthem_hit1"));

//Mid
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, -2);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -105);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 252);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 134);
set_hitbox_value(AT_USTRONG, 5, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 12);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 95);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, fx_slashheavy);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, sound_get("sfx_anthem_hit3"));

//Far
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_X, 4);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_Y, -115);
set_hitbox_value(AT_USTRONG, 6, HG_WIDTH, 254);
set_hitbox_value(AT_USTRONG, 6, HG_HEIGHT, 144);
set_hitbox_value(AT_USTRONG, 6, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 6, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG, 6, HG_ANGLE, 95);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 6, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG, 6, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_USTRONG, 6, HG_HIT_SFX, sound_get("sfx_anthem_hit2"));

//Late

//Close
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 7, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 7, HG_LIFETIME, 6);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_X, -41);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_Y, -37);
set_hitbox_value(AT_USTRONG, 7, HG_WIDTH, 64);
set_hitbox_value(AT_USTRONG, 7, HG_HEIGHT, 58);
set_hitbox_value(AT_USTRONG, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 7, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, 7, HG_ANGLE, 105);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USTRONG, 7, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 7, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_USTRONG, 7, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_USTRONG, 7, HG_HIT_SFX, sound_get("sfx_anthem_hit1"));

//Mid
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 8, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 8, HG_LIFETIME, 6);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_X, -71);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USTRONG, 8, HG_WIDTH, 64);
set_hitbox_value(AT_USTRONG, 8, HG_HEIGHT, 68);
set_hitbox_value(AT_USTRONG, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 8, HG_DAMAGE, 11);
set_hitbox_value(AT_USTRONG, 8, HG_ANGLE, 105);
set_hitbox_value(AT_USTRONG, 8, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 8, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 8, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 8, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 8, HG_VISUAL_EFFECT, fx_slashheavy);
set_hitbox_value(AT_USTRONG, 8, HG_HIT_SFX, sound_get("sfx_anthem_hit2"));

//Far
set_hitbox_value(AT_USTRONG, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 9, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 9, HG_LIFETIME, 6);
set_hitbox_value(AT_USTRONG, 9, HG_HITBOX_X, -107);
set_hitbox_value(AT_USTRONG, 9, HG_HITBOX_Y, -47);
set_hitbox_value(AT_USTRONG, 9, HG_WIDTH, 82);
set_hitbox_value(AT_USTRONG, 9, HG_HEIGHT, 64);
set_hitbox_value(AT_USTRONG, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 9, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG, 9, HG_ANGLE, 105);
set_hitbox_value(AT_USTRONG, 9, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USTRONG, 9, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 9, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USTRONG, 9, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 9, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_USTRONG, 9, HG_HIT_SFX, sound_get("sfx_anthem_hit1"));

